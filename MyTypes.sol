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
/// @ notice pls compare
pragma solidity ^0.8.0;

contract Operators {
    uint256 a = 177;
    uint256 b = 277;
    uint256 c = 377;
    uint8 newValue;
    bool MyBool = false;

    function example_1() public {
        // Corrected the syntax for arithmetic operations
        uint256 sum = a + b + c;
        uint256 mod = c % b;
        a++;
        b--;
        // Removed the view function as per the comment
    }

    function example_2() public {
        // Assign a value to newValue or use it in some operation
        newValue = 10;
    }

    function example_3() public view returns (bool) {
        bool result = false;
        if (a < b) {
            result = true;
        }
        if (a <= b) {
            result = true;
        }
        // Removed redundant conditions
        return result;
    }

    function example_4() public view returns (bool) {
        bool result = false;
        if (a < b && b > c) {
            result = true;
        }
        // Corrected the comparison syntax
        if (a > 5) {
            result = false;
        }
        // Removed the redundant condition
        return result;
    }

    function example_5() public view returns (uint8) {
        uint8 results = a >= b ? 2 : 0;
        // Removed the redundant declaration of MyBool
        return results;
    }
}

