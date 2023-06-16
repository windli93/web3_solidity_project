// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import {Yeye} from "./Yeye.sol";

import "./Yeye.sol";

// 通过网址引用
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/Address.sol";

// 引用oppenzepplin合约
import "@openzeppelin/contracts/access/Ownable.sol";

contract Import {
    using Address for address;

    Yeye yeye = new Yeye();

    // 测试是否能调用yeye的函数
    function test() external {
        yeye.hip();
    }
}
