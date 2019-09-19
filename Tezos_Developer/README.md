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
