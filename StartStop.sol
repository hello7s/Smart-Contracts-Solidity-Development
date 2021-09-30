// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.1;

contract StartStopUpdateExample {
    
    address public owner;
    bool public paused;
    
    
    constructor() {
        owner = msg.sender;
    }
    
    function sendmoney() public payable {
        
    }
    
    function withdrawAllMoney(address payable _to) public {
        require(owner == msg.sender, "Nopester, no withdraw");
        require(paused == false, "Contract paused");
        _to.transfer(address(this).balance);
    }
    
    function setPaused(bool _paused) public {
        require(msg.sender == owner, "Nobool, no withdrbool");
        paused = _paused;
    }
    function destroySmartContract (address payable _to) public {
        require(msg.sender == owner, "You aren't the owner!");
        selfdestruct(_to);
    }
}