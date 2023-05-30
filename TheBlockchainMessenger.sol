//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract TheBlockchainMessenger {

    uint public counter;

    string public message;

    address public owner;

    constructor () {
        owner = msg.sender;
    }
    
    // only the contract owner can update the string
    function changeMessage (string memory _updateMessage) public {
        if (msg.sender == owner) {
            message = _updateMessage;
            counter++;
        }
    }

}
