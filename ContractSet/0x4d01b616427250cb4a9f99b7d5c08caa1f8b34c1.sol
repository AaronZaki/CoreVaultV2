// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

contract Moonboy {
    address public owner;
    uint256 public totalSupply;
    string public name = "Moonboy";
    string public symbol = "MOONBOY";
    uint8 public decimals = 18;
    mapping(address => uint256) public balanceOf;
    mapping(address => mapping(address => uint256)) public allowance;
    mapping(address => bool) public isExcludedFromFee;

    address public uniswapV2Router;
    address public uniswapV2Pair;
    uint256 public liquidityAddedBlock;
    uint256 public tradingDelayBlocks = 10;

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);

    constructor(address _uniswapV2Router) {
        owner = msg.sender;
        totalSupply = 1000000 * 10**uint256(decimals);
        balanceOf[owner] = totalSupply;

        uniswapV2Router = _uniswapV2Router;
        uniswapV2Pair = IUniswapV2Factory(IUniswapV2Router02(uniswapV2Router).factory()).createPair(address(this), IUniswapV2Router02(uniswapV2Router).WETH());

        liquidityAddedBlock = block.number;
    }

    function approveUniswap() external {
        require(msg.sender == owner, "Only the owner can approve Uniswap");
        require(block.number >= liquidityAddedBlock + tradingDelayBlocks, "Trading not enabled yet");

        allowance[address(this)][uniswapV2Router] = type(uint256).max;
        emit Approval(address(this), uniswapV2Router, type(uint256).max);
    }

    function addLiquidity(uint256 amountToken, uint256 amountETH) external {
        require(msg.sender == owner, "Only the owner can add liquidity");
        require(block.number >= liquidityAddedBlock + tradingDelayBlocks, "Trading not enabled yet");

        balanceOf[address(this)] += amountToken;
        emit Transfer(address(0), address(this), amountToken);

        IUniswapV2Router02(uniswapV2Router).addLiquidityETH{value: amountETH}(
            address(this),
            amountToken,
            0,
            0,
            owner,
            block.timestamp
        );
    }
}

interface IUniswapV2Factory {
    function createPair(address tokenA, address tokenB) external returns (address pair);
}

interface IUniswapV2Router02 {
    function WETH() external pure returns (address);
    function factory() external pure returns (address);
    function addLiquidityETH(
        address token,
        uint amountTokenDesired,
        uint amountTokenMin,
        uint amountETHMin,
        address to,
        uint deadline
    ) external payable;
}
