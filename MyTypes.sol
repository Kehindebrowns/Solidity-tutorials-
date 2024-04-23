// SPDX-Lisence-Identifier:MIT
pragma solidity ^0.8.0;

contract MyTypes{
    bool public myBoolean = true;
    uint256 public myUnit = 123;
    uint8  public myUnit = 255; // 2**8-1
    uint32 internal myUint = 6666666712;
    uint16 private myUint = 44;

    int256  public myInt = -555555555;
    int8  public myInt  = -127; 

    address public myAddress; // 
    address internal myContractAddress = 0x7b96aF98d211cBf6BA5b0dd53aa61Dc5806b6AcE;
}
