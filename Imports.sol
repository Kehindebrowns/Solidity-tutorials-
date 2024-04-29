// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import  "https://github.com/OpenZepplin/openzepplin-contracts/blob/master/contracts/token/ERC721/ERC721.sol";
import "./Enums.sol";

constant NFT {
        uint256 dna;
        string  name;

        constructor(string memory _name,uint256 _dna){
            name = _name;
            dna = _dna;
        }
}


contract Imports is ERC721 , Enums {
       constructor(string memory _name , string memory _symbol) ERC721(_name , _symbol){}

      // a list of nfts
      NFT[] public MYNFTs;

      // the add function is used to be able 
      // NFT - the name of the contract 
      // nft the ancoured name that is used when we want to call that logic

      function addNFT(string memory _name , uint256 _dna) public {
        NFT nft =  new NFT();
      }
}