## Module 1 - Blockchain Foundations
### Introduction current section

#### what does it solve?
The double-spending problem.

#### How does blockchain prevent double-spending?
Decentralized and distributed network of ledger-keepers. Each member of the network has an exact replica of the ledger. In addition, no one can update the ledger without the consensus of all other ledger-keepers to approve the changes. 

#### How does it work?
- Deterministic: the same message always results in the same hash;
- Fast: the hash value for any given message is computed quickly;
- Resistant: it is not feasible to generate a message from its hash value except by trying all possible messages;
- Avalanche effect: a small change to a message changes the hash value so extensively that the new hash value appears uncorrelated with the old value;
- Unique: it is infeasible to find two different messages with the same hash value.

We can make a rule that states that in addition to the new content, the previous hash will also be an input of the next hash.
`
version2Hash = hash(version2Changes + version1Hash)
`

- Transaction blocks are logical units that wrap up a set of transactions in a specific order.
- Transaction ordering is surprisingly challenging in a distributed system due to design goals and constraints.

#### proof-of-work (PoW) 
- A valid block is a well-ordered set of transactions,
- The block contains the hash of the previous block, and
- The block includes a "winning lottery ticket", the nonce.

### A Brief History of Blockchain
  
#### Public Blockchains
- Accessibility.
- No hierarchy.
- Crypto-economic incentives.
- Full decentralisation.

#### Introduction to Bitcoin
- Nakamoto describes Bitcoin as a peer-to-peer (P2P) version of electronic cash.
- Proof-of-work (PoW).
- Each block includes: 
    - The previous hash 
    - Nonce (a random set of 1s and 0s). 
    - TX 

#### Introduction to Ethereum
- Ethereum is a public, blockchain-based distributed computing platform and operating system with smart contract.
- Execution through the Ethereum Virtual Machine (EVM). 
- Introduce Gas as a fee for each computational step.

#### The Blockchain Computer
![Blockchain Computer](https://github.com/FernandoFH/Smart_Contract/blob/master/Tezos_Developer/Arch_BlockChaing_B9Lab.JPG)

### Introduction to Managed Networks

#### Private blockchains:
- Can be designed for a limited number of vetted and approved participants.
- Can be designed for optimised performance.
- Can be governed by a well-defined agreement between the participants.

### Consensus

#### Byzantine Generals' Problem:
Whose armies are spread around a target city, need to reach consensus on a time to attack. To achieve this, they can only rely on unsecured communication channels, whereby, for instance, a lack of acknowledgement can either be caused by a failure to deliver a message, by a dead general or by a failure to deliver the acknowledgment. 

#### Proof-of-Work (PoW)
This is generally implemented as a search for a random number which when combined with ordered transactions in a block yields a hash function result that matches a criteria such as minimum number of leading zeroes. Finding such a solution is taken as evidence of considerable effort (or proof that considerable work must have been invested in the search).

#### Proof-of-Stake (PoS)
A successful proof-of-stake system must address the problem of "nothing at stake". That is, randomly-selected validators must face a disincentive for bad behaviour as well as a high probability that bad behaviour will be detected. 

#### Delegated-Proof-of-Stake (DPoS)
![Delegated-Proof-of-Stake](https://github.com/FernandoFH/Smart_Contract/blob/master/Tezos_Developer/DPoS.JPG)

#### Proof-of-Burn (PoB)
Miners must send coins to a "burn" address, of which it is believed nobody owns the private key (i.e. a verifiably un-spendable address). The coins on the “burn” address cannot then be spent due to the absence of a private key.

#### Proof-of-Importance (PoI)
The starting idea with proof-of-importance (PoI) is to solve the "rich man gets richer" problem that arises in PoS algorithms. Therefore, the protocol rewards network activity based on the so-called "importance score", which is calculated by graph theory.

#### Practical Byzantine Fault Tolerance (PBFT)
The starting idea with proof-of-importance (PoI) is to solve the "rich man gets richer" problem that arises in PoS algorithms. Therefore, the protocol rewards network activity based on the so-called "importance score", which is calculated by graph theory.

#### Prof-of-Activity (PoA)
PoA is a combination of PoW and PoS. The miner creates a template with the nonce and deploys it to the network.

#### Proof-of-Capacity (PoC)
It creates hashes and stores these. Then it selects parts of the data, taking into account the last block header in the blockchain. The selected data is hashed and must fulfill a given difficulty. PoC is utilised in order to be fairer, because memory access times do not vary as much as CPU power.

#### Proof-of-elapsed-time (PoET)
The key point is the lottery, which must be performed in a trusted execution environment (TEE). For this purpose, Intel offers Software Guard Extensions (SGX) for applications developers.

### Fundamentals
#### Public key cryptosystems
#### Public / private key
- RSA
- PGP, GnuPG

#### Encrypt and decrypt

#### Sign and verify



