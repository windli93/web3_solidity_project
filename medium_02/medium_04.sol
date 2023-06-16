// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract OtherContract {
    uint256 private _x = 0;

    //定义日志事件
    event Log(uint256 amount, uint256 gas);

    //返回余额
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

    //可以调节状态变量_x的函数,并且可以往合约里面转ETH（Payable）
    function setX(uint256 x) external payable {
        _x = x;
        if (msg.value > 0) {
            emit Log(msg.value, gasleft());
        }
    }

    //读取_x
    function getX() external view returns (uint256 x) {
        x = _x;
    }
}
