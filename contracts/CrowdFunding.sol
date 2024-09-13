// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


contract CrowdFunding {

    struct Request {
        string description;
        address payable recipient;
        uint value;
        bool isCompleted;
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

}