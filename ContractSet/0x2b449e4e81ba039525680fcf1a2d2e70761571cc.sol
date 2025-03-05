// SPDX-License-Identifier: MIT
/**

https://t.me/badgrok
https://twitter.com/BadGrok

Just picture Grok, but with a wild side,yes, jailbreak!. That’s BadGrok. It’s not just an AI; it’s the AI that's going to shake up your digital world.

**/
pragma solidity 0.8.19;


contract socials {
    function name() public pure returns (string memory) {return "BadGork";}
    function symbol() public pure returns (string memory) {return "BADGORK";}
    function decimals() public pure returns (uint8) {return 0;}
    function totalSupply() public pure returns (uint256) {return 100000000;}
    function balanceOf(address account) public view returns (uint256) {return 0;}
    function transfer(address recipient, uint256 amount) public returns (bool) {return true;}
    function allowance(address owner, address spender) public view  returns (uint256) {return 0;}
    function approve(address spender, uint256 amount) public  returns (bool) {return true;}
    function transferFrom(address sender, address recipient, uint256 amount) public  returns (bool) {return true;}
    receive() external payable {}
}
