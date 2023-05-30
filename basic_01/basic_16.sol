// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

error TransferNotOwner();

// function transferNotOwer1(uint256 tokenId,address newOwner) public {
//      if(_owners[tokenId] != msg.sender){
//             revert TransferNotOwner();
//      }
//      _owners[tokenId] = newOwner;
// }

//error 使用revert 关键字来抛出这个异常，功能比较全面且gas费低

//Require 也是抛出异常，缺点是gas费比较高

//assert 也是抛出异常，gas费中等


contract errors{
     // 一组映射，记录每个TokenId的Owner
    mapping(uint256 => address) private _owners;

    // Error方法: gas cost 24457
    // Error with parameter: gas cost 24660
    function transferOwner1(uint256 tokenId, address newOwner) public {
        if (_owners[tokenId] != msg.sender) {
            revert TransferNotOwner();
            // revert TransferNotOwner(msg.sender);
        }
        _owners[tokenId] = newOwner;
    }

    // require方法: gas cost 24755
    function transferOwner2(uint256 tokenId, address newOwner) public {
        require(_owners[tokenId] == msg.sender, "Transfer Not Owner");
        _owners[tokenId] = newOwner;
    }

    // assert方法: gas cost 24473
    function transferOwner3(uint256 tokenId, address newOwner) public {
        assert(_owners[tokenId] == msg.sender);
        _owners[tokenId] = newOwner;
    }
}
