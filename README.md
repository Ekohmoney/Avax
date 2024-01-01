# Balances Contract

This Solidity smart contract, named Balances, implements a basic token system with minting and burning functionalities. The contract is released under the MIT License.

## Overview

The Balances contract maintains a total token supply of 1000 and allows users to interact with their token balances. Users can mint new tokens and burn existing tokens based on their account balances.

## Functions

### `mint()`

```solidity
function mint() public
```

The `mint` function allows users to create new tokens. Users can only `mint` tokens if their balance is currently 0, preventing multiple minting for the same address.

### `burn(uint amount)`

```
function burn(uint amount) public
```

The `burn` function enables users to `burn` a specified amount of tokens. It checks if the user has a sufficient balance before subtracting the specified amount. The total token supply is also reduced by the `burn`ed amount.
