# OpenAir
Crypto.com Hackathon 2022: The Next Gen

# Project Name
> This projects mimics a blockchain based fundraising platform for Non-governmental organisations (NGO) which gets rid of centralized cloud-servers and leverages smart contracts. 
> Live demo of our figma prototype [_here_](https://www.figma.com/proto/kRhBk1177PSUI7R7NY8Ur6/Giver-team-library?node-id=465%3A125&scaling=min-zoom&page-id=0%3A1&starting-point-node-id=420%3A5). <!-- If you have the project hosted somewhere, include the link here. -->
## Table of Contents
* [General Info](#general-information)
* [Technologies Used](#technologies-used)
* [Features](#features)
* [Project Status](#project-status)
* [Acknowledgements](#acknowledgements)
* [Limitations](#limitations)
<!-- * [License](#license) -->


## General Information
In a traditional fundraising platform for NGOs, there are three roles: Organisations or project initiator who proposes the idea to be funded, donors who support the idea and contribute monetary value to it, and manufacturers/service providers who are paid by the Organisations to bring the idea to life.

This arrangement has made fundraising platforms notorious for their untrustworthiness and unfairness. Manufacturers and Organisations may collude, Campaign managers may run away with the money or Campaign managers may encounter financial problems leaving contributors unable to get back their deposits. In July 2021 Singapore, a woman was jailed for embezzling nearly $1.5 million from charity and lost most of it in a love scam.

To address this lack of transparency, a feasible solution is to build a fundraising platform based on blockchain. Blockchain is a shared, distributed ledger that facilitates the process of recording transactions and tracking assets in a business network.

In addition to creating transparency within the distribution of cashflow, we have also created smart contracts on the blockchain, to incorporate a voting system for donors, enabling the involvement of governance to increase inclusivity and the freedom in choosing where their money is distributed to. When organisations request to spend on something, they are to fill in the details and purpose of this transaction, this request is then sent to all donors for voting. If the request passes by a simple majority (>50%), the transaction proceeds.

This solution solves the lack of transparency within NGOs and involves donors in decision making

Watch this [_video_](https://youtu.be/IrxJ0nb2WvA) for further explanation on the smart contract.

Watch this [_video_] (https://www.loom.com/share/cebd23186ccf4d90b403e8c9423cad56) to view how our figma prototype works.

Interfact with our prototype [_here_] ()

## Technologies Used
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
