// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


contract CrowdFunding {

    struct Request {
        string description;
        address payable recipient;
        uint value;
        bool Completed;
        uint noOfVoters;
        mapping (address => bool) voters; // Keeping track of those that has voted.
    }
    mapping (address => uint) public contributors; //keeping tract oh how much each contributor is giving for a particular request
    mapping (uint => Request) public requests;

    address public manager;
    uint public noOfRequests;
    uint public deadline;
    uint public amountRaised;
    uint public minimumContribution;
    uint public target;
    uint public noOfContributors;


    constructor(uint _target, uint _deadline) {
        target = _target;
        deadline = _deadline;
        minimumContribution = 100 wei;
        manager = msg.sender;
    }

    modifier onlyManager () {
        require(msg.sender == manager, 'You are not the manager');
        _;
    }

    function createRequest(string calldata _description, address payable _recipient, uint _value) public onlyManager {
        Request storage newRequest = requests[noOfRequests];
        noOfRequests++;
        newRequest.description = _description;
        newRequest.recipient = _recipient;
        newRequest.value = _value;
        newRequest.Completed = false;
        newRequest.noOfVoters = 0;
    }

    function contribution() public payable {
        require(block.timestamp < deadline, 'Deadline has passed');
        require(msg.value > minimumContribution, 'Minimum contribution is 100 wei');

        // This help to keep the number of contributors static when a previous contributor wants to contribute again
        if(contributors[msg.sender] == 0) {
            noOfContributors++;
        }
        contributors[msg.sender] += msg.value;
        amountRaised += msg.value;
    }

}