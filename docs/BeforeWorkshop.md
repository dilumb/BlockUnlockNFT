# Before the Workshop

Before attending the workshop, please complete the following steps on your laptop and bring it with you. If you are unfamiliar with terms like "address" and "private key", follow along. We'll discuss them during the workshop.
Please arrive 15 minutes before the workshop start time if you cannot complete any of the following steps.

### 1. Test IDE
Please navigate to https://remix.ethereum.org/ and ensure it loads in your preferred browser without trouble.
* We haven't had problems with the Firefox, Chrome, and Edge browsers.
* If you are not familiar with IDEs (Integrated Development Environments), it's highly recommended to read the `Remix Basics` guide on the home page.

### 2. Install Wallet and Create an Account
Visit https://metamask.io/ and install Metamask browser extension. It works on Chrome, Firefox, Edge, Opera, and Brave browsers.
1. Once installed, click on the `Get Started` button.
2. A first-time user must create a new wallet. Click on the `Create a new wallet` button.
3. Read and agree to the policy, enter a new password twice, and click `Create a new wallet`. This will generate a 12-word or higher Secret Backup Phrase (aka mnemonic) to recover your wallet in case of an error. Save the mnemonic in a secure location. Remember the password too.
4. Also, confirm the `Secret Backup Phrase`.
5. Finally, MetaMask creates a new account with associated public and private key pairs. Your 160-bit Ethereum address is derived from the public key, and the private key is used to sign transactions. Your address will appear as a long hexadecimal string with the prefix `0X` at the top of the MetaMask plugin.
6. Click `Copy to clipboard` to copy your address and see it on any text editor (you may have to move the mouse pointer to where it says `Account 1`). You can also get your address as a QR code.
7. Notice that your current account balance is 0 ETH.

### 3. Fund Your Account
Next, we need to fund our account with test Ether (cryptocurrency used in [Ethereum](https://ethereum.org/en/)). For this, we use a faucet smart contract that donates test Ether.
1. Because we will mint our NFT on the [Sepolia testnet](https://sepolia.dev/), from the drop-down list at the top of MetaMask, select `Sepolia test network` (see below). If the Sepolia test network is not visible, click on `Show/hide test networks`. Then find the `Show/hide test networks` slider and set it to `ON`.

<img src="./img/Testnet_selection.png" width="300" alt="Screenshot showing selected test network on Metamask" />

2. Sepolia testnet has a couple of faucets (see https://ethereum.org/en/developers/docs/networks/#sepolia). Try one of the following faucets:
   1. Sepolia PoW Faucet at https://sepolia-faucet.pk910.de/
       1. Copy your MetaMask `Account 1` address into the textbox that says `Please enter ETH address or ESN name`. Prove you are a human by completing the captcha.
       2. Next, click on the `Start Mining` button.
       3. Wait until you accumulate at least 0.05 ETH, which could take several minutes. Then click on the `Stop mining and claim reward button`.
       4. Finally, click on the `Claim rewards` to claim your test Ether. This should create a new transaction to fund your account. Click on the transaction ID link, which will take you to https://etherscan.io.

   2. Infura Sepolia faucet at https://www.infura.io/faucet/sepolia
      1. Copy your MetaMask `Account 1` address into the textbox and click on `LOGIN AND RECEIVE ETH`.
      2. You will be required to create an Infura account. It is not a bad idea, because Infura is useful for blockchain developers as it provides connectivity and APIs to several public blockchains. You will get a popup with the title TRANSACTION SENT!.
      3. Click on the `VIEW ON BLOCK EXPLORER` link which will take you to https://etherscan.io.

   3. Alchemy Sepolia faucet at https://sepoliafaucet.com/
      1. Sign up for an account. Select `Ethereum` as your preferred network and `Learning` as the desired task. Skip the payment setup option.
      2. Go back to the homepage. Copy your MetaMask `Account 1` address into the textbox that says `Enter your wallet address (0x) or ...`. Prove you are a human by completing the captcha.
      3. Next, click on the `Send me ETH` button.
      4. This should create a new transaction to fund your account. Click on the transaction ID link under `Your Transactions`, which will take you to https://etherscan.io.

As seen in the following figure, on Etherscan, you can see details of the transaction such as Transaction Hash, Status, From, To, and Value. For a few tens of seconds, the transaction Status may appear as Pending. Once the transaction is included in a block, the `Status` changes to `Success` and additional details such as Block, Timestamp, and Transaction Fee will appear. Click on the `Click to see More` link to see further details of the transaction.

<img src="./img/TX_details.png" width="800" alt="Screenshot showing transaction details on etherscan.io" />

You should also see minted Ethere appearing on Metamask account. Congratulations, you're ready to begin Saturday's session.

### 4. Place to Host Your Asset and its Metadata (Optional)
Follow these steps if you want to mint an NFT with your own asset(s). If you already have a personal website where you can host files that can be accessed from the Internet, skip this task.

1. Create a https://github.com/ account, if you don't have a one.
2. Once logged into GitHub, create your Github personal page by following steps at https://pages.github.com/
