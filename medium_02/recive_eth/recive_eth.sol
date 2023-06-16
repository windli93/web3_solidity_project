// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract recive_eth {
    event Received(address Sender, uint256 Value);

    event fallbackCalled(address Sender, uint256 Value, bytes data);

    //接受ETH时释放Receive事件
    receive() external payable {
        emit Received(msg.sender, msg.value);
    }

    //回退函数
    fallback() external payable {
        emit fallbackCalled(msg.sender, msg.value, msg.data);
    }
}
