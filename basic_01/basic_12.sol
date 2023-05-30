// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract basic_12 {
    address public owner;

    //学习构造函数
    constructor() {
        owner = msg.sender;
    }

    //定义modifer
    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    //定义一个带onlyOwner使用的函数
    function changeOwner(address _newOwner) external onlyOwner {
        owner = _newOwner;
    }
}
