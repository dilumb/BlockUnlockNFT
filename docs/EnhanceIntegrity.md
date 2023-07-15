# Enhancing Integrity of NFTs

While your NFT remains immutable on the Ethereum Sepolia testnet, one may change/modify the asset, its location, or metadata and corresponding details on the JSON object. These changes are undetectable as the URI recorded on the token collection contract points to the last JSON object. Therefore, while the blockchain protects data integrity on-chain, it can't detect integrity violations off-chain, rendering our NFT useless.

Next, we discuss a way to enhance off-chain data integrity by storing a cryptographic hash of your JSON object as the token ID. A cryptographic hash function is a mathematical algorithm that maps data of an arbitrary size to a bit array of a fixed size (usually much smaller than data). A cryptographic hash function has security properties that make it extremely difficult to reverse or modify the input without changing the output. Therefore, a hash function can generate a fingerprint of data that can be used to identify any modifications to the input data. However, given a hash value we can't derive from the input data. Thus, we are only able to detect integrity violations, but not to recover original data. The same way, we can detect any modifcations to our asset bound to NFT or its metadata. We can also add a string encoded version of our asset into the meatadata JSON object to further enahance its integrity. However, such options are not covered here.

In this step, we will deploy a different NFT collection contract that uses the JSON object's hash as the token ID. In addition to the token owner address and URI, we also send the hash to our contract when minting a token. We derive the hash using SHA3 (Secure Hash Algorithm 3) which is on the list of Secure Hash Algorithm family of standards by NIST. In Remix IDE, we use the scripting feature to calculate the hash.

## Creating Hash-Based NFT Smart Contract
1. Return to Remix IDE. 

2. Click on the `File explorer` icon from the set of icons on the left. Select the `contracts` folder. Then click on `Create new file` icon, and enter `BlockUnlockNFTsHash.sol` as the file name. 

3. Copy the Solidity smart contract code from [`contracts\BlockUnlockNFTsHash.sol`](../contracts/BlockUnlockNFTsHash.sol) into Remix. This contract is used to keep track of our NFT collection while using the JSON object's hash as the token ID.

There are 2 notable differences in this contract from the previous one. First, we no longer use the `Counters` utility contract to assign incrementing identifiers to our tokens. Second, the `awardToken` function now accepts `tokenId` as an input parameter. This should be set to a 256-bit SHA3 hash value such that it can still use the same data structure used by the ERC-721 contract to keep track of token IDs.

4. Complie the contract and make sure there are no errors. To do so, click on the `Solidity compiler` menu option on the left. Set the compiler options and click on the `Compile BlockUnlockNFTsHash.sol` button. Carefully fix any errors and warnings.

## Calculating SHA3 Hash
We use a simple program to calculate the hash of the JSON object. For this we use a script written in a language called Typescript. Typescript is essentially a type-safe version of JavaScript.

1. Click on the `File explorer` icon from the set of icons on the left. Select the `scripts` folder. Then click on `Create new file` icon, and enter `hash.ts` as the file name. 

3. Copy the Typescript code from [`scripts\hash.ts`](../scripts/hash.ts) into Remix. In lines 4-8 the script fetches our JSON object from the web and converts that to a string. Line 10 calcualtes its SHA3 hash and logs that to the Remix Console in line 11.

4. Click on the `Run` button in the top-left corner of the Remix code area. Or press `Ctrl + Shift + S` (`Cmd + Shift + S` on Mac). You should see the hash value in the Remix Console. Note this down.

## Testing NFT Smart Contract
Let us test our new smart contract on the Remix JavaScript VM again before trying it on the testnet.

1. Use `Deploy & run transactions` menu option and select the `Remix VM (Shanghai)` as the environment.

2. In the textbox next to the `Deploy` enter a name and symbol for our new token collection. 

3. Click on the `Deploy` button (or click on `transact`, if you expanded the textbox). 

4. Mint a token for the workshop banner with the following inputs:
  * `owner` - Copy and paste 2nd address from the Remix `ACCOUNT`
  * `tokenURI` - https://dilumb.github.io/resources/metadata.json or the URI of your JSON object
  * `tokenID` - SHA3 hash copied from the previos section

5. Click the `transact` button. This should generate a new transaction and you can see the transaction details on Remix console. Note that our NFT is now assigned token ID same as the hash.

6. Use `ownerOf` and `tokenURI` functions to verify the values.

## Deploying NFT Smart Contract
It's time to deploy our updated collection contract to the Ethereum testnet.

1. Return to the `Deploy & run transactions` pane, change the Environment drop-down list to the `Injected Provider - Metamask`. 

2. Click on the `Deploy` button to deploy the contract. MetaMask will pop up again, asking you to confirm the transaction to deploy the contract. This will generate and send a transaction to the Sepolia testnet. Wait till the Status is `Success`. 

4. Repeat Step 4 to 6 from the previous section to mint a token and verify its details.
