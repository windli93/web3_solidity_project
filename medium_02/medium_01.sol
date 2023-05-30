// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract medium_01 {
    //动作1
    function saySomething() public pure returns (string memory) {
        return ("Nothing");
    }

    //动作2
    function saySomething(string memory something)
        public
        pure
        returns (string memory)
    {
        return(something);
    }

    //动作3
    function f(uint8 _in) public pure returns(uint8 out){
        out = _in;
    }

    //动作4
    function f(uint256 _in) public pure returns(uint256 out){
        out = _in;
    }
}
