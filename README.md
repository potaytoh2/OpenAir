# OpenAir
Crypto.com Hackathon 2022: The Next Gen

# Project Name
> This projects mimics a blockchain based crowdsourcing platform which gets rid of centralized cloud-servers and leverages smart contracts to realize task recommendation and reward distribution. 
> Live demo [_here_](https://www.example.com). <!-- If you have the project hosted somewhere, include the link here. -->
## Table of Contents
* [General Info](#general-information)
* [Technologies Used](#technologies-used)
* [Features](#features)
* [Project Status](#project-status)
* [Acknowledgements](#acknowledgements)
* [Limitations](#limitations)
<!-- * [License](#license) -->


## General Information
In a traditional fundraising platform for NGOs, there are three roles: Campaign manager or project initiator who proposes the idea to be funded, crowdfunders who support the idea and contribute monetary value to it, and manufacturers/service providers who are paid by the campaign manager to bring the idea to life. 

This arrangement has made crowdfunding platforms notorious for their untrustworthiness and unfairness. Manufacturers and Campaign managers may collude, Campaign managers may run away with the money or Campaign managers may encounter financial problems leaving contributors unable to get back their deposits. In 2018, ofo sharing bicycles encountered financial problems and their users could not get their deposits back. 

To address this lack of accountability, a feasible solution is to build a crowdsourcing platform based on blockchain. Blockchain is a shared, distributed ledger that facilitates the process of recording transactions and tracking assets in a business network.

By utilizing smart contracts on the blockchain, I incorporated a voting system for crowdfunders, enabling the involvement of governance and protecting their interests. When Campaign managers request to spend on something, they are to fill in the details and purpose of this transaction, this request is then sent to all crowdfunders for their approval. If the request passes by a simple majority (>50%), the transaction goes through.

This solution solves the lack of accountability granted by traditional crowdfunding platforms and involves crowdfunders in the development process.

Watch this [_video_](https://youtu.be/IrxJ0nb2WvA) for further explanation on the smart contract.

Watch this [_video_] (https://www.loom.com/share/cebd23186ccf4d90b403e8c9423cad56) to view our figma prototype

Interfact with our prototype [_here_] ()

## Technologies Used
- Solidity - version 0.4.1
- solc - version 0.4.26


## Features
- NGOs or Groups can create Campaigns and requests on an NGO fundraising platform to fund raise for their cause.
- Donors are able to contribute and vote for requests that they agree with or vote against requests they disagree with.
- Transaction requests are transparent and available for all to see and verify which hedge against the risks of embezzlement and bad actors.


## Project Status
Project is:  _complete_.

## limitations
Due to time constraints, we could not achieve the following in our code:
- Our smart contract can only account for one vendor in a request. In the real world, a request could include multiple recipients/vendors. This reality is reflected in our UI/UX design & Pitch.
- Our smart contract does not account for the expiry of a voting period. Every request has an expiry date after which votes will not longer be accepted. After this voting period, organisations will be able to finalize requests. 
- We were not able to create a front-end interface, but this is done through our figma prototype instead.   


## Acknowledgements
Give credit here.
- This project was partly inspired from [Ethereum and Solidity: The Complete Developer's guide](https://e-prep.udemy.com/course/ethereum-and-solidity-the-complete-developers-guide/).

<!-- Optional -->
<!-- ## License -->
<!-- This project is open source and available under the [... License](). -->

<!-- You don't have to include all sections - just the one's relevant to your project -->
