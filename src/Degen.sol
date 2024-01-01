// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract DegenNft is ERC721{
    uint tokenId;
    constructor() ERC721("DegenNft", "DGT"){}

    function mint(address _to) public {
        _mint(_to, tokenId);
        tokenId++;
    }
}

contract DegenToken is ERC20 {
    address owner;
    DegenNft Nft;
    uint constant price = 250;

    constructor(address nft) ERC20("Degen", "DGN"){
        owner = msg.sender;
        Nft = DegenNft(nft);
    }


    function mint(uint256 amount) public{
        require(owner == msg.sender);
        _mint(msg.sender, amount);
    }

    function burn(uint amount) public {
        require(balanceOf(msg.sender) >= amount);
        _burn(msg.sender, amount);
    }

    function redeem() public {
        require(balanceOf(msg.sender) >= price);
        transfer(address(Nft), price);
        Nft.mint(msg.sender);
    }

  
}