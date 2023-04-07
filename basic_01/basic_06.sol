// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract basic_06 {
    //状态变量
    uint256 public x = 1;
    uint256 public y;
    string public z;

    function foo() external {
        //可以在函数里面更改变量的值
        x = 5;
        y = 2;
        z = "0xAA";
    }

    //局部变量
    function bar() external pure returns (uint256) {
        uint256 xx = 1;
        uint256 yy = 3;
        uint256 zz = xx + yy;
        return (zz);
    }

    //全局变量
    function global()external view returns (address,uint,bytes memory){
          address sender = msg.sender;
          uint blockNum = block.number;
          bytes memory data = msg.data;
          return (sender,blockNum,data);
    }
}
