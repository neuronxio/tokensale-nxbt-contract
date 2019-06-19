pragma solidity ^0.5.0;

import "./openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "./openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";

contract NeuronxDCoin is ERC20, ERC20Detailed {

    string private _name = "NeuronxD";
    string private _symbol = "NXDD";
    uint8 private _decimals = 2;

    address account = msg.sender;
    uint256 value = 13 * 1e3 * 1e2; // 13 000 total with decimals;

    constructor() ERC20Detailed( _name, _symbol, _decimals) public {
        _mint(account, value);
    }
}