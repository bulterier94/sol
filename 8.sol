// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Task_07 {

    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function getBytes(uint256 _value) public pure returns (bytes memory) {
        return abi.encodePacked(_value);
    }

    // Функция возвращает длину динамического массива байтов
    function getDynamicByteArrayLength(bytes memory _data) public pure returns (uint256) {
        return _data.length;
    }

    function getDynamicByteArrayElement(bytes memory _data, uint256 _index) 
        public 
        pure 
        returns (bytes1) 
    {
        require(_index < _data.length, "Index out of bounds");
        return _data[_index];
    }
}
