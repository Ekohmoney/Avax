# DegenToken and DegenNft Contracts

## Overview

The DegenToken and DegenNft contracts are Ethereum smart contracts written in Solidity. They are released under the MIT License.

## License

This contract is licensed under the terms of the MIT License. See [LICENSE](LICENSE) for more details.

## DegenNft Contract

### Features

- Mint unique non-fungible tokens (NFTs) with the DegenNft contract.
- Each NFT has a unique tokenId.

### Usage

1. Deploy the DegenNft contract on the Ethereum blockchain.
2. Mint NFTs by calling the `mint` function and providing the recipient's address.

```solidity
// Example usage of DegenNft contract
DegenNft degenNft = new DegenNft();
degenNft.mint(addressTo);
```

## DegenToken Contract

### Features

- Mint fungible tokens with the DegenToken contract.
- Burn tokens and redeem NFTs based on the token balance.

### Usage

- Deploy the DegenToken contract on the Ethereum blockchain, providing the address of the DegenNft contract.
- Mint tokens by calling the mint function (only allowed for the contract owner).
- Burn tokens by calling the burn function.
- Redeem an NFT by calling the redeem function (requires a token balance equal to the set price).

```
// Example usage of DegenToken contract
DegenToken degenToken = new DegenToken(addressOfDegenNft);
degenToken.mint(amount);
degenToken.burn(amount);
degenToken.redeem();
```
