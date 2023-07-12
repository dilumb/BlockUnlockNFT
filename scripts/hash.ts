import Web3 from 'web3' // Import Web3.js library

;(async () => {
    const response = await fetch(
        'https://dilumb.github.io/resources/metadata.json',
    )
    const assetMetadata = await response.json()
    const stringMetadata = JSON.stringify(assetMetadata) // Convert to a string

    const hash = Web3.utils.sha3(stringMetadata) // Calculate 256-bit SHA3 hash
    console.log(hash)
})()
