// SPDX-Lisence-Identifier:MIT
pragam solidity ^0.8.19;

contract Array{
uint[] public fixedArray = [10, 20, 30];

    function getFirstElement() public view returns (uint) {
        return fixedArray[0];
    }
     function add(uint _value) public {
        dynamicArray.push(_value);
    }

    function getLength() public view returns (uint) {
        return dynamicArray.length;
    }
    uint[][] public multiDimArray;

    function initialize(uint x, uint y) public {
        multiDimArray[x] = new uint[](y);
    }

    function set(uint x, uint y, uint value) public {
        require(x < multiDimArray.length && y < multiDimArray[x].length, "Index out of bounds");
        multiDimArray[x][y] = value;
    }

    function get(uint x, uint y) public view returns (uint) {
        require(x < multiDimArray.length && y < multiDimArray[x].length, "Index out of bounds");
        return multiDimArray[x][y];
    }
}
