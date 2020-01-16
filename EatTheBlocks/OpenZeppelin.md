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

#### Create an ERC20 token

Basic ERC20 
   - Detailed
   - Burnable
   - Mintable
   - Capped token supply

``` 
pragma solidity ^0.5.0;

import "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Detailed.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Mintable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Capped.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Pausable.sol";

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract MyToken2 is SafeERC20 { } 

contract MyToken is ERC20, ERC20Detailed, ERC20Burnable, ERC20Mintable, ERC20Capped{
    constructor() ERC20Detailed("MyToken", "MTN", 18) ERC20Capped(1000){
       }
 function foo() external { 
   IERC20(0x....).transfer(),..
    } 
}
```
#### Create an ERC721 Token

``` 
pragma solidity ^0.5.0;

import "@openzeppelin/contracts/token/ERC721/ERC721Full.sol"; 
import "@openzeppelin/contracts/token/ERC721/ERC721Burnable.sol"; 
//import "@openzeppelin/contracts/token/ERC721/ERC721Metadata.sol";
//import "@openzeppelin/contracts/token/ERC721/ERC721Enumerable.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721Holder.sol";

contract MyContract is ERC721 , ERC721Burnable {
  constructor() public {
  }
}

contract MyOtherContract {
   function foo() external {
      IERC721(0x....).transfer()..
   }
}

contract MyERC721Holder in ERC721Holder {
}

```
#### Create an ICO

``` 
pragma solidity ^0.5.0;

import "@openzeppelin/contracts/crowdsale/Crowdsale.sol";
import "@openzeppelin/contracts/crowdsale/distribution/PostDeliveryCrowdsale.sol";
import "@openzeppelin/contracts/crowdsale/price/IncreasingPriceCrowdsale.sol";
import "@openzeppelin/contracts/contracts/token/ERC20/IERC20.sol";

contract ICO is Crowdsale, PostDeliveryCrowdsale, IncreasingPriceCrowdsale {
  constructor (
  uint rate, 
  address payable wallet, 
  IERC20 token
  ) Crowdsale(rate,wallet,token) PostDeliveryCrowdsale() IncreasingPriceCrowdsale() public {}
}
```
#### Pausable Smart contracts 
``` 
pragma solidity ^0.5.0;

import "@oopenzeppelin-contracts/contracts/lifecycle/Pausable.sol";

openzeppelin-contracts/contracts/access/roles/PauserRole.sol

contract MyContract is Pausable {
  constructor() Pausable() public {}

function foo() whenNotPaused() external {
     //Do something 
  }
  
function foo() whenPaused() external {
     //Do something 
  }
}
```
