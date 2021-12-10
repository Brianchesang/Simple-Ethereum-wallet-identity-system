// SPDX-License-Identifier: MIT

pragma solidity >0.6.0 ;
pragma abicoder v2;


contract accountMapping{
    struct identity{
        string name;
        address payable Address;
    }

    identity [] public entity ;

    mapping(string =>address) nameToAddress;

    function setName(string memory _name , address payable _Address) public{
        nameToAddress[_name]=_Address;
    } 

    function createNameAdressPair(string memory _name , address payable _Address) public{
        entity.push(identity({name : _name , Address : _Address}));
        nameToAddress[_name] = _Address;
        

    }
    
    function allPairs() public view returns(identity[] memory) {
        return entity;

    }

    function fetchAddressFromName(string  memory _name) public returns(address payable){
        return nameToAddress[_name];
    
        

    
    }
        
       
    
    
   
}
 