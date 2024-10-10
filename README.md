# CrowdFunding Smart Contract

This repository contains the Solidity smart contract for a decentralized CrowdFunding platform deployed on Scrollscan.

## Contract Address

The CrowdFunding contract is deployed at the following address on Scrollscan:

```
0xa4B7beFc5cb37DA37ED098b6619793A748D64Cdb
```

## Overview

CrowdFunding is a smart contract that enables:

1. Creation of fundraising campaigns
2. Contribution to campaigns
3. Creation and voting on funding requests
4. Refund mechanism if the campaign goal is not met

## Key Features

- Campaign creation with customizable target and deadline
- Contribution tracking for each participant
- Request creation and voting system
- Automatic refund if the campaign goal is not reached
- Secure fund distribution upon approved requests

## Main Functions

1. `contribution()`: Contribute to the campaign
2. `createRequest()`: Create a new funding request (manager only)
3. `voteRequest()`: Vote on a funding request
4. `makePayment()`: Execute payment for an approved request (manager only)
5. `refund()`: Request a refund if the campaign fails

## Requirements

- Solidity version: ^0.8.17

## License

This project is licensed under the MIT License.

## Deployment

This smart contract has been deployed on Scrollscan. You can interact with it using the provided contract address.
