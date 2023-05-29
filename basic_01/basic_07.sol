// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract basic_07 {
    //固定长度
    uint256[8] array1;
    bytes1[5] array2;
    address[100] array3;

    //可变长度
    uint256[] array4;
    bytes1[] array5;
    address[] array6;
    bytes array7;

    //memory动态数组
    uint256[] array8 = new uint256[](5);
    bytes array9 = new bytes(9);

    function g(uint256[3] memory) public pure {
        uint256[] memory x = new uint256[](3);
        x[0] = 1;
        x[1] = 3;
        x[2] = 4;
    }

    function f() public pure {
        g([uint256(1), 2, 3]);
    }

    struct Student {
        uint256 id;
        uint256 score;
    }

    Student student;

    function initStudent1() external {
        Student storage _students = student;
        _students.id = 11;
        _students.score = 80;
    }
}
