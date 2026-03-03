// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Task_08 {
    // Владелец контракта — адрес, который развернул контракт
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    // Функция возвращает длину динамического массива байтов
    function getDynamicByteArrayLength(bytes calldata data) public pure returns (uint) {
        return data.length;
    }
    
    // Функция возвращает байт по указанному индексу из динамического массива байтов
    function getDynamicByteArrayElement(bytes calldata data, uint index) public pure returns (byte) {
        // Проверка выхода за пределы массива
        require(index < data.length, "Index out of bounds");
        
        return data[index];
    }
}
