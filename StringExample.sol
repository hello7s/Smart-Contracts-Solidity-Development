// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.1;

contract StringExample {
    string public myString = 'Hello Worldly!';
    
    function setMyString (string memory _myString) public {
        myString = _myString;
    }
}