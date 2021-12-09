// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 < 0.9.0;

contract accountMapping{
    struct identity{
        string name;
        address payable Address;
    }

    identity [] public entity;

    mapping(string =>address) nameToAddress;

    function createNameAdressPair(string memory _name , address payable _Address) public{
        entity.push(identity({name : _name , Address : _Address}));
        nameToAddress[_name] = _Address;
        

    }
    
    function fetchAddressFromName() public view returns(string,address payable){(
       for  (uint 256 i = 0;  i<entity.length; i++) {
            return entity.i[name];
        }
    }
    
   
}
 