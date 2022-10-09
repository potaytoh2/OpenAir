// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.4.17;

// A function to produce campaigns 
contract CampaignFactory{
    address[] public deployedCampaigns;

    function createCampaign() public {
        address newCampaign = new Campaign(msg.sender);
        deployedCampaigns.push(newCampaign);
    }

    function getDeployedCampaigns() public view returns(address[]){
        return deployedCampaigns;
    }
}

contract Campaign {
    //Used to create instances of requests
    struct Request {
        //Describes why the request is being created
        string description;
        // Amount of money that the organisation will send to the vendor 
        uint value;
        // Address of the recipient to whom the money will be sent 
        address recipient;
        //True if the request has already been processed.
        bool complete;
        //Keeps track of the sum of balance of people who voted yes
        uint approvalCount;
        //Keeps track of the sum of balance of people who voted no
        uint rejectionCount;
        //Keeps track of whether someone has voted
        mapping(address=>bool) approvals;
    }

    //An array of requests
    Request[] public requests;

    // address of the organization that created the request
    address public organisation;
    
    // Mapping key: addressess to bool to represent true for every person who has donated
    // The default bool value in mapping is default, so if we put in a random key that was never included
    // we'll get back false and that tells us the person did not contribute any money.
    mapping(address => bool) public approvers;

    //Keeps track of the value people have contributed
    mapping(address => uint) amount;

    // The number of donors for an organization
    uint public contributerCount;


    //Function modifier
    modifier restricted() {
        require(msg.sender == organisation);
        _;
    }

    //Constructor function
    constructor(address creator) public {
        organisation = creator;
    }

    //Contribute to the organization
    function contribute() public payable{

        //Requires that user donate more than $0
        require(msg.value>0);

        //Add new key of msg.sender's address to the approvers mapping and gives it a value of true.
        approvers[msg.sender] = true;

        contributerCount++;

        //Add new key of msg.sender to the amount mapping and give it a value equivalent to the contribution's value
        amount[msg.sender] += msg.value;
    }

    //createRequest function is a function for organizations to create requests on the platform for donation
    function createRequest(string description, uint value, 
    address recipient) public restricted{

        //Creating a request
        Request memory newRequest = Request({
            description: description,
            value: value,
            recipient: recipient,
            complete:false,
            approvalCount: 0,
            rejectionCount:0
        });
    
        // Add request to array
        requests.push(newRequest);
        
    }

    // A function to approve requests made by organizations
    function approveRequest(uint index) public{
        Request storage request = requests[index];

        //ensure person is an approver
        require(approvers[msg.sender]);

        //ensure the person has not voted on this particular request
        require(!request.approvals[msg.sender]);

        // Register that that person has voted and cannot vote again
        request.approvals[msg.sender] = true;

        // Accumulates the total sum of contributions by donors who approved the request 
        request.approvalCount += amount[msg.sender];
    }

    // A function to reject requests made by organizations
    function rejectRequest(uint index) public{
        Request storage request = requests[index];

        //ensure person is an approver
        require(approvers[msg.sender]);

        //ensure the person has not voted on this particular request
        require(!request.approvals[msg.sender]);

        // Register that that person has voted and cannot vote again
        request.approvals[msg.sender] = true;

        // Accumulates the total sum of contributions by donors who rejected the request
        request.rejectionCount += amount[msg.sender];
    }

    // A function to execute request 
    function finalizeRequest(uint index) public restricted{
        Request storage request = requests[index]; 

        // Require that there are more request approvals than request rejections
        require(request.approvalCount>request.rejectionCount);

        // Require that the request has not yet been completed
        require(!request.complete);

        // Transfer the value of the request to the recipient
        request.recipient.transfer(request.value);

        // Indicate that the request has been completed
        request.complete = true;
    }

    // shows summarized details of the organization
    function getSummary(index) public view returns (
        uint,uint,uint,uint,uint,address
    ){
        Request storage request = requests[index]; 
        return(
            address(this).balance,
            requests.length,
            contributerCount,
            request.approvalCount,
            request.rejectionCount,
            organisation
        );
    }

    function getRequestsCount() public view returns(uint){
        return requests.length;
    }
}