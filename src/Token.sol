pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
  address owner;

  constructor() ERC20("EkohToken", "EKO") {
    owner = msg.sender;
  }

  modifier onlyOwner() {
    require(owner == msg.sender);
    _;
  }

  function mint(address _to, uint _amount) external onlyOwner {
    _mint(_to, _amount);
  }

  function burn(uint _amount) public {
    if (balanceOf(msg.sender) < _amount) {
      revert("Insufficient funds in balance");
    }
    _burn(msg.sender, _amount);
  }

  function transfer(address recipient, uint amount) public {
    _transfer(msg.sender, recipient, amount); // Call internal transfer function
  }
}

