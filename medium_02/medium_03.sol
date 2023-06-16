// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract ReceiveEth {
    event Log(uint256 amount, uint256 gas);

    receive() external payable {
        emit Log(msg.value, gasleft());
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}

contract SendEth {
    constructor() payable {}

    receive() external payable {}

    //Transfer方法发送
    function transferETH(address payable _to, uint256 amount) external payable {
        _to.transfer(amount);
    }

    //send方式发送
    function sendETH(address payable _to, uint256 amount) external payable {
        bool success = _to.send(amount);
        if (!success) {
            revert SendFailed();
        }
    }

    function callEth(address payable _to, uint256 amount) external payable {
        //处理call的返回值，如果失败，revert交易并发送error
        (bool success, ) = _to.call{value: amount}("");
        if (!success) {
            revert CallFailed();
        }
    }
}

error SendFailed();
error CallFailed();
