# MyToken Smart Contract

## Overview

This Ethereum smart contract, named MyToken, is an ERC-20 token contract that extends the OpenZeppelin ERC20 implementation. The contract is released under the MIT License.

## License

This contract is licensed under the terms of the MIT License. See [LICENSE](LICENSE) for more details.

## Token Information

- **Name:** EkohToken
- **Symbol:** EKO

## Functions

### `constructor()`

The constructor function initializes the ERC20 token with the name "EkohToken" and symbol "EKO" using the OpenZeppelin ERC20 constructor.

### `mint(address _to, uint _amount)`

```solidity
function mint(address _to, uint _amount) external
```

The mint function allows the contract owner to mint a specified amount of tokens and send them to the provided address (\_to).

### `burn(uint _amount)`

```
function burn(uint _amount) public
```

The `burn` function allows token holders to `burn` a specified amount of their own tokens. It checks if the sender has sufficient funds before performing the `burn` operation.

### `decimals()`

```
function decimals() public view virtual override returns (uint8)

```

The decimals function returns the number of decimals used to represent token balances. In this case, it returns 0.
