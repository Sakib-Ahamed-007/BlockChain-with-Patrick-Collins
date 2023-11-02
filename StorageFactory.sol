// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";


contract StorageFactory{
    SimpleStorage[] public listOfSimpleStorage;

    function createSimpleStorageContrac() public {
        SimpleStorage newSimpleStorage = new SimpleStorage();
        listOfSimpleStorage.push(newSimpleStorage);
    }

    function sfStore(uint256 _listOfSimpleStorageIndex, uint256 _favoriteNumber) public {
        listOfSimpleStorage[_listOfSimpleStorageIndex].store(_favoriteNumber);
    }

    function sfGet(uint256 _listOfSimpleStorageIndex) public view returns(uint256){
        return listOfSimpleStorage[_listOfSimpleStorageIndex].retrive();
        
    }

    function sfStoreWithPerson(uint256 _listOfSimpleStorageIndex, string memory _name, uint256 _favoriteNumber) public {
        listOfSimpleStorage[_listOfSimpleStorageIndex].addPerson(_name, _favoriteNumber);
    }

}
