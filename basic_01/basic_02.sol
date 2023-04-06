// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Basic_02 {
    //布尔值
    bool public _bool = true;
    bool public _bool1 = !_bool;
    bool public _bool2 = _bool && _bool1;
    bool public _bool3 = _bool || _bool2;
    bool public _bool4 = _bool == _bool3;
    bool public _bool5 = _bool != _bool4;

    //整形
    int256 public _int = -1;
    uint256 public _unit = 1;
    uint256 public _number = 12131;

    //数量
    uint256 public _number1 = _number + 1; // +，-，*，/
    uint256 public _number2 = 2**2; // 指数
    uint256 public _number3 = 7 % 2; // 取余数
    bool public _numberbool = _number2 > _number3; // 比大小

    //地址类型
    address public _address = 0x7A58c0Be72BE218B41C608b7Fe7C5bB630736C71;
    address payable public _address1 = payable(_address);
    //地址类型成员
    uint256 public balance = _address1.balance;
}
