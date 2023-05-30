// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Yeye {
    event Log(string msg);

    function hip() public virtual {
        emit Log("YeYe");
    }

    function pop() public virtual {
        emit Log("YeYe");
    }

    function yeye() public virtual {
        emit Log("YeYe");
    }
}

//单向继承
contract Baba is Yeye {
    // 继承两个function: hip()和pop()，输出改为Baba。
    function hip() public virtual override {
        emit Log("Baba");
    }

    function pop() public virtual override {
        emit Log("Baba");
    }

    function baba() public virtual {
        emit Log("Baba");
    }
}

//多重继承
contract Son is Yeye, Baba {
    // 继承两个function: hip()和pop()，输出值为Erzi。
    function hip() public virtual override(Yeye, Baba) {
        emit Log("Erzi");
    }

    function pop() public virtual override(Yeye, Baba) {
        emit Log("Erzi");
    }
}

//抽象方法
abstract contract A {
    uint256 public a;

    constructor(uint256 _a) {
        a = _a;
    }
}
