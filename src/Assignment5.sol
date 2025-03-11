// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Assignment5 {
    uint public counter=0;
    bool public isActive;

    mapping (address=>string)public userNames;

    struct user {
        uint id;
        string name;
        address userAddress;
    }

    user[] public users;
    constructor() {
        isActive = true;
    }

    function incrementCounter() external returns(uint) {
        for( uint i=0;i<=5;i++){
            counter=i;
        }
        return counter;
    }
    function toggleActive() public  returns(bool) {
        if (isActive = true) {
            isActive = false; 
        }
        else{
            isActive = true; 
        }

        return isActive;
    }

    function addUser(uint id ,string memory nname ,address userAddress) public returns(uint,address) { 
        users.push(user(id,nname,userAddress) );

        
        return(id,userAddress);
    }

    function getUserCount() public view returns ( uint) {
        return users.length;
    }
}
