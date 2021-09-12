// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MyStructs {
    
    struct NFT {
        string name;
        uint256 dna;
    }
    
    NFT[] public nftList;
    
    function addNFT(string memory _name, uint256 _dna) public {
        // NFT memory newNFT;
        // newNFT.name = _name;
        // newNFT.dna = _dna;
        NFT memory newNFT = NFT(_name, _dna);
        nftList.push(newNFT);
    }
    
    function addNFTS(NFT[] calldata _nfts) public {
        nftList = _nfts;
    }
    
    function updateNFTStorage(uint256 _index, string memory _name) public {
        NFT storage nftToBeUpdated = nftList[_index];
        nftToBeUpdated.name = _name;
    }
    
    function updateNFTMemory(uint256 _index, string memory _name) public {
        NFT memory nftToBeUpdated = nftList[_index];
        nftToBeUpdated.name = _name;
        nftList[_index] = nftToBeUpdated;
    }
    
    function getNftName(uint256 _index) public view returns(string memory){
        return nftList[_index].name;
    }
}