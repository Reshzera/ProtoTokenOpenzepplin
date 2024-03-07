// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

//0xCc32aa48d8CA049ef42947A0D2eb516e1Cb5B352
contract ProtoToken is ERC20 {
    address private _owner;
    uint private _mintAmount = 0;
    uint64 private _mintDelay = 60 * 60 * 24; //1 day in seconds

    mapping(address => uint256) private _nextMint;

    constructor() ERC20("ProtoToken", "PTK") {
        _owner = msg.sender;
        _mint(msg.sender, 1000 * 10 ** 18);
    }

    function mint(address _to) public restricted {
        require(_mintAmount > 0, "Minting is not enabled");
        require(
            block.timestamp > _nextMint[_to],
            "You cannot mint twice in a row."
        );
        _mint(_to, _mintAmount);
        _nextMint[_to] = block.timestamp + _mintDelay;
    }

    function setMintAmount(uint newAmount) public restricted {
        _mintAmount = newAmount;
    }

    function setMintDelay(uint64 newDelay) public restricted {
        _mintDelay = newDelay;
    }

    modifier restricted() {
        require(msg.sender == _owner, "You do not have permission");
        _;
    }
}
