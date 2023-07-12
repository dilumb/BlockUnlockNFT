/// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Contract for NFT tokens from Block Unlock Conference 2023
/// @author Dilum Bandara, CSIRO's Data61

// Import standard NFT contracts from OpenZeppelin
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract BlockUnlockNFTs is ERC721URIStorage {
    using Counters for Counters.Counter; // Use a counter to generate token IDs
    Counters.Counter private _tokenIds; // Keep track of the last token ID

    /**
    * @dev Sets values for {name} and {symbol} when the contract is deployed.
    *
    * @param _name Token collection name (string)
    * @param _symbol Token symbol (string)
    */
    constructor(string memory _name, string memory _symbol) ERC721(_name, _symbol) {

    }

    /**
     * Create a new token for the given URI
     * 
     * @param owner Token owner (address)
     * @param tokenURI URI to object descibing the item/asset (string)
     * @return Token ID
     **/
    function awardToken(address owner, string memory tokenURI) public returns (uint256)
    {
        uint256 newTokenId = _tokenIds.current();   // Get next token ID
        _mint(owner, newTokenId);                   // Mint NFT for this token ID and assign it to owner
        _setTokenURI(newTokenId, tokenURI);         // Record token URI against the token ID

        _tokenIds.increment();                      // Increment token ID
        return newTokenId;
    }
}
