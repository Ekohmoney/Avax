// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {

    constructor() ERC20("EkohToken", "EKO") {
    }

    function mint(address _to, uint _amount) external {
        _mint(_to, _amount);
    }

    function burn(uint _amount) public {
        if (balanceOf(msg.sender) < _amount){
            revert ("Insufficient funds in balance");
        }
        _burn(msg.sender, _amount);
    }

    function decimals() public view virtual override  returns(uint8){
        return 0;
    }
}