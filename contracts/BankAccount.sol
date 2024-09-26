// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.25;

contract BankAccount { 
    event Deposit(); 
    event WithdrawRequested(); 
    event Withdraw(); 
    event AccountCreated(); 

    struct WithdrawRequest{ address user;}
    struct Account { 
        address[] owners;
    }

    mapping(uint => Account) accounts; 
    mapping(address => uint[]) userAccounts; 

    uint nextAccountId; 
    uint nextWithdrawId; 

    function deposit(uint accountId) external payable {} 
    function createAccount(address[] calldata otherOwners) external {} 

    function requestWithdrawl(uint accoundId, uint amount) external {}
    function approveWithdrawl(uint accoundId, uint withdrawId) external {}
    function withdraw(uint accoundId, uint withdrawId) external {}
    function getBalance(uint accoundId) public view returns (uint) {}
    function getOwners(uint accoundId) public view returns (address[] memory) {}
    function getApprovals(uint accoundId, uint withdrawId) public view returns (uint) {}
    function getAccounts(uint accoundId) public view returns (uint[] memory) {}
}