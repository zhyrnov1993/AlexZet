// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

// Создание токена AlexZet (AZT)
contract AlexZet is ERC20, Ownable {
    constructor(uint256 initialSupply) ERC20("AlexZet", "AZT") {
        _mint(msg.sender, initialSupply);
    }
    
    // Функция для владельца контракта, чтобы выпустить токены
    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }
}
