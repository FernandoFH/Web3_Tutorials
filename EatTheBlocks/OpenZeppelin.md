| Zeppelin Solutions | 
| :-------: | 
| OpenZeppelin | 
| Zeppelin SDK |  

### OpenZeppelin
The library for Solidity smart contracts.

``` npm install @openzeppelin/contracts ```

```
pragma solidity ^0.5.0;
 
import "@openzeppelin/contracts/token/ERC721/ERC721Full.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721Mintable.sol";
 
contract MyNFT is ERC721Full, ERC721Mintable {
  constructor() ERC721Full("MyNFT", "MNFT") public {
  }
}

```
#### Install OpenZeppelin in a Truffle smart contract project

``` npm init -y ```

``` npm install @openzeppelin/contracts ```

#### Create an ERC20 token with OpenZeppelin
