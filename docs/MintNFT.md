# Minting an NFT

Now that your NFT collection contract is on the Ethereum Sepolia testnet, you are ready to mint your first NFT.

As you have only 1 MetaMask account, you can assign NFT ownership to the same address you used to deploy the NFT contract. Alternatively, you may create another MetaMask account and transfer some of your test Ether to that account using MetaMask. Then feel free to assign the token ownershop to that address.

1. Copy your Sepolia testnet address from MetaMask. 

2. Return to MataMask and make sure you are in the `Deploy & run transactions` pane on Remix IDE. Enter the contract address in the textbox near the `At Address` button, if not already populated. Remix UI should be populated with a bunch of buttons and textboxes to interact with your NFT contract. 

3. Next, we mint a token for the workshop banner. Expand the textbox next to the `awardToken` button. Paste the copied MetaMask address into the `owner` testbox.
 
4. Enter https://dilumb.github.io/resources/metadata.json into `tokenURI` textbox. If you wish to use a different asset put the URI of the respective JSON object.

5. Click the `transact` button. MetaMask will pop up again, asking you to confirm the transaction to deploy the contract. 

You will see that MetaMask has already set a transaction fee. If it is set to 0, change the value by clicking on the `Edit` link. This will list some suggested gas prices based on the expected time to include a transaction in a block. Then click on the `Confirm` button. 

This should generate a new transaction and you can see the transaction details on the Remix console. Note that our NFT is assigned a token ID of `0`.

This will generate and send a transaction to the Sepolia testnet. You can find a link to Etherscan with the transaction ID on the Remix Console. Click on the link and wait till the transaction is included in a block. When the `Status` is `Success`, your NFT is minted on the testnet. 

Congratulations on minting your first NFT on a global network!
