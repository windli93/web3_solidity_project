// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract basic_11 {
    //1. if-else
    function ifElseTest(uint256 _number) public pure returns (bool) {
        if (_number == 0) {
            return true;
        } else {
            return false;
        }
    }

    //2. for循环
    function forLoopTest() public pure returns (uint256) {
        uint256 sum = 0;
        for (uint256 i = 0; i < 10; i++) {
            sum += i;
        }
        return (sum);
    }

    //3. while循環
    function whileTest() public pure returns (uint256) {
        uint256 sum = 0;
        uint256 i = 0;
        while (i < 10) {
            sum += i;
            i++;
        }
        return (sum);
    }

    //4. do-while循环
    function doWhileTest() public pure returns (uint256) {
        uint256 sum = 0;
        uint256 i = 0;
        do {
            sum += i;
            i++;
        } while (i < 10);
        return (sum);
    }

    //5. 三元运算符
    function ternaryTest(uint256 x, uint256 y) public pure returns (uint256) {
        return x >= y ? x : y;
    }

    //冒泡排序
    function insertionSortWrong(uint256[] memory a)
        public
        pure
        returns (uint256[] memory)
    {
        for (uint256 i = 1; i < a.length; i++) {
            uint256 temp = a[i];
            uint256 j = i;
            while ((j >= 1) && (temp < a[j - 1])) {
                a[j] = a[j - 1];
                j--;
            }
            a[j] = temp;
        }
        return (a);
    }
}
