// SPDX-LISENCE-IDENTIFIER:MIT
pragma solidity ^0.8.19;

contract Example {
    uint256 public num;

    function setNum(uint256 _num) public {
        if (_num > 10) {
            num = _num;
        } else {
            num = 0;
        }
    }
}
uint256 public num;

    function setNum(uint256 _num) public {
        if (_num > 10) {
            num = _num;
        } else if (_num > 5) {
            num = _num * 2;
        } else {
            num = 0;
        }
    }
}
