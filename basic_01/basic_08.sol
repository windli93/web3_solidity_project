// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract basic_08 {
    //定义映射类型
    mapping(uint => address) public ipToAddress;
    mapping(address => address) public swapPair;

    //我们定义一个结构体
    struct Student {
        uint256 id;
        uint256 score;
    }

    //定义一个方法
    function writeMap(uint _Key, address _Vlaue) public {
        ipToAddress[_Key] = _Vlaue;
    }
}
