// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract basic_10 {
    //常量必须在声明的时候初始化
    uint256 constant CONSTANT_NUM = 10;
    string constant CONSTANT_STR = "0xAA";
    bytes constant CONSTANT_BYTE = "WTF";
    address constant CONSTANT_ADDR = 0x0000000000000000000000000000000000000000;

    uint256 public immutable IMMUTABLE_NUM = 9999999999;
    address public immutable IMMUTABLE_ADDRESS;
    uint256 public immutable IMMUTABLE_BLOCK;
    uint256 public immutable IMMUTABLE_TEST;

    //immutable可以在声明和构造中初始化
    constructor() {
        IMMUTABLE_ADDRESS = address(this);
        IMMUTABLE_BLOCK = block.number;
        IMMUTABLE_TEST = test();
    }

    function test() public pure returns (uint256) {
        uint256 what = 9;
        return (what);
    }
}
