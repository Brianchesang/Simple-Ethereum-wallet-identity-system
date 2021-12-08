// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0;

contract accountMapping{
    struct identity{
        string name;
        address payable Address;
    }

    identity [] public entity;

    mapping(string =>address) nameToAddress;

    function createNameAdressPair(string memory _name , address payable _Address) public{
        entity.push(identity({name : _name , Address : _Address}));
        

    }

    function addressFromName(address payable) public view returns(string name){

    } 
}