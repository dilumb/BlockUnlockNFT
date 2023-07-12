/// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Contract for NFT tokens from Block Unlock Conference 2023.
/// Use hash as token ID
/// @author Dilum Bandara, CSIRO's Data61

// Import standard NFT contracts from OpenZeppelin
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract BlockUnlockNFTsHash is ERC721URIStorage {
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
     * @param tokenId Token ID as SHA3 hash (string)
     * @return Token ID
     **/
    function awardToken(address owner, string memory tokenURI, uint256 tokenId) public returns (uint256)
    {
        _mint(owner, tokenId);                   // Mint NFT for this token ID and assign it to owner
        _setTokenURI(tokenId, tokenURI);         // Record token URI against the token ID

        return tokenId;
    }
}
