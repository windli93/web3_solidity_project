// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract basic_05{
   
    uint[] x = [1,2,3];

    //存储类型
    function fcalldata(uint[] calldata _x)public pure returns (uint[] calldata){
        //参数为calldata数组，不能被修改
        //_x[0] = 0 //这样修改会报错
          return (_x);
    }

   //storage
   function fStorage() public {
      //声明一个storage的变量xstorage,指向x，修改xStorage也会受影响x
      uint[] storage xStorage = x;
      xStorage[0] = 100;   
   }

   //view
   function fMemory() public view{
      //声明一个Memory的变量xMemory,复制x,修改xMemory不会影响x
      uint[] memory xMemory= x;
      xMemory[0] = 100;
      xMemory[1] = 200;
      uint[] memory xMemory2 = x;
      xMemory2[0] = 300; 
      xMemory2[1] = 200; 
      xMemory2[2] = 600; 
   }
    
}