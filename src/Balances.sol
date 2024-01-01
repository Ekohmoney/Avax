// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Balances{

    uint256 public totalSupply = 1000;
    mapping (address => uint) balanceOf;

    
    function mint() public {
        require(balanceOf[msg.sender] == 0, "Already has tokens");
        balanceOf[msg.sender] += 10;
    }

    function burn(uint amount) public {
        if(balanceOf[msg.sender] < amount){
            revert("Isufficient amount in balance");
        }

        balanceOf[msg.sender] -= amount;
        uint newSuply = totalSupply -= amount;

        assert(totalSupply == newSuply );
    }
}