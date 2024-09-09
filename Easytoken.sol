// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;


import "ERC20.sol";

contract EasyToken is ERC20{
    address public   admin;

    constructor()ERC20("Easy Token","ET") {
        _mint(msg.sender, 200000000000000000000);
        admin=msg.sender;
                
    }
     modifier onlyAdmin{
        require(msg.sender==admin,"Unautherized");
        _;
    }
    function safeMint(address to,uint value) public onlyAdmin{
        _mint(to, value);
    }
}