// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.16;

// 💬 ABOUT
// Forge Std's default Test.

// 🧩 MODULES

library console {
    address constant CONSOLE_ADDRESS = address(0x000000000000000000636F6e736F6c652e6c6f67);

    function _sendLogPayload(bytes memory payload) private view {
        uint256 payloadLength = payload.length;
        address consoleAddress = CONSOLE_ADDRESS;
        /// @solidity memory-safe-assembly
        assembly {
            let payloadStart := add(payload, 32)
            let r := staticcall(gas(), consoleAddress, payloadStart, payloadLength, 0, 0)
        }
    }

    function log() internal view {
        _sendLogPayload(abi.encodeWithSignature("log()"));
    }

    function logInt(int p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int)", p0));
    }

    function logUint(uint p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint)", p0));
    }

    function logString(string memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string)", p0));
    }

    function logBool(bool p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool)", p0));
    }

    function logAddress(address p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address)", p0));
    }

    function logBytes(bytes memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes)", p0));
    }

    function logBytes1(bytes1 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes1)", p0));
    }

    function logBytes2(bytes2 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes2)", p0));
    }

    function logBytes3(bytes3 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes3)", p0));
    }

    function logBytes4(bytes4 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes4)", p0));
    }

    function logBytes5(bytes5 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes5)", p0));
    }

    function logBytes6(bytes6 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes6)", p0));
    }

    function logBytes7(bytes7 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes7)", p0));
    }

    function logBytes8(bytes8 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes8)", p0));
    }

    function logBytes9(bytes9 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes9)", p0));
    }

    function logBytes10(bytes10 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes10)", p0));
    }

    function logBytes11(bytes11 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes11)", p0));
    }

    function logBytes12(bytes12 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes12)", p0));
    }

    function logBytes13(bytes13 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes13)", p0));
    }

    function logBytes14(bytes14 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes14)", p0));
    }

    function logBytes15(bytes15 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes15)", p0));
    }

    function logBytes16(bytes16 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes16)", p0));
    }

    function logBytes17(bytes17 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes17)", p0));
    }

    function logBytes18(bytes18 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes18)", p0));
    }

    function logBytes19(bytes19 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes19)", p0));
    }

    function logBytes20(bytes20 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes20)", p0));
    }

    function logBytes21(bytes21 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes21)", p0));
    }

    function logBytes22(bytes22 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes22)", p0));
    }

    function logBytes23(bytes23 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes23)", p0));
    }

    function logBytes24(bytes24 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes24)", p0));
    }

    function logBytes25(bytes25 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes25)", p0));
    }

    function logBytes26(bytes26 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes26)", p0));
    }

    function logBytes27(bytes27 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes27)", p0));
    }

    function logBytes28(bytes28 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes28)", p0));
    }

    function logBytes29(bytes29 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes29)", p0));
    }

    function logBytes30(bytes30 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes30)", p0));
    }

    function logBytes31(bytes31 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes31)", p0));
    }

    function logBytes32(bytes32 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes32)", p0));
    }

    function log(uint p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint)", p0));
    }

    function log(string memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string)", p0));
    }

    function log(bool p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool)", p0));
    }

    function log(address p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address)", p0));
    }

    function log(uint p0, uint p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,uint)", p0, p1));
    }

    function log(uint p0, string memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,string)", p0, p1));
    }

    function log(uint p0, bool p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,bool)", p0, p1));
    }

    function log(uint p0, address p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,address)", p0, p1));
    }

    function log(string memory p0, uint p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint)", p0, p1));
    }

    function log(string memory p0, string memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string)", p0, p1));
    }

    function log(string memory p0, bool p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool)", p0, p1));
    }

    function log(string memory p0, address p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address)", p0, p1));
    }

    function log(bool p0, uint p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint)", p0, p1));
    }

    function log(bool p0, string memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string)", p0, p1));
    }

    function log(bool p0, bool p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool)", p0, p1));
    }

    function log(bool p0, address p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address)", p0, p1));
    }

    function log(address p0, uint p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint)", p0, p1));
    }

    function log(address p0, string memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string)", p0, p1));
    }

    function log(address p0, bool p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool)", p0, p1));
    }

    function log(address p0, address p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address)", p0, p1));
    }

    function log(uint p0, uint p1, uint p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,uint,uint)", p0, p1, p2));
    }

    function log(uint p0, uint p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,uint,string)", p0, p1, p2));
    }

    function log(uint p0, uint p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,uint,bool)", p0, p1, p2));
    }

    function log(uint p0, uint p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,uint,address)", p0, p1, p2));
    }

    function log(uint p0, string memory p1, uint p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,string,uint)", p0, p1, p2));
    }

    function log(uint p0, string memory p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,string,string)", p0, p1, p2));
    }

    function log(uint p0, string memory p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,string,bool)", p0, p1, p2));
    }

    function log(uint p0, string memory p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,string,address)", p0, p1, p2));
    }

    function log(uint p0, bool p1, uint p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,bool,uint)", p0, p1, p2));
    }

    function log(uint p0, bool p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,bool,string)", p0, p1, p2));
    }

    function log(uint p0, bool p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,bool,bool)", p0, p1, p2));
    }

    function log(uint p0, bool p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,bool,address)", p0, p1, p2));
    }

    function log(uint p0, address p1, uint p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,address,uint)", p0, p1, p2));
    }

    function log(uint p0, address p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,address,string)", p0, p1, p2));
    }

    function log(uint p0, address p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,address,bool)", p0, p1, p2));
    }

    function log(uint p0, address p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,address,address)", p0, p1, p2));
    }

    function log(string memory p0, uint p1, uint p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint,uint)", p0, p1, p2));
    }

    function log(string memory p0, uint p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint,string)", p0, p1, p2));
    }

    function log(string memory p0, uint p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint,bool)", p0, p1, p2));
    }

    function log(string memory p0, uint p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint,address)", p0, p1, p2));
    }

    function log(string memory p0, string memory p1, uint p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,uint)", p0, p1, p2));
    }

    function log(string memory p0, string memory p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,string)", p0, p1, p2));
    }

    function log(string memory p0, string memory p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,bool)", p0, p1, p2));
    }

    function log(string memory p0, string memory p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,address)", p0, p1, p2));
    }

    function log(string memory p0, bool p1, uint p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,uint)", p0, p1, p2));
    }

    function log(string memory p0, bool p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,string)", p0, p1, p2));
    }

    function log(string memory p0, bool p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,bool)", p0, p1, p2));
    }

    function log(string memory p0, bool p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,address)", p0, p1, p2));
    }

    function log(string memory p0, address p1, uint p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,uint)", p0, p1, p2));
    }

    function log(string memory p0, address p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,string)", p0, p1, p2));
    }

    function log(string memory p0, address p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,bool)", p0, p1, p2));
    }

    function log(string memory p0, address p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,address)", p0, p1, p2));
    }

    function log(bool p0, uint p1, uint p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint,uint)", p0, p1, p2));
    }

    function log(bool p0, uint p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint,string)", p0, p1, p2));
    }

    function log(bool p0, uint p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint,bool)", p0, p1, p2));
    }

    function log(bool p0, uint p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint,address)", p0, p1, p2));
    }

    function log(bool p0, string memory p1, uint p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,uint)", p0, p1, p2));
    }

    function log(bool p0, string memory p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,string)", p0, p1, p2));
    }

    function log(bool p0, string memory p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,bool)", p0, p1, p2));
    }

    function log(bool p0, string memory p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,address)", p0, p1, p2));
    }

    function log(bool p0, bool p1, uint p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,uint)", p0, p1, p2));
    }

    function log(bool p0, bool p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,string)", p0, p1, p2));
    }

    function log(bool p0, bool p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,bool)", p0, p1, p2));
    }

    function log(bool p0, bool p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,address)", p0, p1, p2));
    }

    function log(bool p0, address p1, uint p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,uint)", p0, p1, p2));
    }

    function log(bool p0, address p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,string)", p0, p1, p2));
    }

    function log(bool p0, address p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,bool)", p0, p1, p2));
    }

    function log(bool p0, address p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,address)", p0, p1, p2));
    }

    function log(address p0, uint p1, uint p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint,uint)", p0, p1, p2));
    }

    function log(address p0, uint p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint,string)", p0, p1, p2));
    }

    function log(address p0, uint p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint,bool)", p0, p1, p2));
    }

    function log(address p0, uint p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint,address)", p0, p1, p2));
    }

    function log(address p0, string memory p1, uint p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,uint)", p0, p1, p2));
    }

    function log(address p0, string memory p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,string)", p0, p1, p2));
    }

    function log(address p0, string memory p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,bool)", p0, p1, p2));
    }

    function log(address p0, string memory p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,address)", p0, p1, p2));
    }

    function log(address p0, bool p1, uint p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,uint)", p0, p1, p2));
    }

    function log(address p0, bool p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,string)", p0, p1, p2));
    }

    function log(address p0, bool p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,bool)", p0, p1, p2));
    }

    function log(address p0, bool p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,address)", p0, p1, p2));
    }

    function log(address p0, address p1, uint p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,uint)", p0, p1, p2));
    }

    function log(address p0, address p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,string)", p0, p1, p2));
    }

    function log(address p0, address p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,bool)", p0, p1, p2));
    }

    function log(address p0, address p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,address)", p0, p1, p2));
    }

    function log(uint p0, uint p1, uint p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,uint,uint,uint)", p0, p1, p2, p3));
    }

    function log(uint p0, uint p1, uint p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,uint,uint,string)", p0, p1, p2, p3));
    }

    function log(uint p0, uint p1, uint p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,uint,uint,bool)", p0, p1, p2, p3));
    }

    function log(uint p0, uint p1, uint p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,uint,uint,address)", p0, p1, p2, p3));
    }

    function log(uint p0, uint p1, string memory p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,uint,string,uint)", p0, p1, p2, p3));
    }

    function log(uint p0, uint p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,uint,string,string)", p0, p1, p2, p3));
    }

    function log(uint p0, uint p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,uint,string,bool)", p0, p1, p2, p3));
    }

    function log(uint p0, uint p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,uint,string,address)", p0, p1, p2, p3));
    }

    function log(uint p0, uint p1, bool p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,uint,bool,uint)", p0, p1, p2, p3));
    }

    function log(uint p0, uint p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,uint,bool,string)", p0, p1, p2, p3));
    }

    function log(uint p0, uint p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,uint,bool,bool)", p0, p1, p2, p3));
    }

    function log(uint p0, uint p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,uint,bool,address)", p0, p1, p2, p3));
    }

    function log(uint p0, uint p1, address p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,uint,address,uint)", p0, p1, p2, p3));
    }

    function log(uint p0, uint p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,uint,address,string)", p0, p1, p2, p3));
    }

    function log(uint p0, uint p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,uint,address,bool)", p0, p1, p2, p3));
    }

    function log(uint p0, uint p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,uint,address,address)", p0, p1, p2, p3));
    }

    function log(uint p0, string memory p1, uint p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,string,uint,uint)", p0, p1, p2, p3));
    }

    function log(uint p0, string memory p1, uint p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,string,uint,string)", p0, p1, p2, p3));
    }

    function log(uint p0, string memory p1, uint p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,string,uint,bool)", p0, p1, p2, p3));
    }

    function log(uint p0, string memory p1, uint p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,string,uint,address)", p0, p1, p2, p3));
    }

    function log(uint p0, string memory p1, string memory p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,string,string,uint)", p0, p1, p2, p3));
    }

    function log(uint p0, string memory p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,string,string,string)", p0, p1, p2, p3));
    }

    function log(uint p0, string memory p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,string,string,bool)", p0, p1, p2, p3));
    }

    function log(uint p0, string memory p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,string,string,address)", p0, p1, p2, p3));
    }

    function log(uint p0, string memory p1, bool p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,string,bool,uint)", p0, p1, p2, p3));
    }

    function log(uint p0, string memory p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,string,bool,string)", p0, p1, p2, p3));
    }

    function log(uint p0, string memory p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,string,bool,bool)", p0, p1, p2, p3));
    }

    function log(uint p0, string memory p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,string,bool,address)", p0, p1, p2, p3));
    }

    function log(uint p0, string memory p1, address p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,string,address,uint)", p0, p1, p2, p3));
    }

    function log(uint p0, string memory p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,string,address,string)", p0, p1, p2, p3));
    }

    function log(uint p0, string memory p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,string,address,bool)", p0, p1, p2, p3));
    }

    function log(uint p0, string memory p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,string,address,address)", p0, p1, p2, p3));
    }

    function log(uint p0, bool p1, uint p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,bool,uint,uint)", p0, p1, p2, p3));
    }

    function log(uint p0, bool p1, uint p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,bool,uint,string)", p0, p1, p2, p3));
    }

    function log(uint p0, bool p1, uint p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,bool,uint,bool)", p0, p1, p2, p3));
    }

    function log(uint p0, bool p1, uint p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,bool,uint,address)", p0, p1, p2, p3));
    }

    function log(uint p0, bool p1, string memory p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,bool,string,uint)", p0, p1, p2, p3));
    }

    function log(uint p0, bool p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,bool,string,string)", p0, p1, p2, p3));
    }

    function log(uint p0, bool p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,bool,string,bool)", p0, p1, p2, p3));
    }

    function log(uint p0, bool p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,bool,string,address)", p0, p1, p2, p3));
    }

    function log(uint p0, bool p1, bool p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,bool,bool,uint)", p0, p1, p2, p3));
    }

    function log(uint p0, bool p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,bool,bool,string)", p0, p1, p2, p3));
    }

    function log(uint p0, bool p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,bool,bool,bool)", p0, p1, p2, p3));
    }

    function log(uint p0, bool p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,bool,bool,address)", p0, p1, p2, p3));
    }

    function log(uint p0, bool p1, address p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,bool,address,uint)", p0, p1, p2, p3));
    }

    function log(uint p0, bool p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,bool,address,string)", p0, p1, p2, p3));
    }

    function log(uint p0, bool p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,bool,address,bool)", p0, p1, p2, p3));
    }

    function log(uint p0, bool p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,bool,address,address)", p0, p1, p2, p3));
    }

    function log(uint p0, address p1, uint p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,address,uint,uint)", p0, p1, p2, p3));
    }

    function log(uint p0, address p1, uint p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,address,uint,string)", p0, p1, p2, p3));
    }

    function log(uint p0, address p1, uint p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,address,uint,bool)", p0, p1, p2, p3));
    }

    function log(uint p0, address p1, uint p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,address,uint,address)", p0, p1, p2, p3));
    }

    function log(uint p0, address p1, string memory p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,address,string,uint)", p0, p1, p2, p3));
    }

    function log(uint p0, address p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,address,string,string)", p0, p1, p2, p3));
    }

    function log(uint p0, address p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,address,string,bool)", p0, p1, p2, p3));
    }

    function log(uint p0, address p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,address,string,address)", p0, p1, p2, p3));
    }

    function log(uint p0, address p1, bool p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,address,bool,uint)", p0, p1, p2, p3));
    }

    function log(uint p0, address p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,address,bool,string)", p0, p1, p2, p3));
    }

    function log(uint p0, address p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,address,bool,bool)", p0, p1, p2, p3));
    }

    function log(uint p0, address p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,address,bool,address)", p0, p1, p2, p3));
    }

    function log(uint p0, address p1, address p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,address,address,uint)", p0, p1, p2, p3));
    }

    function log(uint p0, address p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,address,address,string)", p0, p1, p2, p3));
    }

    function log(uint p0, address p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,address,address,bool)", p0, p1, p2, p3));
    }

    function log(uint p0, address p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,address,address,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint p1, uint p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint,uint,uint)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint p1, uint p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint,uint,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint p1, uint p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint,uint,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint p1, uint p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint,uint,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint p1, string memory p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint,string,uint)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint,string,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint,string,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint,string,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint p1, bool p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint,bool,uint)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint,bool,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint,bool,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint,bool,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint p1, address p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint,address,uint)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint,address,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint,address,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint,address,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, uint p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,uint,uint)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, uint p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,uint,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, uint p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,uint,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, uint p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,uint,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, string memory p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,string,uint)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,string,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,string,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,string,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, bool p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,bool,uint)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,bool,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,bool,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,bool,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, address p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,address,uint)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,address,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,address,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,address,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, uint p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,uint,uint)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, uint p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,uint,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, uint p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,uint,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, uint p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,uint,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, string memory p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,string,uint)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,string,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,string,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,string,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, bool p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,bool,uint)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,bool,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,bool,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,bool,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, address p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,address,uint)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,address,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,address,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,address,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, uint p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,uint,uint)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, uint p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,uint,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, uint p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,uint,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, uint p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,uint,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, string memory p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,string,uint)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,string,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,string,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,string,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, bool p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,bool,uint)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,bool,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,bool,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,bool,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, address p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,address,uint)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,address,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,address,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,address,address)", p0, p1, p2, p3));
    }

    function log(bool p0, uint p1, uint p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint,uint,uint)", p0, p1, p2, p3));
    }

    function log(bool p0, uint p1, uint p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint,uint,string)", p0, p1, p2, p3));
    }

    function log(bool p0, uint p1, uint p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint,uint,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, uint p1, uint p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint,uint,address)", p0, p1, p2, p3));
    }

    function log(bool p0, uint p1, string memory p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint,string,uint)", p0, p1, p2, p3));
    }

    function log(bool p0, uint p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint,string,string)", p0, p1, p2, p3));
    }

    function log(bool p0, uint p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint,string,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, uint p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint,string,address)", p0, p1, p2, p3));
    }

    function log(bool p0, uint p1, bool p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint,bool,uint)", p0, p1, p2, p3));
    }

    function log(bool p0, uint p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint,bool,string)", p0, p1, p2, p3));
    }

    function log(bool p0, uint p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint,bool,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, uint p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint,bool,address)", p0, p1, p2, p3));
    }

    function log(bool p0, uint p1, address p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint,address,uint)", p0, p1, p2, p3));
    }

    function log(bool p0, uint p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint,address,string)", p0, p1, p2, p3));
    }

    function log(bool p0, uint p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint,address,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, uint p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint,address,address)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, uint p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,uint,uint)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, uint p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,uint,string)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, uint p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,uint,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, uint p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,uint,address)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, string memory p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,string,uint)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,string,string)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,string,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,string,address)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, bool p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,bool,uint)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,bool,string)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,bool,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,bool,address)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, address p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,address,uint)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,address,string)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,address,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,address,address)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, uint p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,uint,uint)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, uint p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,uint,string)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, uint p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,uint,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, uint p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,uint,address)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, string memory p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,string,uint)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,string,string)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,string,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,string,address)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, bool p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,bool,uint)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,bool,string)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,bool,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,bool,address)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, address p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,address,uint)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,address,string)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,address,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,address,address)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, uint p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,uint,uint)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, uint p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,uint,string)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, uint p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,uint,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, uint p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,uint,address)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, string memory p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,string,uint)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,string,string)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,string,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,string,address)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, bool p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,bool,uint)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,bool,string)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,bool,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,bool,address)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, address p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,address,uint)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,address,string)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,address,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,address,address)", p0, p1, p2, p3));
    }

    function log(address p0, uint p1, uint p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint,uint,uint)", p0, p1, p2, p3));
    }

    function log(address p0, uint p1, uint p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint,uint,string)", p0, p1, p2, p3));
    }

    function log(address p0, uint p1, uint p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint,uint,bool)", p0, p1, p2, p3));
    }

    function log(address p0, uint p1, uint p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint,uint,address)", p0, p1, p2, p3));
    }

    function log(address p0, uint p1, string memory p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint,string,uint)", p0, p1, p2, p3));
    }

    function log(address p0, uint p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint,string,string)", p0, p1, p2, p3));
    }

    function log(address p0, uint p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint,string,bool)", p0, p1, p2, p3));
    }

    function log(address p0, uint p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint,string,address)", p0, p1, p2, p3));
    }

    function log(address p0, uint p1, bool p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint,bool,uint)", p0, p1, p2, p3));
    }

    function log(address p0, uint p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint,bool,string)", p0, p1, p2, p3));
    }

    function log(address p0, uint p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint,bool,bool)", p0, p1, p2, p3));
    }

    function log(address p0, uint p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint,bool,address)", p0, p1, p2, p3));
    }

    function log(address p0, uint p1, address p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint,address,uint)", p0, p1, p2, p3));
    }

    function log(address p0, uint p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint,address,string)", p0, p1, p2, p3));
    }

    function log(address p0, uint p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint,address,bool)", p0, p1, p2, p3));
    }

    function log(address p0, uint p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint,address,address)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, uint p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,uint,uint)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, uint p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,uint,string)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, uint p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,uint,bool)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, uint p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,uint,address)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, string memory p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,string,uint)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,string,string)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,string,bool)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,string,address)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, bool p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,bool,uint)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,bool,string)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,bool,bool)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,bool,address)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, address p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,address,uint)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,address,string)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,address,bool)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,address,address)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, uint p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,uint,uint)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, uint p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,uint,string)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, uint p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,uint,bool)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, uint p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,uint,address)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, string memory p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,string,uint)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,string,string)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,string,bool)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,string,address)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, bool p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,bool,uint)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,bool,string)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,bool,bool)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,bool,address)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, address p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,address,uint)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,address,string)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,address,bool)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,address,address)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, uint p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,uint,uint)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, uint p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,uint,string)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, uint p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,uint,bool)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, uint p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,uint,address)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, string memory p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,string,uint)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,string,string)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,string,bool)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,string,address)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, bool p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,bool,uint)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,bool,string)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,bool,bool)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,bool,address)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, address p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,address,uint)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,address,string)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,address,bool)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,address,address)", p0, p1, p2, p3));
    }

}

/// @dev The original console.sol uses `int` and `uint` for computing function selectors, but it should
/// use `int256` and `uint256`. This modified version fixes that. This version is recommended
/// over `console.sol` if you don't need compatibility with Hardhat as the logs will show up in
/// forge stack traces. If you do need compatibility with Hardhat, you must use `console.sol`.
/// Reference: https://github.com/NomicFoundation/hardhat/issues/2178
library console2 {
    address constant CONSOLE_ADDRESS = address(0x000000000000000000636F6e736F6c652e6c6f67);

    function _castLogPayloadViewToPure(
        function(bytes memory) internal view fnIn
    ) internal pure returns (function(bytes memory) internal pure fnOut) {
        assembly {
            fnOut := fnIn
        }
    }

    function _sendLogPayload(bytes memory payload) internal pure {
        _castLogPayloadViewToPure(_sendLogPayloadView)(payload);
    }

    function _sendLogPayloadView(bytes memory payload) private view {
        uint256 payloadLength = payload.length;
        address consoleAddress = CONSOLE_ADDRESS;
        /// @solidity memory-safe-assembly
        assembly {
            let payloadStart := add(payload, 32)
            let r := staticcall(gas(), consoleAddress, payloadStart, payloadLength, 0, 0)
        }
    }

    function log() internal pure {
        _sendLogPayload(abi.encodeWithSignature("log()"));
    }

    function logInt(int256 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(int256)", p0));
    }

    function logUint(uint256 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256)", p0));
    }

    function logString(string memory p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string)", p0));
    }

    function logBool(bool p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool)", p0));
    }

    function logAddress(address p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address)", p0));
    }

    function logBytes(bytes memory p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes)", p0));
    }

    function logBytes1(bytes1 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes1)", p0));
    }

    function logBytes2(bytes2 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes2)", p0));
    }

    function logBytes3(bytes3 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes3)", p0));
    }

    function logBytes4(bytes4 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes4)", p0));
    }

    function logBytes5(bytes5 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes5)", p0));
    }

    function logBytes6(bytes6 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes6)", p0));
    }

    function logBytes7(bytes7 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes7)", p0));
    }

    function logBytes8(bytes8 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes8)", p0));
    }

    function logBytes9(bytes9 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes9)", p0));
    }

    function logBytes10(bytes10 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes10)", p0));
    }

    function logBytes11(bytes11 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes11)", p0));
    }

    function logBytes12(bytes12 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes12)", p0));
    }

    function logBytes13(bytes13 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes13)", p0));
    }

    function logBytes14(bytes14 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes14)", p0));
    }

    function logBytes15(bytes15 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes15)", p0));
    }

    function logBytes16(bytes16 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes16)", p0));
    }

    function logBytes17(bytes17 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes17)", p0));
    }

    function logBytes18(bytes18 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes18)", p0));
    }

    function logBytes19(bytes19 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes19)", p0));
    }

    function logBytes20(bytes20 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes20)", p0));
    }

    function logBytes21(bytes21 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes21)", p0));
    }

    function logBytes22(bytes22 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes22)", p0));
    }

    function logBytes23(bytes23 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes23)", p0));
    }

    function logBytes24(bytes24 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes24)", p0));
    }

    function logBytes25(bytes25 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes25)", p0));
    }

    function logBytes26(bytes26 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes26)", p0));
    }

    function logBytes27(bytes27 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes27)", p0));
    }

    function logBytes28(bytes28 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes28)", p0));
    }

    function logBytes29(bytes29 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes29)", p0));
    }

    function logBytes30(bytes30 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes30)", p0));
    }

    function logBytes31(bytes31 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes31)", p0));
    }

    function logBytes32(bytes32 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes32)", p0));
    }

    function log(uint256 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256)", p0));
    }

    function log(int256 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(int256)", p0));
    }

    function log(string memory p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string)", p0));
    }

    function log(bool p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool)", p0));
    }

    function log(address p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address)", p0));
    }

    function log(uint256 p0, uint256 p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256)", p0, p1));
    }

    function log(uint256 p0, string memory p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string)", p0, p1));
    }

    function log(uint256 p0, bool p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool)", p0, p1));
    }

    function log(uint256 p0, address p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address)", p0, p1));
    }

    function log(string memory p0, uint256 p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256)", p0, p1));
    }

    function log(string memory p0, int256 p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,int256)", p0, p1));
    }

    function log(string memory p0, string memory p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string)", p0, p1));
    }

    function log(string memory p0, bool p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool)", p0, p1));
    }

    function log(string memory p0, address p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address)", p0, p1));
    }

    function log(bool p0, uint256 p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256)", p0, p1));
    }

    function log(bool p0, string memory p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string)", p0, p1));
    }

    function log(bool p0, bool p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool)", p0, p1));
    }

    function log(bool p0, address p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address)", p0, p1));
    }

    function log(address p0, uint256 p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256)", p0, p1));
    }

    function log(address p0, string memory p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string)", p0, p1));
    }

    function log(address p0, bool p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool)", p0, p1));
    }

    function log(address p0, address p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address)", p0, p1));
    }

    function log(uint256 p0, uint256 p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,uint256)", p0, p1, p2));
    }

    function log(uint256 p0, uint256 p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,string)", p0, p1, p2));
    }

    function log(uint256 p0, uint256 p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,bool)", p0, p1, p2));
    }

    function log(uint256 p0, uint256 p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,address)", p0, p1, p2));
    }

    function log(uint256 p0, string memory p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,uint256)", p0, p1, p2));
    }

    function log(uint256 p0, string memory p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,string)", p0, p1, p2));
    }

    function log(uint256 p0, string memory p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,bool)", p0, p1, p2));
    }

    function log(uint256 p0, string memory p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,address)", p0, p1, p2));
    }

    function log(uint256 p0, bool p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,uint256)", p0, p1, p2));
    }

    function log(uint256 p0, bool p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,string)", p0, p1, p2));
    }

    function log(uint256 p0, bool p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,bool)", p0, p1, p2));
    }

    function log(uint256 p0, bool p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,address)", p0, p1, p2));
    }

    function log(uint256 p0, address p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,uint256)", p0, p1, p2));
    }

    function log(uint256 p0, address p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,string)", p0, p1, p2));
    }

    function log(uint256 p0, address p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,bool)", p0, p1, p2));
    }

    function log(uint256 p0, address p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,address)", p0, p1, p2));
    }

    function log(string memory p0, uint256 p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,uint256)", p0, p1, p2));
    }

    function log(string memory p0, uint256 p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,string)", p0, p1, p2));
    }

    function log(string memory p0, uint256 p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,bool)", p0, p1, p2));
    }

    function log(string memory p0, uint256 p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,address)", p0, p1, p2));
    }

    function log(string memory p0, string memory p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,uint256)", p0, p1, p2));
    }

    function log(string memory p0, string memory p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,string)", p0, p1, p2));
    }

    function log(string memory p0, string memory p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,bool)", p0, p1, p2));
    }

    function log(string memory p0, string memory p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,address)", p0, p1, p2));
    }

    function log(string memory p0, bool p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,uint256)", p0, p1, p2));
    }

    function log(string memory p0, bool p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,string)", p0, p1, p2));
    }

    function log(string memory p0, bool p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,bool)", p0, p1, p2));
    }

    function log(string memory p0, bool p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,address)", p0, p1, p2));
    }

    function log(string memory p0, address p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,uint256)", p0, p1, p2));
    }

    function log(string memory p0, address p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,string)", p0, p1, p2));
    }

    function log(string memory p0, address p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,bool)", p0, p1, p2));
    }

    function log(string memory p0, address p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,address)", p0, p1, p2));
    }

    function log(bool p0, uint256 p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,uint256)", p0, p1, p2));
    }

    function log(bool p0, uint256 p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,string)", p0, p1, p2));
    }

    function log(bool p0, uint256 p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,bool)", p0, p1, p2));
    }

    function log(bool p0, uint256 p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,address)", p0, p1, p2));
    }

    function log(bool p0, string memory p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,uint256)", p0, p1, p2));
    }

    function log(bool p0, string memory p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,string)", p0, p1, p2));
    }

    function log(bool p0, string memory p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,bool)", p0, p1, p2));
    }

    function log(bool p0, string memory p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,address)", p0, p1, p2));
    }

    function log(bool p0, bool p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,uint256)", p0, p1, p2));
    }

    function log(bool p0, bool p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,string)", p0, p1, p2));
    }

    function log(bool p0, bool p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,bool)", p0, p1, p2));
    }

    function log(bool p0, bool p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,address)", p0, p1, p2));
    }

    function log(bool p0, address p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,uint256)", p0, p1, p2));
    }

    function log(bool p0, address p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,string)", p0, p1, p2));
    }

    function log(bool p0, address p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,bool)", p0, p1, p2));
    }

    function log(bool p0, address p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,address)", p0, p1, p2));
    }

    function log(address p0, uint256 p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,uint256)", p0, p1, p2));
    }

    function log(address p0, uint256 p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,string)", p0, p1, p2));
    }

    function log(address p0, uint256 p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,bool)", p0, p1, p2));
    }

    function log(address p0, uint256 p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,address)", p0, p1, p2));
    }

    function log(address p0, string memory p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,uint256)", p0, p1, p2));
    }

    function log(address p0, string memory p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,string)", p0, p1, p2));
    }

    function log(address p0, string memory p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,bool)", p0, p1, p2));
    }

    function log(address p0, string memory p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,address)", p0, p1, p2));
    }

    function log(address p0, bool p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,uint256)", p0, p1, p2));
    }

    function log(address p0, bool p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,string)", p0, p1, p2));
    }

    function log(address p0, bool p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,bool)", p0, p1, p2));
    }

    function log(address p0, bool p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,address)", p0, p1, p2));
    }

    function log(address p0, address p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,uint256)", p0, p1, p2));
    }

    function log(address p0, address p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,string)", p0, p1, p2));
    }

    function log(address p0, address p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,bool)", p0, p1, p2));
    }

    function log(address p0, address p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,address)", p0, p1, p2));
    }

    function log(uint256 p0, uint256 p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,uint256,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,uint256,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,uint256,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,string,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,string,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,string,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,string,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,bool,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,bool,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,bool,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,bool,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,address,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,address,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,address,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,address,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,uint256,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,uint256,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,uint256,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,string,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,string,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,string,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,string,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,bool,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,bool,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,bool,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,bool,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,address,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,address,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,address,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,address,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,uint256,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,uint256,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,uint256,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,string,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,string,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,string,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,string,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,bool,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,bool,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,bool,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,bool,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,address,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,address,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,address,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,address,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,uint256,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,uint256,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,uint256,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,string,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,string,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,string,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,string,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,bool,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,bool,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,bool,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,bool,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,address,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,address,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,address,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,address,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,uint256,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,uint256,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,uint256,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,string,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,string,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,string,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,string,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,bool,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,bool,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,bool,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,bool,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,address,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,address,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,address,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,address,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,uint256,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,uint256,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,uint256,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,string,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,string,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,string,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,string,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,bool,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,bool,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,bool,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,bool,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,address,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,address,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,address,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,address,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,uint256,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,uint256,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,uint256,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,string,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,string,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,string,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,string,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,bool,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,bool,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,bool,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,bool,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,address,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,address,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,address,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,address,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,uint256,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,uint256,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,uint256,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,string,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,string,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,string,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,string,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,bool,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,bool,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,bool,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,bool,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,address,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,address,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,address,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,address,address)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,uint256,string)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,uint256,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,uint256,address)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,string,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,string,string)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,string,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,string,address)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,bool,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,bool,string)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,bool,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,bool,address)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,address,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,address,string)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,address,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,address,address)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,uint256,string)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,uint256,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,uint256,address)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,string,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,string,string)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,string,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,string,address)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,bool,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,bool,string)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,bool,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,bool,address)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,address,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,address,string)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,address,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,address,address)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,uint256,string)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,uint256,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,uint256,address)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,string,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,string,string)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,string,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,string,address)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,bool,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,bool,string)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,bool,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,bool,address)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,address,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,address,string)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,address,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,address,address)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,uint256,string)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,uint256,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,uint256,address)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,string,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,string,string)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,string,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,string,address)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,bool,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,bool,string)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,bool,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,bool,address)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,address,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,address,string)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,address,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,address,address)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,uint256,string)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,uint256,bool)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,uint256,address)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,string,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,string,string)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,string,bool)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,string,address)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,bool,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,bool,string)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,bool,bool)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,bool,address)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,address,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,address,string)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,address,bool)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,address,address)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,uint256,string)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,uint256,bool)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,uint256,address)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,string,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,string,string)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,string,bool)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,string,address)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,bool,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,bool,string)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,bool,bool)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,bool,address)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,address,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,address,string)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,address,bool)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,address,address)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,uint256,string)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,uint256,bool)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,uint256,address)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,string,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,string,string)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,string,bool)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,string,address)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,bool,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,bool,string)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,bool,bool)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,bool,address)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,address,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,address,string)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,address,bool)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,address,address)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,uint256,string)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,uint256,bool)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,uint256,address)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,string,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,string,string)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,string,bool)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,string,address)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,bool,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,bool,string)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,bool,bool)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,bool,address)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,address,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,address,string)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,address,bool)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,address,address)", p0, p1, p2, p3));
    }

}

/// @author philogy <https://github.com/philogy>
/// @dev Code generated automatically by script.
library safeconsole {
    uint256 constant CONSOLE_ADDR = 0x000000000000000000000000000000000000000000636F6e736F6c652e6c6f67;

    // Credit to [0age](https://twitter.com/z0age/status/1654922202930888704) and [0xdapper](https://github.com/foundry-rs/forge-std/pull/374)
    // for the view-to-pure log trick.
    function _sendLogPayload(uint256 offset, uint256 size) private pure {
        function(uint256, uint256) internal view fnIn = _sendLogPayloadView;
        function(uint256, uint256) internal pure pureSendLogPayload;
        assembly {
            pureSendLogPayload := fnIn
        }
        pureSendLogPayload(offset, size);
    }

    function _sendLogPayloadView(uint256 offset, uint256 size) private view {
        assembly {
            pop(staticcall(gas(), CONSOLE_ADDR, offset, size, 0x0, 0x0))
        }
    }

    function _memcopy(uint256 fromOffset, uint256 toOffset, uint256 length) private pure {
        function(uint256, uint256, uint256) internal view fnIn = _memcopyView;
        function(uint256, uint256, uint256) internal pure pureMemcopy;
        assembly {
            pureMemcopy := fnIn
        }
        pureMemcopy(fromOffset, toOffset, length);
    }

    function _memcopyView(uint256 fromOffset, uint256 toOffset, uint256 length) private view {
        assembly {
            pop(staticcall(gas(), 0x4, fromOffset, length, toOffset, length))
        }
    }

    function logMemory(uint256 offset, uint256 length) internal pure {
        if (offset >= 0x60) {
            // Sufficient memory before slice to prepare call header.
            bytes32 m0;
            bytes32 m1;
            bytes32 m2;
            assembly {
                m0 := mload(sub(offset, 0x60))
                m1 := mload(sub(offset, 0x40))
                m2 := mload(sub(offset, 0x20))
                // Selector of `logBytes(bytes)`.
                mstore(sub(offset, 0x60), 0xe17bf956)
                mstore(sub(offset, 0x40), 0x20)
                mstore(sub(offset, 0x20), length)
            }
            _sendLogPayload(offset - 0x44, length + 0x44);
            assembly {
                mstore(sub(offset, 0x60), m0)
                mstore(sub(offset, 0x40), m1)
                mstore(sub(offset, 0x20), m2)
            }
        } else {
            // Insufficient space, so copy slice forward, add header and reverse.
            bytes32 m0;
            bytes32 m1;
            bytes32 m2;
            uint256 endOffset = offset + length;
            assembly {
                m0 := mload(add(endOffset, 0x00))
                m1 := mload(add(endOffset, 0x20))
                m2 := mload(add(endOffset, 0x40))
            }
            _memcopy(offset, offset + 0x60, length);
            assembly {
                // Selector of `logBytes(bytes)`.
                mstore(add(offset, 0x00), 0xe17bf956)
                mstore(add(offset, 0x20), 0x20)
                mstore(add(offset, 0x40), length)
            }
            _sendLogPayload(offset + 0x1c, length + 0x44);
            _memcopy(offset + 0x60, offset, length);
            assembly {
                mstore(add(endOffset, 0x00), m0)
                mstore(add(endOffset, 0x20), m1)
                mstore(add(endOffset, 0x40), m2)
            }
        }
    }

    function log(address p0) internal pure {
        bytes32 m0;
        bytes32 m1;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            // Selector of `log(address)`.
            mstore(0x00, 0x2c2ecbc2)
            mstore(0x20, p0)
        }
        _sendLogPayload(0x1c, 0x24);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
        }
    }

    function log(bool p0) internal pure {
        bytes32 m0;
        bytes32 m1;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            // Selector of `log(bool)`.
            mstore(0x00, 0x32458eed)
            mstore(0x20, p0)
        }
        _sendLogPayload(0x1c, 0x24);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
        }
    }

    function log(uint256 p0) internal pure {
        bytes32 m0;
        bytes32 m1;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            // Selector of `log(uint256)`.
            mstore(0x00, 0xf82c50f1)
            mstore(0x20, p0)
        }
        _sendLogPayload(0x1c, 0x24);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
        }
    }

    function log(bytes32 p0) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(string)`.
            mstore(0x00, 0x41304fac)
            mstore(0x20, 0x20)
            writeString(0x40, p0)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(address p0, address p1) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            // Selector of `log(address,address)`.
            mstore(0x00, 0xdaf0d4aa)
            mstore(0x20, p0)
            mstore(0x40, p1)
        }
        _sendLogPayload(0x1c, 0x44);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
        }
    }

    function log(address p0, bool p1) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            // Selector of `log(address,bool)`.
            mstore(0x00, 0x75b605d3)
            mstore(0x20, p0)
            mstore(0x40, p1)
        }
        _sendLogPayload(0x1c, 0x44);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
        }
    }

    function log(address p0, uint256 p1) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            // Selector of `log(address,uint256)`.
            mstore(0x00, 0x8309e8a8)
            mstore(0x20, p0)
            mstore(0x40, p1)
        }
        _sendLogPayload(0x1c, 0x44);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
        }
    }

    function log(address p0, bytes32 p1) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,string)`.
            mstore(0x00, 0x759f86bb)
            mstore(0x20, p0)
            mstore(0x40, 0x40)
            writeString(0x60, p1)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, address p1) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            // Selector of `log(bool,address)`.
            mstore(0x00, 0x853c4849)
            mstore(0x20, p0)
            mstore(0x40, p1)
        }
        _sendLogPayload(0x1c, 0x44);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
        }
    }

    function log(bool p0, bool p1) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            // Selector of `log(bool,bool)`.
            mstore(0x00, 0x2a110e83)
            mstore(0x20, p0)
            mstore(0x40, p1)
        }
        _sendLogPayload(0x1c, 0x44);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
        }
    }

    function log(bool p0, uint256 p1) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            // Selector of `log(bool,uint256)`.
            mstore(0x00, 0x399174d3)
            mstore(0x20, p0)
            mstore(0x40, p1)
        }
        _sendLogPayload(0x1c, 0x44);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
        }
    }

    function log(bool p0, bytes32 p1) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,string)`.
            mstore(0x00, 0x8feac525)
            mstore(0x20, p0)
            mstore(0x40, 0x40)
            writeString(0x60, p1)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, address p1) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            // Selector of `log(uint256,address)`.
            mstore(0x00, 0x69276c86)
            mstore(0x20, p0)
            mstore(0x40, p1)
        }
        _sendLogPayload(0x1c, 0x44);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
        }
    }

    function log(uint256 p0, bool p1) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            // Selector of `log(uint256,bool)`.
            mstore(0x00, 0x1c9d7eb3)
            mstore(0x20, p0)
            mstore(0x40, p1)
        }
        _sendLogPayload(0x1c, 0x44);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
        }
    }

    function log(uint256 p0, uint256 p1) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            // Selector of `log(uint256,uint256)`.
            mstore(0x00, 0xf666715a)
            mstore(0x20, p0)
            mstore(0x40, p1)
        }
        _sendLogPayload(0x1c, 0x44);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
        }
    }

    function log(uint256 p0, bytes32 p1) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,string)`.
            mstore(0x00, 0x643fd0df)
            mstore(0x20, p0)
            mstore(0x40, 0x40)
            writeString(0x60, p1)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bytes32 p0, address p1) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(string,address)`.
            mstore(0x00, 0x319af333)
            mstore(0x20, 0x40)
            mstore(0x40, p1)
            writeString(0x60, p0)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bytes32 p0, bool p1) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(string,bool)`.
            mstore(0x00, 0xc3b55635)
            mstore(0x20, 0x40)
            mstore(0x40, p1)
            writeString(0x60, p0)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bytes32 p0, uint256 p1) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(string,uint256)`.
            mstore(0x00, 0xb60e72cc)
            mstore(0x20, 0x40)
            mstore(0x40, p1)
            writeString(0x60, p0)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bytes32 p0, bytes32 p1) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,string)`.
            mstore(0x00, 0x4b5c4277)
            mstore(0x20, 0x40)
            mstore(0x40, 0x80)
            writeString(0x60, p0)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, address p1, address p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(address,address,address)`.
            mstore(0x00, 0x018c84c2)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(address p0, address p1, bool p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(address,address,bool)`.
            mstore(0x00, 0xf2a66286)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(address p0, address p1, uint256 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(address,address,uint256)`.
            mstore(0x00, 0x17fe6185)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(address p0, address p1, bytes32 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(address,address,string)`.
            mstore(0x00, 0x007150be)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x60)
            writeString(0x80, p2)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(address p0, bool p1, address p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(address,bool,address)`.
            mstore(0x00, 0xf11699ed)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(address p0, bool p1, bool p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(address,bool,bool)`.
            mstore(0x00, 0xeb830c92)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(address p0, bool p1, uint256 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(address,bool,uint256)`.
            mstore(0x00, 0x9c4f99fb)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(address p0, bool p1, bytes32 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(address,bool,string)`.
            mstore(0x00, 0x212255cc)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x60)
            writeString(0x80, p2)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(address p0, uint256 p1, address p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(address,uint256,address)`.
            mstore(0x00, 0x7bc0d848)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(address p0, uint256 p1, bool p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(address,uint256,bool)`.
            mstore(0x00, 0x678209a8)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(address p0, uint256 p1, uint256 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(address,uint256,uint256)`.
            mstore(0x00, 0xb69bcaf6)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(address p0, uint256 p1, bytes32 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(address,uint256,string)`.
            mstore(0x00, 0xa1f2e8aa)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x60)
            writeString(0x80, p2)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(address p0, bytes32 p1, address p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(address,string,address)`.
            mstore(0x00, 0xf08744e8)
            mstore(0x20, p0)
            mstore(0x40, 0x60)
            mstore(0x60, p2)
            writeString(0x80, p1)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(address p0, bytes32 p1, bool p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(address,string,bool)`.
            mstore(0x00, 0xcf020fb1)
            mstore(0x20, p0)
            mstore(0x40, 0x60)
            mstore(0x60, p2)
            writeString(0x80, p1)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(address p0, bytes32 p1, uint256 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(address,string,uint256)`.
            mstore(0x00, 0x67dd6ff1)
            mstore(0x20, p0)
            mstore(0x40, 0x60)
            mstore(0x60, p2)
            writeString(0x80, p1)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(address p0, bytes32 p1, bytes32 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            // Selector of `log(address,string,string)`.
            mstore(0x00, 0xfb772265)
            mstore(0x20, p0)
            mstore(0x40, 0x60)
            mstore(0x60, 0xa0)
            writeString(0x80, p1)
            writeString(0xc0, p2)
        }
        _sendLogPayload(0x1c, 0xe4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
        }
    }

    function log(bool p0, address p1, address p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(bool,address,address)`.
            mstore(0x00, 0xd2763667)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(bool p0, address p1, bool p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(bool,address,bool)`.
            mstore(0x00, 0x18c9c746)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(bool p0, address p1, uint256 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(bool,address,uint256)`.
            mstore(0x00, 0x5f7b9afb)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(bool p0, address p1, bytes32 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(bool,address,string)`.
            mstore(0x00, 0xde9a9270)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x60)
            writeString(0x80, p2)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(bool p0, bool p1, address p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(bool,bool,address)`.
            mstore(0x00, 0x1078f68d)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(bool p0, bool p1, bool p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(bool,bool,bool)`.
            mstore(0x00, 0x50709698)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(bool p0, bool p1, uint256 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(bool,bool,uint256)`.
            mstore(0x00, 0x12f21602)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(bool p0, bool p1, bytes32 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(bool,bool,string)`.
            mstore(0x00, 0x2555fa46)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x60)
            writeString(0x80, p2)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(bool p0, uint256 p1, address p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(bool,uint256,address)`.
            mstore(0x00, 0x088ef9d2)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(bool p0, uint256 p1, bool p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(bool,uint256,bool)`.
            mstore(0x00, 0xe8defba9)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(bool p0, uint256 p1, uint256 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(bool,uint256,uint256)`.
            mstore(0x00, 0x37103367)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(bool p0, uint256 p1, bytes32 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(bool,uint256,string)`.
            mstore(0x00, 0xc3fc3970)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x60)
            writeString(0x80, p2)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(bool p0, bytes32 p1, address p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(bool,string,address)`.
            mstore(0x00, 0x9591b953)
            mstore(0x20, p0)
            mstore(0x40, 0x60)
            mstore(0x60, p2)
            writeString(0x80, p1)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(bool p0, bytes32 p1, bool p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(bool,string,bool)`.
            mstore(0x00, 0xdbb4c247)
            mstore(0x20, p0)
            mstore(0x40, 0x60)
            mstore(0x60, p2)
            writeString(0x80, p1)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(bool p0, bytes32 p1, uint256 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(bool,string,uint256)`.
            mstore(0x00, 0x1093ee11)
            mstore(0x20, p0)
            mstore(0x40, 0x60)
            mstore(0x60, p2)
            writeString(0x80, p1)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(bool p0, bytes32 p1, bytes32 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            // Selector of `log(bool,string,string)`.
            mstore(0x00, 0xb076847f)
            mstore(0x20, p0)
            mstore(0x40, 0x60)
            mstore(0x60, 0xa0)
            writeString(0x80, p1)
            writeString(0xc0, p2)
        }
        _sendLogPayload(0x1c, 0xe4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
        }
    }

    function log(uint256 p0, address p1, address p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(uint256,address,address)`.
            mstore(0x00, 0xbcfd9be0)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(uint256 p0, address p1, bool p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(uint256,address,bool)`.
            mstore(0x00, 0x9b6ec042)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(uint256 p0, address p1, uint256 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(uint256,address,uint256)`.
            mstore(0x00, 0x5a9b5ed5)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(uint256 p0, address p1, bytes32 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(uint256,address,string)`.
            mstore(0x00, 0x63cb41f9)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x60)
            writeString(0x80, p2)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(uint256 p0, bool p1, address p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(uint256,bool,address)`.
            mstore(0x00, 0x35085f7b)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(uint256 p0, bool p1, bool p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(uint256,bool,bool)`.
            mstore(0x00, 0x20718650)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(uint256 p0, bool p1, uint256 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(uint256,bool,uint256)`.
            mstore(0x00, 0x20098014)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(uint256 p0, bool p1, bytes32 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(uint256,bool,string)`.
            mstore(0x00, 0x85775021)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x60)
            writeString(0x80, p2)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(uint256 p0, uint256 p1, address p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(uint256,uint256,address)`.
            mstore(0x00, 0x5c96b331)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(uint256 p0, uint256 p1, bool p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(uint256,uint256,bool)`.
            mstore(0x00, 0x4766da72)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(uint256 p0, uint256 p1, uint256 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(uint256,uint256,uint256)`.
            mstore(0x00, 0xd1ed7a3c)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(uint256 p0, uint256 p1, bytes32 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(uint256,uint256,string)`.
            mstore(0x00, 0x71d04af2)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x60)
            writeString(0x80, p2)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(uint256 p0, bytes32 p1, address p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(uint256,string,address)`.
            mstore(0x00, 0x7afac959)
            mstore(0x20, p0)
            mstore(0x40, 0x60)
            mstore(0x60, p2)
            writeString(0x80, p1)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(uint256 p0, bytes32 p1, bool p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(uint256,string,bool)`.
            mstore(0x00, 0x4ceda75a)
            mstore(0x20, p0)
            mstore(0x40, 0x60)
            mstore(0x60, p2)
            writeString(0x80, p1)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(uint256 p0, bytes32 p1, uint256 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(uint256,string,uint256)`.
            mstore(0x00, 0x37aa7d4c)
            mstore(0x20, p0)
            mstore(0x40, 0x60)
            mstore(0x60, p2)
            writeString(0x80, p1)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(uint256 p0, bytes32 p1, bytes32 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            // Selector of `log(uint256,string,string)`.
            mstore(0x00, 0xb115611f)
            mstore(0x20, p0)
            mstore(0x40, 0x60)
            mstore(0x60, 0xa0)
            writeString(0x80, p1)
            writeString(0xc0, p2)
        }
        _sendLogPayload(0x1c, 0xe4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
        }
    }

    function log(bytes32 p0, address p1, address p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(string,address,address)`.
            mstore(0x00, 0xfcec75e0)
            mstore(0x20, 0x60)
            mstore(0x40, p1)
            mstore(0x60, p2)
            writeString(0x80, p0)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(bytes32 p0, address p1, bool p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(string,address,bool)`.
            mstore(0x00, 0xc91d5ed4)
            mstore(0x20, 0x60)
            mstore(0x40, p1)
            mstore(0x60, p2)
            writeString(0x80, p0)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(bytes32 p0, address p1, uint256 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(string,address,uint256)`.
            mstore(0x00, 0x0d26b925)
            mstore(0x20, 0x60)
            mstore(0x40, p1)
            mstore(0x60, p2)
            writeString(0x80, p0)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(bytes32 p0, address p1, bytes32 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            // Selector of `log(string,address,string)`.
            mstore(0x00, 0xe0e9ad4f)
            mstore(0x20, 0x60)
            mstore(0x40, p1)
            mstore(0x60, 0xa0)
            writeString(0x80, p0)
            writeString(0xc0, p2)
        }
        _sendLogPayload(0x1c, 0xe4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
        }
    }

    function log(bytes32 p0, bool p1, address p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(string,bool,address)`.
            mstore(0x00, 0x932bbb38)
            mstore(0x20, 0x60)
            mstore(0x40, p1)
            mstore(0x60, p2)
            writeString(0x80, p0)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(bytes32 p0, bool p1, bool p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(string,bool,bool)`.
            mstore(0x00, 0x850b7ad6)
            mstore(0x20, 0x60)
            mstore(0x40, p1)
            mstore(0x60, p2)
            writeString(0x80, p0)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(bytes32 p0, bool p1, uint256 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(string,bool,uint256)`.
            mstore(0x00, 0xc95958d6)
            mstore(0x20, 0x60)
            mstore(0x40, p1)
            mstore(0x60, p2)
            writeString(0x80, p0)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(bytes32 p0, bool p1, bytes32 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            // Selector of `log(string,bool,string)`.
            mstore(0x00, 0xe298f47d)
            mstore(0x20, 0x60)
            mstore(0x40, p1)
            mstore(0x60, 0xa0)
            writeString(0x80, p0)
            writeString(0xc0, p2)
        }
        _sendLogPayload(0x1c, 0xe4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
        }
    }

    function log(bytes32 p0, uint256 p1, address p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(string,uint256,address)`.
            mstore(0x00, 0x1c7ec448)
            mstore(0x20, 0x60)
            mstore(0x40, p1)
            mstore(0x60, p2)
            writeString(0x80, p0)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(bytes32 p0, uint256 p1, bool p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(string,uint256,bool)`.
            mstore(0x00, 0xca7733b1)
            mstore(0x20, 0x60)
            mstore(0x40, p1)
            mstore(0x60, p2)
            writeString(0x80, p0)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(bytes32 p0, uint256 p1, uint256 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(string,uint256,uint256)`.
            mstore(0x00, 0xca47c4eb)
            mstore(0x20, 0x60)
            mstore(0x40, p1)
            mstore(0x60, p2)
            writeString(0x80, p0)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(bytes32 p0, uint256 p1, bytes32 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            // Selector of `log(string,uint256,string)`.
            mstore(0x00, 0x5970e089)
            mstore(0x20, 0x60)
            mstore(0x40, p1)
            mstore(0x60, 0xa0)
            writeString(0x80, p0)
            writeString(0xc0, p2)
        }
        _sendLogPayload(0x1c, 0xe4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
        }
    }

    function log(bytes32 p0, bytes32 p1, address p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            // Selector of `log(string,string,address)`.
            mstore(0x00, 0x95ed0195)
            mstore(0x20, 0x60)
            mstore(0x40, 0xa0)
            mstore(0x60, p2)
            writeString(0x80, p0)
            writeString(0xc0, p1)
        }
        _sendLogPayload(0x1c, 0xe4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
        }
    }

    function log(bytes32 p0, bytes32 p1, bool p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            // Selector of `log(string,string,bool)`.
            mstore(0x00, 0xb0e0f9b5)
            mstore(0x20, 0x60)
            mstore(0x40, 0xa0)
            mstore(0x60, p2)
            writeString(0x80, p0)
            writeString(0xc0, p1)
        }
        _sendLogPayload(0x1c, 0xe4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
        }
    }

    function log(bytes32 p0, bytes32 p1, uint256 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            // Selector of `log(string,string,uint256)`.
            mstore(0x00, 0x5821efa1)
            mstore(0x20, 0x60)
            mstore(0x40, 0xa0)
            mstore(0x60, p2)
            writeString(0x80, p0)
            writeString(0xc0, p1)
        }
        _sendLogPayload(0x1c, 0xe4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
        }
    }

    function log(bytes32 p0, bytes32 p1, bytes32 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        bytes32 m9;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            m9 := mload(0x120)
            // Selector of `log(string,string,string)`.
            mstore(0x00, 0x2ced7cef)
            mstore(0x20, 0x60)
            mstore(0x40, 0xa0)
            mstore(0x60, 0xe0)
            writeString(0x80, p0)
            writeString(0xc0, p1)
            writeString(0x100, p2)
        }
        _sendLogPayload(0x1c, 0x124);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
            mstore(0x120, m9)
        }
    }

    function log(address p0, address p1, address p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,address,address,address)`.
            mstore(0x00, 0x665bf134)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, address p1, address p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,address,address,bool)`.
            mstore(0x00, 0x0e378994)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, address p1, address p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,address,address,uint256)`.
            mstore(0x00, 0x94250d77)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, address p1, address p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,address,address,string)`.
            mstore(0x00, 0xf808da20)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, address p1, bool p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,address,bool,address)`.
            mstore(0x00, 0x9f1bc36e)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, address p1, bool p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,address,bool,bool)`.
            mstore(0x00, 0x2cd4134a)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, address p1, bool p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,address,bool,uint256)`.
            mstore(0x00, 0x3971e78c)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, address p1, bool p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,address,bool,string)`.
            mstore(0x00, 0xaa6540c8)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, address p1, uint256 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,address,uint256,address)`.
            mstore(0x00, 0x8da6def5)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, address p1, uint256 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,address,uint256,bool)`.
            mstore(0x00, 0x9b4254e2)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, address p1, uint256 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,address,uint256,uint256)`.
            mstore(0x00, 0xbe553481)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, address p1, uint256 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,address,uint256,string)`.
            mstore(0x00, 0xfdb4f990)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, address p1, bytes32 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,address,string,address)`.
            mstore(0x00, 0x8f736d16)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, address p1, bytes32 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,address,string,bool)`.
            mstore(0x00, 0x6f1a594e)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, address p1, bytes32 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,address,string,uint256)`.
            mstore(0x00, 0xef1cefe7)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, address p1, bytes32 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(address,address,string,string)`.
            mstore(0x00, 0x21bdaf25)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, 0xc0)
            writeString(0xa0, p2)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(address p0, bool p1, address p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,bool,address,address)`.
            mstore(0x00, 0x660375dd)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, bool p1, address p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,bool,address,bool)`.
            mstore(0x00, 0xa6f50b0f)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, bool p1, address p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,bool,address,uint256)`.
            mstore(0x00, 0xa75c59de)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, bool p1, address p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,bool,address,string)`.
            mstore(0x00, 0x2dd778e6)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, bool p1, bool p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,bool,bool,address)`.
            mstore(0x00, 0xcf394485)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, bool p1, bool p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,bool,bool,bool)`.
            mstore(0x00, 0xcac43479)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, bool p1, bool p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,bool,bool,uint256)`.
            mstore(0x00, 0x8c4e5de6)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, bool p1, bool p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,bool,bool,string)`.
            mstore(0x00, 0xdfc4a2e8)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, bool p1, uint256 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,bool,uint256,address)`.
            mstore(0x00, 0xccf790a1)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, bool p1, uint256 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,bool,uint256,bool)`.
            mstore(0x00, 0xc4643e20)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, bool p1, uint256 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,bool,uint256,uint256)`.
            mstore(0x00, 0x386ff5f4)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, bool p1, uint256 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,bool,uint256,string)`.
            mstore(0x00, 0x0aa6cfad)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, bool p1, bytes32 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,bool,string,address)`.
            mstore(0x00, 0x19fd4956)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, bool p1, bytes32 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,bool,string,bool)`.
            mstore(0x00, 0x50ad461d)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, bool p1, bytes32 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,bool,string,uint256)`.
            mstore(0x00, 0x80e6a20b)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, bool p1, bytes32 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(address,bool,string,string)`.
            mstore(0x00, 0x475c5c33)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, 0xc0)
            writeString(0xa0, p2)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(address p0, uint256 p1, address p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,uint256,address,address)`.
            mstore(0x00, 0x478d1c62)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, uint256 p1, address p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,uint256,address,bool)`.
            mstore(0x00, 0xa1bcc9b3)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, uint256 p1, address p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,uint256,address,uint256)`.
            mstore(0x00, 0x100f650e)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, uint256 p1, address p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,uint256,address,string)`.
            mstore(0x00, 0x1da986ea)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, uint256 p1, bool p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,uint256,bool,address)`.
            mstore(0x00, 0xa31bfdcc)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, uint256 p1, bool p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,uint256,bool,bool)`.
            mstore(0x00, 0x3bf5e537)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, uint256 p1, bool p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,uint256,bool,uint256)`.
            mstore(0x00, 0x22f6b999)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, uint256 p1, bool p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,uint256,bool,string)`.
            mstore(0x00, 0xc5ad85f9)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, uint256 p1, uint256 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,uint256,uint256,address)`.
            mstore(0x00, 0x20e3984d)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, uint256 p1, uint256 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,uint256,uint256,bool)`.
            mstore(0x00, 0x66f1bc67)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, uint256 p1, uint256 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,uint256,uint256,uint256)`.
            mstore(0x00, 0x34f0e636)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, uint256 p1, uint256 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,uint256,uint256,string)`.
            mstore(0x00, 0x4a28c017)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, uint256 p1, bytes32 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,uint256,string,address)`.
            mstore(0x00, 0x5c430d47)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, uint256 p1, bytes32 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,uint256,string,bool)`.
            mstore(0x00, 0xcf18105c)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, uint256 p1, bytes32 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,uint256,string,uint256)`.
            mstore(0x00, 0xbf01f891)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, uint256 p1, bytes32 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(address,uint256,string,string)`.
            mstore(0x00, 0x88a8c406)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, 0xc0)
            writeString(0xa0, p2)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(address p0, bytes32 p1, address p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,string,address,address)`.
            mstore(0x00, 0x0d36fa20)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, bytes32 p1, address p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,string,address,bool)`.
            mstore(0x00, 0x0df12b76)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, bytes32 p1, address p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,string,address,uint256)`.
            mstore(0x00, 0x457fe3cf)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, bytes32 p1, address p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(address,string,address,string)`.
            mstore(0x00, 0xf7e36245)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, 0xc0)
            writeString(0xa0, p1)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(address p0, bytes32 p1, bool p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,string,bool,address)`.
            mstore(0x00, 0x205871c2)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, bytes32 p1, bool p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,string,bool,bool)`.
            mstore(0x00, 0x5f1d5c9f)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, bytes32 p1, bool p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,string,bool,uint256)`.
            mstore(0x00, 0x515e38b6)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, bytes32 p1, bool p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(address,string,bool,string)`.
            mstore(0x00, 0xbc0b61fe)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, 0xc0)
            writeString(0xa0, p1)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(address p0, bytes32 p1, uint256 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,string,uint256,address)`.
            mstore(0x00, 0x63183678)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, bytes32 p1, uint256 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,string,uint256,bool)`.
            mstore(0x00, 0x0ef7e050)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, bytes32 p1, uint256 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,string,uint256,uint256)`.
            mstore(0x00, 0x1dc8e1b8)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, bytes32 p1, uint256 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(address,string,uint256,string)`.
            mstore(0x00, 0x448830a8)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, 0xc0)
            writeString(0xa0, p1)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(address p0, bytes32 p1, bytes32 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(address,string,string,address)`.
            mstore(0x00, 0xa04e2f87)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, 0xc0)
            mstore(0x80, p3)
            writeString(0xa0, p1)
            writeString(0xe0, p2)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(address p0, bytes32 p1, bytes32 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(address,string,string,bool)`.
            mstore(0x00, 0x35a5071f)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, 0xc0)
            mstore(0x80, p3)
            writeString(0xa0, p1)
            writeString(0xe0, p2)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(address p0, bytes32 p1, bytes32 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(address,string,string,uint256)`.
            mstore(0x00, 0x159f8927)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, 0xc0)
            mstore(0x80, p3)
            writeString(0xa0, p1)
            writeString(0xe0, p2)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(address p0, bytes32 p1, bytes32 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        bytes32 m9;
        bytes32 m10;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            m9 := mload(0x120)
            m10 := mload(0x140)
            // Selector of `log(address,string,string,string)`.
            mstore(0x00, 0x5d02c50b)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, 0xc0)
            mstore(0x80, 0x100)
            writeString(0xa0, p1)
            writeString(0xe0, p2)
            writeString(0x120, p3)
        }
        _sendLogPayload(0x1c, 0x144);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
            mstore(0x120, m9)
            mstore(0x140, m10)
        }
    }

    function log(bool p0, address p1, address p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,address,address,address)`.
            mstore(0x00, 0x1d14d001)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, address p1, address p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,address,address,bool)`.
            mstore(0x00, 0x46600be0)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, address p1, address p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,address,address,uint256)`.
            mstore(0x00, 0x0c66d1be)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, address p1, address p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,address,address,string)`.
            mstore(0x00, 0xd812a167)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, address p1, bool p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,address,bool,address)`.
            mstore(0x00, 0x1c41a336)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, address p1, bool p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,address,bool,bool)`.
            mstore(0x00, 0x6a9c478b)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, address p1, bool p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,address,bool,uint256)`.
            mstore(0x00, 0x07831502)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, address p1, bool p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,address,bool,string)`.
            mstore(0x00, 0x4a66cb34)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, address p1, uint256 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,address,uint256,address)`.
            mstore(0x00, 0x136b05dd)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, address p1, uint256 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,address,uint256,bool)`.
            mstore(0x00, 0xd6019f1c)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, address p1, uint256 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,address,uint256,uint256)`.
            mstore(0x00, 0x7bf181a1)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, address p1, uint256 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,address,uint256,string)`.
            mstore(0x00, 0x51f09ff8)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, address p1, bytes32 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,address,string,address)`.
            mstore(0x00, 0x6f7c603e)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, address p1, bytes32 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,address,string,bool)`.
            mstore(0x00, 0xe2bfd60b)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, address p1, bytes32 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,address,string,uint256)`.
            mstore(0x00, 0xc21f64c7)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, address p1, bytes32 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(bool,address,string,string)`.
            mstore(0x00, 0xa73c1db6)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, 0xc0)
            writeString(0xa0, p2)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bool p0, bool p1, address p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,bool,address,address)`.
            mstore(0x00, 0xf4880ea4)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, bool p1, address p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,bool,address,bool)`.
            mstore(0x00, 0xc0a302d8)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, bool p1, address p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,bool,address,uint256)`.
            mstore(0x00, 0x4c123d57)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, bool p1, address p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,bool,address,string)`.
            mstore(0x00, 0xa0a47963)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, bool p1, bool p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,bool,bool,address)`.
            mstore(0x00, 0x8c329b1a)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, bool p1, bool p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,bool,bool,bool)`.
            mstore(0x00, 0x3b2a5ce0)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, bool p1, bool p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,bool,bool,uint256)`.
            mstore(0x00, 0x6d7045c1)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, bool p1, bool p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,bool,bool,string)`.
            mstore(0x00, 0x2ae408d4)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, bool p1, uint256 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,bool,uint256,address)`.
            mstore(0x00, 0x54a7a9a0)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, bool p1, uint256 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,bool,uint256,bool)`.
            mstore(0x00, 0x619e4d0e)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, bool p1, uint256 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,bool,uint256,uint256)`.
            mstore(0x00, 0x0bb00eab)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, bool p1, uint256 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,bool,uint256,string)`.
            mstore(0x00, 0x7dd4d0e0)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, bool p1, bytes32 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,bool,string,address)`.
            mstore(0x00, 0xf9ad2b89)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, bool p1, bytes32 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,bool,string,bool)`.
            mstore(0x00, 0xb857163a)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, bool p1, bytes32 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,bool,string,uint256)`.
            mstore(0x00, 0xe3a9ca2f)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, bool p1, bytes32 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(bool,bool,string,string)`.
            mstore(0x00, 0x6d1e8751)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, 0xc0)
            writeString(0xa0, p2)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bool p0, uint256 p1, address p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,uint256,address,address)`.
            mstore(0x00, 0x26f560a8)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, uint256 p1, address p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,uint256,address,bool)`.
            mstore(0x00, 0xb4c314ff)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, uint256 p1, address p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,uint256,address,uint256)`.
            mstore(0x00, 0x1537dc87)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, uint256 p1, address p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,uint256,address,string)`.
            mstore(0x00, 0x1bb3b09a)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, uint256 p1, bool p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,uint256,bool,address)`.
            mstore(0x00, 0x9acd3616)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, uint256 p1, bool p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,uint256,bool,bool)`.
            mstore(0x00, 0xceb5f4d7)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, uint256 p1, bool p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,uint256,bool,uint256)`.
            mstore(0x00, 0x7f9bbca2)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, uint256 p1, bool p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,uint256,bool,string)`.
            mstore(0x00, 0x9143dbb1)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, uint256 p1, uint256 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,uint256,uint256,address)`.
            mstore(0x00, 0x00dd87b9)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, uint256 p1, uint256 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,uint256,uint256,bool)`.
            mstore(0x00, 0xbe984353)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, uint256 p1, uint256 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,uint256,uint256,uint256)`.
            mstore(0x00, 0x374bb4b2)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, uint256 p1, uint256 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,uint256,uint256,string)`.
            mstore(0x00, 0x8e69fb5d)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, uint256 p1, bytes32 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,uint256,string,address)`.
            mstore(0x00, 0xfedd1fff)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, uint256 p1, bytes32 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,uint256,string,bool)`.
            mstore(0x00, 0xe5e70b2b)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, uint256 p1, bytes32 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,uint256,string,uint256)`.
            mstore(0x00, 0x6a1199e2)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, uint256 p1, bytes32 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(bool,uint256,string,string)`.
            mstore(0x00, 0xf5bc2249)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, 0xc0)
            writeString(0xa0, p2)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bool p0, bytes32 p1, address p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,string,address,address)`.
            mstore(0x00, 0x2b2b18dc)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, bytes32 p1, address p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,string,address,bool)`.
            mstore(0x00, 0x6dd434ca)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, bytes32 p1, address p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,string,address,uint256)`.
            mstore(0x00, 0xa5cada94)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, bytes32 p1, address p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(bool,string,address,string)`.
            mstore(0x00, 0x12d6c788)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, 0xc0)
            writeString(0xa0, p1)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bool p0, bytes32 p1, bool p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,string,bool,address)`.
            mstore(0x00, 0x538e06ab)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, bytes32 p1, bool p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,string,bool,bool)`.
            mstore(0x00, 0xdc5e935b)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, bytes32 p1, bool p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,string,bool,uint256)`.
            mstore(0x00, 0x1606a393)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, bytes32 p1, bool p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(bool,string,bool,string)`.
            mstore(0x00, 0x483d0416)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, 0xc0)
            writeString(0xa0, p1)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bool p0, bytes32 p1, uint256 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,string,uint256,address)`.
            mstore(0x00, 0x1596a1ce)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, bytes32 p1, uint256 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,string,uint256,bool)`.
            mstore(0x00, 0x6b0e5d53)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, bytes32 p1, uint256 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,string,uint256,uint256)`.
            mstore(0x00, 0x28863fcb)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, bytes32 p1, uint256 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(bool,string,uint256,string)`.
            mstore(0x00, 0x1ad96de6)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, 0xc0)
            writeString(0xa0, p1)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bool p0, bytes32 p1, bytes32 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(bool,string,string,address)`.
            mstore(0x00, 0x97d394d8)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, 0xc0)
            mstore(0x80, p3)
            writeString(0xa0, p1)
            writeString(0xe0, p2)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bool p0, bytes32 p1, bytes32 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(bool,string,string,bool)`.
            mstore(0x00, 0x1e4b87e5)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, 0xc0)
            mstore(0x80, p3)
            writeString(0xa0, p1)
            writeString(0xe0, p2)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bool p0, bytes32 p1, bytes32 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(bool,string,string,uint256)`.
            mstore(0x00, 0x7be0c3eb)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, 0xc0)
            mstore(0x80, p3)
            writeString(0xa0, p1)
            writeString(0xe0, p2)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bool p0, bytes32 p1, bytes32 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        bytes32 m9;
        bytes32 m10;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            m9 := mload(0x120)
            m10 := mload(0x140)
            // Selector of `log(bool,string,string,string)`.
            mstore(0x00, 0x1762e32a)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, 0xc0)
            mstore(0x80, 0x100)
            writeString(0xa0, p1)
            writeString(0xe0, p2)
            writeString(0x120, p3)
        }
        _sendLogPayload(0x1c, 0x144);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
            mstore(0x120, m9)
            mstore(0x140, m10)
        }
    }

    function log(uint256 p0, address p1, address p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,address,address,address)`.
            mstore(0x00, 0x2488b414)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, address p1, address p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,address,address,bool)`.
            mstore(0x00, 0x091ffaf5)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, address p1, address p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,address,address,uint256)`.
            mstore(0x00, 0x736efbb6)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, address p1, address p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,address,address,string)`.
            mstore(0x00, 0x031c6f73)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, address p1, bool p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,address,bool,address)`.
            mstore(0x00, 0xef72c513)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, address p1, bool p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,address,bool,bool)`.
            mstore(0x00, 0xe351140f)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, address p1, bool p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,address,bool,uint256)`.
            mstore(0x00, 0x5abd992a)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, address p1, bool p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,address,bool,string)`.
            mstore(0x00, 0x90fb06aa)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, address p1, uint256 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,address,uint256,address)`.
            mstore(0x00, 0x15c127b5)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, address p1, uint256 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,address,uint256,bool)`.
            mstore(0x00, 0x5f743a7c)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, address p1, uint256 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,address,uint256,uint256)`.
            mstore(0x00, 0x0c9cd9c1)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, address p1, uint256 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,address,uint256,string)`.
            mstore(0x00, 0xddb06521)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, address p1, bytes32 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,address,string,address)`.
            mstore(0x00, 0x9cba8fff)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, address p1, bytes32 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,address,string,bool)`.
            mstore(0x00, 0xcc32ab07)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, address p1, bytes32 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,address,string,uint256)`.
            mstore(0x00, 0x46826b5d)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, address p1, bytes32 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(uint256,address,string,string)`.
            mstore(0x00, 0x3e128ca3)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, 0xc0)
            writeString(0xa0, p2)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(uint256 p0, bool p1, address p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,bool,address,address)`.
            mstore(0x00, 0xa1ef4cbb)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, bool p1, address p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,bool,address,bool)`.
            mstore(0x00, 0x454d54a5)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, bool p1, address p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,bool,address,uint256)`.
            mstore(0x00, 0x078287f5)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, bool p1, address p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,bool,address,string)`.
            mstore(0x00, 0xade052c7)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, bool p1, bool p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,bool,bool,address)`.
            mstore(0x00, 0x69640b59)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, bool p1, bool p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,bool,bool,bool)`.
            mstore(0x00, 0xb6f577a1)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, bool p1, bool p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,bool,bool,uint256)`.
            mstore(0x00, 0x7464ce23)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, bool p1, bool p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,bool,bool,string)`.
            mstore(0x00, 0xdddb9561)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, bool p1, uint256 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,bool,uint256,address)`.
            mstore(0x00, 0x88cb6041)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, bool p1, uint256 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,bool,uint256,bool)`.
            mstore(0x00, 0x91a02e2a)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, bool p1, uint256 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,bool,uint256,uint256)`.
            mstore(0x00, 0xc6acc7a8)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, bool p1, uint256 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,bool,uint256,string)`.
            mstore(0x00, 0xde03e774)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, bool p1, bytes32 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,bool,string,address)`.
            mstore(0x00, 0xef529018)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, bool p1, bytes32 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,bool,string,bool)`.
            mstore(0x00, 0xeb928d7f)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, bool p1, bytes32 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,bool,string,uint256)`.
            mstore(0x00, 0x2c1d0746)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, bool p1, bytes32 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(uint256,bool,string,string)`.
            mstore(0x00, 0x68c8b8bd)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, 0xc0)
            writeString(0xa0, p2)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(uint256 p0, uint256 p1, address p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,uint256,address,address)`.
            mstore(0x00, 0x56a5d1b1)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, uint256 p1, address p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,uint256,address,bool)`.
            mstore(0x00, 0x15cac476)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, uint256 p1, address p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,uint256,address,uint256)`.
            mstore(0x00, 0x88f6e4b2)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, uint256 p1, address p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,uint256,address,string)`.
            mstore(0x00, 0x6cde40b8)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, uint256 p1, bool p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,uint256,bool,address)`.
            mstore(0x00, 0x9a816a83)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, uint256 p1, bool p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,uint256,bool,bool)`.
            mstore(0x00, 0xab085ae6)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, uint256 p1, bool p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,uint256,bool,uint256)`.
            mstore(0x00, 0xeb7f6fd2)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, uint256 p1, bool p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,uint256,bool,string)`.
            mstore(0x00, 0xa5b4fc99)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, uint256 p1, uint256 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,uint256,uint256,address)`.
            mstore(0x00, 0xfa8185af)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, uint256 p1, uint256 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,uint256,uint256,bool)`.
            mstore(0x00, 0xc598d185)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, uint256 p1, uint256 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,uint256,uint256,uint256)`.
            mstore(0x00, 0x193fb800)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, uint256 p1, uint256 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,uint256,uint256,string)`.
            mstore(0x00, 0x59cfcbe3)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, uint256 p1, bytes32 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,uint256,string,address)`.
            mstore(0x00, 0x42d21db7)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, uint256 p1, bytes32 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,uint256,string,bool)`.
            mstore(0x00, 0x7af6ab25)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, uint256 p1, bytes32 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,uint256,string,uint256)`.
            mstore(0x00, 0x5da297eb)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, uint256 p1, bytes32 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(uint256,uint256,string,string)`.
            mstore(0x00, 0x27d8afd2)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, 0xc0)
            writeString(0xa0, p2)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(uint256 p0, bytes32 p1, address p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,string,address,address)`.
            mstore(0x00, 0x6168ed61)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, bytes32 p1, address p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,string,address,bool)`.
            mstore(0x00, 0x90c30a56)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, bytes32 p1, address p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,string,address,uint256)`.
            mstore(0x00, 0xe8d3018d)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, bytes32 p1, address p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(uint256,string,address,string)`.
            mstore(0x00, 0x9c3adfa1)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, 0xc0)
            writeString(0xa0, p1)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(uint256 p0, bytes32 p1, bool p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,string,bool,address)`.
            mstore(0x00, 0xae2ec581)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, bytes32 p1, bool p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,string,bool,bool)`.
            mstore(0x00, 0xba535d9c)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, bytes32 p1, bool p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,string,bool,uint256)`.
            mstore(0x00, 0xcf009880)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, bytes32 p1, bool p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(uint256,string,bool,string)`.
            mstore(0x00, 0xd2d423cd)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, 0xc0)
            writeString(0xa0, p1)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(uint256 p0, bytes32 p1, uint256 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,string,uint256,address)`.
            mstore(0x00, 0x3b2279b4)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, bytes32 p1, uint256 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,string,uint256,bool)`.
            mstore(0x00, 0x691a8f74)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, bytes32 p1, uint256 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,string,uint256,uint256)`.
            mstore(0x00, 0x82c25b74)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, bytes32 p1, uint256 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(uint256,string,uint256,string)`.
            mstore(0x00, 0xb7b914ca)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, 0xc0)
            writeString(0xa0, p1)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(uint256 p0, bytes32 p1, bytes32 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(uint256,string,string,address)`.
            mstore(0x00, 0xd583c602)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, 0xc0)
            mstore(0x80, p3)
            writeString(0xa0, p1)
            writeString(0xe0, p2)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(uint256 p0, bytes32 p1, bytes32 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(uint256,string,string,bool)`.
            mstore(0x00, 0xb3a6b6bd)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, 0xc0)
            mstore(0x80, p3)
            writeString(0xa0, p1)
            writeString(0xe0, p2)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(uint256 p0, bytes32 p1, bytes32 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(uint256,string,string,uint256)`.
            mstore(0x00, 0xb028c9bd)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, 0xc0)
            mstore(0x80, p3)
            writeString(0xa0, p1)
            writeString(0xe0, p2)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(uint256 p0, bytes32 p1, bytes32 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        bytes32 m9;
        bytes32 m10;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            m9 := mload(0x120)
            m10 := mload(0x140)
            // Selector of `log(uint256,string,string,string)`.
            mstore(0x00, 0x21ad0683)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, 0xc0)
            mstore(0x80, 0x100)
            writeString(0xa0, p1)
            writeString(0xe0, p2)
            writeString(0x120, p3)
        }
        _sendLogPayload(0x1c, 0x144);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
            mstore(0x120, m9)
            mstore(0x140, m10)
        }
    }

    function log(bytes32 p0, address p1, address p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,address,address,address)`.
            mstore(0x00, 0xed8f28f6)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, address p1, address p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,address,address,bool)`.
            mstore(0x00, 0xb59dbd60)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, address p1, address p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,address,address,uint256)`.
            mstore(0x00, 0x8ef3f399)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, address p1, address p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,address,address,string)`.
            mstore(0x00, 0x800a1c67)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0xc0)
            writeString(0xa0, p0)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, address p1, bool p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,address,bool,address)`.
            mstore(0x00, 0x223603bd)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, address p1, bool p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,address,bool,bool)`.
            mstore(0x00, 0x79884c2b)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, address p1, bool p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,address,bool,uint256)`.
            mstore(0x00, 0x3e9f866a)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, address p1, bool p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,address,bool,string)`.
            mstore(0x00, 0x0454c079)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0xc0)
            writeString(0xa0, p0)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, address p1, uint256 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,address,uint256,address)`.
            mstore(0x00, 0x63fb8bc5)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, address p1, uint256 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,address,uint256,bool)`.
            mstore(0x00, 0xfc4845f0)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, address p1, uint256 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,address,uint256,uint256)`.
            mstore(0x00, 0xf8f51b1e)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, address p1, uint256 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,address,uint256,string)`.
            mstore(0x00, 0x5a477632)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0xc0)
            writeString(0xa0, p0)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, address p1, bytes32 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,address,string,address)`.
            mstore(0x00, 0xaabc9a31)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, 0xc0)
            mstore(0x80, p3)
            writeString(0xa0, p0)
            writeString(0xe0, p2)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, address p1, bytes32 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,address,string,bool)`.
            mstore(0x00, 0x5f15d28c)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, 0xc0)
            mstore(0x80, p3)
            writeString(0xa0, p0)
            writeString(0xe0, p2)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, address p1, bytes32 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,address,string,uint256)`.
            mstore(0x00, 0x91d1112e)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, 0xc0)
            mstore(0x80, p3)
            writeString(0xa0, p0)
            writeString(0xe0, p2)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, address p1, bytes32 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        bytes32 m9;
        bytes32 m10;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            m9 := mload(0x120)
            m10 := mload(0x140)
            // Selector of `log(string,address,string,string)`.
            mstore(0x00, 0x245986f2)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, 0xc0)
            mstore(0x80, 0x100)
            writeString(0xa0, p0)
            writeString(0xe0, p2)
            writeString(0x120, p3)
        }
        _sendLogPayload(0x1c, 0x144);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
            mstore(0x120, m9)
            mstore(0x140, m10)
        }
    }

    function log(bytes32 p0, bool p1, address p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,bool,address,address)`.
            mstore(0x00, 0x33e9dd1d)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, bool p1, address p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,bool,address,bool)`.
            mstore(0x00, 0x958c28c6)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, bool p1, address p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,bool,address,uint256)`.
            mstore(0x00, 0x5d08bb05)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, bool p1, address p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,bool,address,string)`.
            mstore(0x00, 0x2d8e33a4)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0xc0)
            writeString(0xa0, p0)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, bool p1, bool p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,bool,bool,address)`.
            mstore(0x00, 0x7190a529)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, bool p1, bool p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,bool,bool,bool)`.
            mstore(0x00, 0x895af8c5)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, bool p1, bool p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,bool,bool,uint256)`.
            mstore(0x00, 0x8e3f78a9)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, bool p1, bool p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,bool,bool,string)`.
            mstore(0x00, 0x9d22d5dd)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0xc0)
            writeString(0xa0, p0)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, bool p1, uint256 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,bool,uint256,address)`.
            mstore(0x00, 0x935e09bf)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, bool p1, uint256 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,bool,uint256,bool)`.
            mstore(0x00, 0x8af7cf8a)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, bool p1, uint256 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,bool,uint256,uint256)`.
            mstore(0x00, 0x64b5bb67)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, bool p1, uint256 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,bool,uint256,string)`.
            mstore(0x00, 0x742d6ee7)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0xc0)
            writeString(0xa0, p0)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, bool p1, bytes32 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,bool,string,address)`.
            mstore(0x00, 0xe0625b29)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, 0xc0)
            mstore(0x80, p3)
            writeString(0xa0, p0)
            writeString(0xe0, p2)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, bool p1, bytes32 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,bool,string,bool)`.
            mstore(0x00, 0x3f8a701d)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, 0xc0)
            mstore(0x80, p3)
            writeString(0xa0, p0)
            writeString(0xe0, p2)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, bool p1, bytes32 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,bool,string,uint256)`.
            mstore(0x00, 0x24f91465)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, 0xc0)
            mstore(0x80, p3)
            writeString(0xa0, p0)
            writeString(0xe0, p2)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, bool p1, bytes32 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        bytes32 m9;
        bytes32 m10;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            m9 := mload(0x120)
            m10 := mload(0x140)
            // Selector of `log(string,bool,string,string)`.
            mstore(0x00, 0xa826caeb)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, 0xc0)
            mstore(0x80, 0x100)
            writeString(0xa0, p0)
            writeString(0xe0, p2)
            writeString(0x120, p3)
        }
        _sendLogPayload(0x1c, 0x144);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
            mstore(0x120, m9)
            mstore(0x140, m10)
        }
    }

    function log(bytes32 p0, uint256 p1, address p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,uint256,address,address)`.
            mstore(0x00, 0x5ea2b7ae)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, uint256 p1, address p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,uint256,address,bool)`.
            mstore(0x00, 0x82112a42)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, uint256 p1, address p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,uint256,address,uint256)`.
            mstore(0x00, 0x4f04fdc6)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, uint256 p1, address p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,uint256,address,string)`.
            mstore(0x00, 0x9ffb2f93)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0xc0)
            writeString(0xa0, p0)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, uint256 p1, bool p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,uint256,bool,address)`.
            mstore(0x00, 0xe0e95b98)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, uint256 p1, bool p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,uint256,bool,bool)`.
            mstore(0x00, 0x354c36d6)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, uint256 p1, bool p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,uint256,bool,uint256)`.
            mstore(0x00, 0xe41b6f6f)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, uint256 p1, bool p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,uint256,bool,string)`.
            mstore(0x00, 0xabf73a98)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0xc0)
            writeString(0xa0, p0)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, uint256 p1, uint256 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,uint256,uint256,address)`.
            mstore(0x00, 0xe21de278)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, uint256 p1, uint256 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,uint256,uint256,bool)`.
            mstore(0x00, 0x7626db92)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, uint256 p1, uint256 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,uint256,uint256,uint256)`.
            mstore(0x00, 0xa7a87853)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, uint256 p1, uint256 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,uint256,uint256,string)`.
            mstore(0x00, 0x854b3496)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0xc0)
            writeString(0xa0, p0)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, uint256 p1, bytes32 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,uint256,string,address)`.
            mstore(0x00, 0x7c4632a4)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, 0xc0)
            mstore(0x80, p3)
            writeString(0xa0, p0)
            writeString(0xe0, p2)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, uint256 p1, bytes32 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,uint256,string,bool)`.
            mstore(0x00, 0x7d24491d)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, 0xc0)
            mstore(0x80, p3)
            writeString(0xa0, p0)
            writeString(0xe0, p2)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, uint256 p1, bytes32 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,uint256,string,uint256)`.
            mstore(0x00, 0xc67ea9d1)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, 0xc0)
            mstore(0x80, p3)
            writeString(0xa0, p0)
            writeString(0xe0, p2)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, uint256 p1, bytes32 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        bytes32 m9;
        bytes32 m10;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            m9 := mload(0x120)
            m10 := mload(0x140)
            // Selector of `log(string,uint256,string,string)`.
            mstore(0x00, 0x5ab84e1f)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, 0xc0)
            mstore(0x80, 0x100)
            writeString(0xa0, p0)
            writeString(0xe0, p2)
            writeString(0x120, p3)
        }
        _sendLogPayload(0x1c, 0x144);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
            mstore(0x120, m9)
            mstore(0x140, m10)
        }
    }

    function log(bytes32 p0, bytes32 p1, address p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,string,address,address)`.
            mstore(0x00, 0x439c7bef)
            mstore(0x20, 0x80)
            mstore(0x40, 0xc0)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
            writeString(0xe0, p1)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, bytes32 p1, address p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,string,address,bool)`.
            mstore(0x00, 0x5ccd4e37)
            mstore(0x20, 0x80)
            mstore(0x40, 0xc0)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
            writeString(0xe0, p1)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, bytes32 p1, address p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,string,address,uint256)`.
            mstore(0x00, 0x7cc3c607)
            mstore(0x20, 0x80)
            mstore(0x40, 0xc0)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
            writeString(0xe0, p1)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, bytes32 p1, address p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        bytes32 m9;
        bytes32 m10;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            m9 := mload(0x120)
            m10 := mload(0x140)
            // Selector of `log(string,string,address,string)`.
            mstore(0x00, 0xeb1bff80)
            mstore(0x20, 0x80)
            mstore(0x40, 0xc0)
            mstore(0x60, p2)
            mstore(0x80, 0x100)
            writeString(0xa0, p0)
            writeString(0xe0, p1)
            writeString(0x120, p3)
        }
        _sendLogPayload(0x1c, 0x144);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
            mstore(0x120, m9)
            mstore(0x140, m10)
        }
    }

    function log(bytes32 p0, bytes32 p1, bool p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,string,bool,address)`.
            mstore(0x00, 0xc371c7db)
            mstore(0x20, 0x80)
            mstore(0x40, 0xc0)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
            writeString(0xe0, p1)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, bytes32 p1, bool p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,string,bool,bool)`.
            mstore(0x00, 0x40785869)
            mstore(0x20, 0x80)
            mstore(0x40, 0xc0)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
            writeString(0xe0, p1)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, bytes32 p1, bool p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,string,bool,uint256)`.
            mstore(0x00, 0xd6aefad2)
            mstore(0x20, 0x80)
            mstore(0x40, 0xc0)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
            writeString(0xe0, p1)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, bytes32 p1, bool p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        bytes32 m9;
        bytes32 m10;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            m9 := mload(0x120)
            m10 := mload(0x140)
            // Selector of `log(string,string,bool,string)`.
            mstore(0x00, 0x5e84b0ea)
            mstore(0x20, 0x80)
            mstore(0x40, 0xc0)
            mstore(0x60, p2)
            mstore(0x80, 0x100)
            writeString(0xa0, p0)
            writeString(0xe0, p1)
            writeString(0x120, p3)
        }
        _sendLogPayload(0x1c, 0x144);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
            mstore(0x120, m9)
            mstore(0x140, m10)
        }
    }

    function log(bytes32 p0, bytes32 p1, uint256 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,string,uint256,address)`.
            mstore(0x00, 0x1023f7b2)
            mstore(0x20, 0x80)
            mstore(0x40, 0xc0)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
            writeString(0xe0, p1)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, bytes32 p1, uint256 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,string,uint256,bool)`.
            mstore(0x00, 0xc3a8a654)
            mstore(0x20, 0x80)
            mstore(0x40, 0xc0)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
            writeString(0xe0, p1)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, bytes32 p1, uint256 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,string,uint256,uint256)`.
            mstore(0x00, 0xf45d7d2c)
            mstore(0x20, 0x80)
            mstore(0x40, 0xc0)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
            writeString(0xe0, p1)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, bytes32 p1, uint256 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        bytes32 m9;
        bytes32 m10;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            m9 := mload(0x120)
            m10 := mload(0x140)
            // Selector of `log(string,string,uint256,string)`.
            mstore(0x00, 0x5d1a971a)
            mstore(0x20, 0x80)
            mstore(0x40, 0xc0)
            mstore(0x60, p2)
            mstore(0x80, 0x100)
            writeString(0xa0, p0)
            writeString(0xe0, p1)
            writeString(0x120, p3)
        }
        _sendLogPayload(0x1c, 0x144);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
            mstore(0x120, m9)
            mstore(0x140, m10)
        }
    }

    function log(bytes32 p0, bytes32 p1, bytes32 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        bytes32 m9;
        bytes32 m10;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            m9 := mload(0x120)
            m10 := mload(0x140)
            // Selector of `log(string,string,string,address)`.
            mstore(0x00, 0x6d572f44)
            mstore(0x20, 0x80)
            mstore(0x40, 0xc0)
            mstore(0x60, 0x100)
            mstore(0x80, p3)
            writeString(0xa0, p0)
            writeString(0xe0, p1)
            writeString(0x120, p2)
        }
        _sendLogPayload(0x1c, 0x144);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
            mstore(0x120, m9)
            mstore(0x140, m10)
        }
    }

    function log(bytes32 p0, bytes32 p1, bytes32 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        bytes32 m9;
        bytes32 m10;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            m9 := mload(0x120)
            m10 := mload(0x140)
            // Selector of `log(string,string,string,bool)`.
            mstore(0x00, 0x2c1754ed)
            mstore(0x20, 0x80)
            mstore(0x40, 0xc0)
            mstore(0x60, 0x100)
            mstore(0x80, p3)
            writeString(0xa0, p0)
            writeString(0xe0, p1)
            writeString(0x120, p2)
        }
        _sendLogPayload(0x1c, 0x144);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
            mstore(0x120, m9)
            mstore(0x140, m10)
        }
    }

    function log(bytes32 p0, bytes32 p1, bytes32 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        bytes32 m9;
        bytes32 m10;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            m9 := mload(0x120)
            m10 := mload(0x140)
            // Selector of `log(string,string,string,uint256)`.
            mstore(0x00, 0x8eafb02b)
            mstore(0x20, 0x80)
            mstore(0x40, 0xc0)
            mstore(0x60, 0x100)
            mstore(0x80, p3)
            writeString(0xa0, p0)
            writeString(0xe0, p1)
            writeString(0x120, p2)
        }
        _sendLogPayload(0x1c, 0x144);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
            mstore(0x120, m9)
            mstore(0x140, m10)
        }
    }

    function log(bytes32 p0, bytes32 p1, bytes32 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        bytes32 m9;
        bytes32 m10;
        bytes32 m11;
        bytes32 m12;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            m9 := mload(0x120)
            m10 := mload(0x140)
            m11 := mload(0x160)
            m12 := mload(0x180)
            // Selector of `log(string,string,string,string)`.
            mstore(0x00, 0xde68f20a)
            mstore(0x20, 0x80)
            mstore(0x40, 0xc0)
            mstore(0x60, 0x100)
            mstore(0x80, 0x140)
            writeString(0xa0, p0)
            writeString(0xe0, p1)
            writeString(0x120, p2)
            writeString(0x160, p3)
        }
        _sendLogPayload(0x1c, 0x184);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
            mstore(0x120, m9)
            mstore(0x140, m10)
            mstore(0x160, m11)
            mstore(0x180, m12)
        }
    }
}

// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.

contract DSTest {
    event log                    (string);
    event logs                   (bytes);

    event log_address            (address);
    event log_bytes32            (bytes32);
    event log_int                (int);
    event log_uint               (uint);
    event log_bytes              (bytes);
    event log_string             (string);

    event log_named_address      (string key, address val);
    event log_named_bytes32      (string key, bytes32 val);
    event log_named_decimal_int  (string key, int val, uint decimals);
    event log_named_decimal_uint (string key, uint val, uint decimals);
    event log_named_int          (string key, int val);
    event log_named_uint         (string key, uint val);
    event log_named_bytes        (string key, bytes val);
    event log_named_string       (string key, string val);

    bool public IS_TEST = true;
    bool private _failed;

    address constant HEVM_ADDRESS =
        address(bytes20(uint160(uint256(keccak256('hevm cheat code')))));

    modifier mayRevert() { _; }
    modifier testopts(string memory) { _; }

    function failed() public returns (bool) {
        if (_failed) {
            return _failed;
        } else {
            bool globalFailed = false;
            if (hasHEVMContext()) {
                (, bytes memory retdata) = HEVM_ADDRESS.call(
                    abi.encodePacked(
                        bytes4(keccak256("load(address,bytes32)")),
                        abi.encode(HEVM_ADDRESS, bytes32("failed"))
                    )
                );
                globalFailed = abi.decode(retdata, (bool));
            }
            return globalFailed;
        }
    }

    function fail() internal virtual {
        if (hasHEVMContext()) {
            (bool status, ) = HEVM_ADDRESS.call(
                abi.encodePacked(
                    bytes4(keccak256("store(address,bytes32,bytes32)")),
                    abi.encode(HEVM_ADDRESS, bytes32("failed"), bytes32(uint256(0x01)))
                )
            );
            status; // Silence compiler warnings
        }
        _failed = true;
    }

    function hasHEVMContext() internal view returns (bool) {
        uint256 hevmCodeSize = 0;
        assembly {
            hevmCodeSize := extcodesize(0x7109709ECfa91a80626fF3989D68f67F5b1DD12D)
        }
        return hevmCodeSize > 0;
    }

    modifier logs_gas() {
        uint startGas = gasleft();
        _;
        uint endGas = gasleft();
        emit log_named_uint("gas", startGas - endGas);
    }

    function assertTrue(bool condition) internal {
        if (!condition) {
            emit log("Error: Assertion Failed");
            fail();
        }
    }

    function assertTrue(bool condition, string memory err) internal {
        if (!condition) {
            emit log_named_string("Error", err);
            assertTrue(condition);
        }
    }

    function assertEq(address a, address b) internal {
        if (a != b) {
            emit log("Error: a == b not satisfied [address]");
            emit log_named_address("      Left", a);
            emit log_named_address("     Right", b);
            fail();
        }
    }
    function assertEq(address a, address b, string memory err) internal {
        if (a != b) {
            emit log_named_string ("Error", err);
            assertEq(a, b);
        }
    }

    function assertEq(bytes32 a, bytes32 b) internal {
        if (a != b) {
            emit log("Error: a == b not satisfied [bytes32]");
            emit log_named_bytes32("      Left", a);
            emit log_named_bytes32("     Right", b);
            fail();
        }
    }
    function assertEq(bytes32 a, bytes32 b, string memory err) internal {
        if (a != b) {
            emit log_named_string ("Error", err);
            assertEq(a, b);
        }
    }
    function assertEq32(bytes32 a, bytes32 b) internal {
        assertEq(a, b);
    }
    function assertEq32(bytes32 a, bytes32 b, string memory err) internal {
        assertEq(a, b, err);
    }

    function assertEq(int a, int b) internal {
        if (a != b) {
            emit log("Error: a == b not satisfied [int]");
            emit log_named_int("      Left", a);
            emit log_named_int("     Right", b);
            fail();
        }
    }
    function assertEq(int a, int b, string memory err) internal {
        if (a != b) {
            emit log_named_string("Error", err);
            assertEq(a, b);
        }
    }
    function assertEq(uint a, uint b) internal {
        if (a != b) {
            emit log("Error: a == b not satisfied [uint]");
            emit log_named_uint("      Left", a);
            emit log_named_uint("     Right", b);
            fail();
        }
    }
    function assertEq(uint a, uint b, string memory err) internal {
        if (a != b) {
            emit log_named_string("Error", err);
            assertEq(a, b);
        }
    }
    function assertEqDecimal(int a, int b, uint decimals) internal {
        if (a != b) {
            emit log("Error: a == b not satisfied [decimal int]");
            emit log_named_decimal_int("      Left", a, decimals);
            emit log_named_decimal_int("     Right", b, decimals);
            fail();
        }
    }
    function assertEqDecimal(int a, int b, uint decimals, string memory err) internal {
        if (a != b) {
            emit log_named_string("Error", err);
            assertEqDecimal(a, b, decimals);
        }
    }
    function assertEqDecimal(uint a, uint b, uint decimals) internal {
        if (a != b) {
            emit log("Error: a == b not satisfied [decimal uint]");
            emit log_named_decimal_uint("      Left", a, decimals);
            emit log_named_decimal_uint("     Right", b, decimals);
            fail();
        }
    }
    function assertEqDecimal(uint a, uint b, uint decimals, string memory err) internal {
        if (a != b) {
            emit log_named_string("Error", err);
            assertEqDecimal(a, b, decimals);
        }
    }

    function assertNotEq(address a, address b) internal {
        if (a == b) {
            emit log("Error: a != b not satisfied [address]");
            emit log_named_address("      Left", a);
            emit log_named_address("     Right", b);
            fail();
        }
    }
    function assertNotEq(address a, address b, string memory err) internal {
        if (a == b) {
            emit log_named_string ("Error", err);
            assertNotEq(a, b);
        }
    }

    function assertNotEq(bytes32 a, bytes32 b) internal {
        if (a == b) {
            emit log("Error: a != b not satisfied [bytes32]");
            emit log_named_bytes32("      Left", a);
            emit log_named_bytes32("     Right", b);
            fail();
        }
    }
    function assertNotEq(bytes32 a, bytes32 b, string memory err) internal {
        if (a == b) {
            emit log_named_string ("Error", err);
            assertNotEq(a, b);
        }
    }
    function assertNotEq32(bytes32 a, bytes32 b) internal {
        assertNotEq(a, b);
    }
    function assertNotEq32(bytes32 a, bytes32 b, string memory err) internal {
        assertNotEq(a, b, err);
    }

    function assertNotEq(int a, int b) internal {
        if (a == b) {
            emit log("Error: a != b not satisfied [int]");
            emit log_named_int("      Left", a);
            emit log_named_int("     Right", b);
            fail();
        }
    }
    function assertNotEq(int a, int b, string memory err) internal {
        if (a == b) {
            emit log_named_string("Error", err);
            assertNotEq(a, b);
        }
    }
    function assertNotEq(uint a, uint b) internal {
        if (a == b) {
            emit log("Error: a != b not satisfied [uint]");
            emit log_named_uint("      Left", a);
            emit log_named_uint("     Right", b);
            fail();
        }
    }
    function assertNotEq(uint a, uint b, string memory err) internal {
        if (a == b) {
            emit log_named_string("Error", err);
            assertNotEq(a, b);
        }
    }
    function assertNotEqDecimal(int a, int b, uint decimals) internal {
        if (a == b) {
            emit log("Error: a != b not satisfied [decimal int]");
            emit log_named_decimal_int("      Left", a, decimals);
            emit log_named_decimal_int("     Right", b, decimals);
            fail();
        }
    }
    function assertNotEqDecimal(int a, int b, uint decimals, string memory err) internal {
        if (a == b) {
            emit log_named_string("Error", err);
            assertNotEqDecimal(a, b, decimals);
        }
    }
    function assertNotEqDecimal(uint a, uint b, uint decimals) internal {
        if (a == b) {
            emit log("Error: a != b not satisfied [decimal uint]");
            emit log_named_decimal_uint("      Left", a, decimals);
            emit log_named_decimal_uint("     Right", b, decimals);
            fail();
        }
    }
    function assertNotEqDecimal(uint a, uint b, uint decimals, string memory err) internal {
        if (a == b) {
            emit log_named_string("Error", err);
            assertNotEqDecimal(a, b, decimals);
        }
    }

    function assertGt(uint a, uint b) internal {
        if (a <= b) {
            emit log("Error: a > b not satisfied [uint]");
            emit log_named_uint("  Value a", a);
            emit log_named_uint("  Value b", b);
            fail();
        }
    }
    function assertGt(uint a, uint b, string memory err) internal {
        if (a <= b) {
            emit log_named_string("Error", err);
            assertGt(a, b);
        }
    }
    function assertGt(int a, int b) internal {
        if (a <= b) {
            emit log("Error: a > b not satisfied [int]");
            emit log_named_int("  Value a", a);
            emit log_named_int("  Value b", b);
            fail();
        }
    }
    function assertGt(int a, int b, string memory err) internal {
        if (a <= b) {
            emit log_named_string("Error", err);
            assertGt(a, b);
        }
    }
    function assertGtDecimal(int a, int b, uint decimals) internal {
        if (a <= b) {
            emit log("Error: a > b not satisfied [decimal int]");
            emit log_named_decimal_int("  Value a", a, decimals);
            emit log_named_decimal_int("  Value b", b, decimals);
            fail();
        }
    }
    function assertGtDecimal(int a, int b, uint decimals, string memory err) internal {
        if (a <= b) {
            emit log_named_string("Error", err);
            assertGtDecimal(a, b, decimals);
        }
    }
    function assertGtDecimal(uint a, uint b, uint decimals) internal {
        if (a <= b) {
            emit log("Error: a > b not satisfied [decimal uint]");
            emit log_named_decimal_uint("  Value a", a, decimals);
            emit log_named_decimal_uint("  Value b", b, decimals);
            fail();
        }
    }
    function assertGtDecimal(uint a, uint b, uint decimals, string memory err) internal {
        if (a <= b) {
            emit log_named_string("Error", err);
            assertGtDecimal(a, b, decimals);
        }
    }

    function assertGe(uint a, uint b) internal {
        if (a < b) {
            emit log("Error: a >= b not satisfied [uint]");
            emit log_named_uint("  Value a", a);
            emit log_named_uint("  Value b", b);
            fail();
        }
    }
    function assertGe(uint a, uint b, string memory err) internal {
        if (a < b) {
            emit log_named_string("Error", err);
            assertGe(a, b);
        }
    }
    function assertGe(int a, int b) internal {
        if (a < b) {
            emit log("Error: a >= b not satisfied [int]");
            emit log_named_int("  Value a", a);
            emit log_named_int("  Value b", b);
            fail();
        }
    }
    function assertGe(int a, int b, string memory err) internal {
        if (a < b) {
            emit log_named_string("Error", err);
            assertGe(a, b);
        }
    }
    function assertGeDecimal(int a, int b, uint decimals) internal {
        if (a < b) {
            emit log("Error: a >= b not satisfied [decimal int]");
            emit log_named_decimal_int("  Value a", a, decimals);
            emit log_named_decimal_int("  Value b", b, decimals);
            fail();
        }
    }
    function assertGeDecimal(int a, int b, uint decimals, string memory err) internal {
        if (a < b) {
            emit log_named_string("Error", err);
            assertGeDecimal(a, b, decimals);
        }
    }
    function assertGeDecimal(uint a, uint b, uint decimals) internal {
        if (a < b) {
            emit log("Error: a >= b not satisfied [decimal uint]");
            emit log_named_decimal_uint("  Value a", a, decimals);
            emit log_named_decimal_uint("  Value b", b, decimals);
            fail();
        }
    }
    function assertGeDecimal(uint a, uint b, uint decimals, string memory err) internal {
        if (a < b) {
            emit log_named_string("Error", err);
            assertGeDecimal(a, b, decimals);
        }
    }

    function assertLt(uint a, uint b) internal {
        if (a >= b) {
            emit log("Error: a < b not satisfied [uint]");
            emit log_named_uint("  Value a", a);
            emit log_named_uint("  Value b", b);
            fail();
        }
    }
    function assertLt(uint a, uint b, string memory err) internal {
        if (a >= b) {
            emit log_named_string("Error", err);
            assertLt(a, b);
        }
    }
    function assertLt(int a, int b) internal {
        if (a >= b) {
            emit log("Error: a < b not satisfied [int]");
            emit log_named_int("  Value a", a);
            emit log_named_int("  Value b", b);
            fail();
        }
    }
    function assertLt(int a, int b, string memory err) internal {
        if (a >= b) {
            emit log_named_string("Error", err);
            assertLt(a, b);
        }
    }
    function assertLtDecimal(int a, int b, uint decimals) internal {
        if (a >= b) {
            emit log("Error: a < b not satisfied [decimal int]");
            emit log_named_decimal_int("  Value a", a, decimals);
            emit log_named_decimal_int("  Value b", b, decimals);
            fail();
        }
    }
    function assertLtDecimal(int a, int b, uint decimals, string memory err) internal {
        if (a >= b) {
            emit log_named_string("Error", err);
            assertLtDecimal(a, b, decimals);
        }
    }
    function assertLtDecimal(uint a, uint b, uint decimals) internal {
        if (a >= b) {
            emit log("Error: a < b not satisfied [decimal uint]");
            emit log_named_decimal_uint("  Value a", a, decimals);
            emit log_named_decimal_uint("  Value b", b, decimals);
            fail();
        }
    }
    function assertLtDecimal(uint a, uint b, uint decimals, string memory err) internal {
        if (a >= b) {
            emit log_named_string("Error", err);
            assertLtDecimal(a, b, decimals);
        }
    }

    function assertLe(uint a, uint b) internal {
        if (a > b) {
            emit log("Error: a <= b not satisfied [uint]");
            emit log_named_uint("  Value a", a);
            emit log_named_uint("  Value b", b);
            fail();
        }
    }
    function assertLe(uint a, uint b, string memory err) internal {
        if (a > b) {
            emit log_named_string("Error", err);
            assertLe(a, b);
        }
    }
    function assertLe(int a, int b) internal {
        if (a > b) {
            emit log("Error: a <= b not satisfied [int]");
            emit log_named_int("  Value a", a);
            emit log_named_int("  Value b", b);
            fail();
        }
    }
    function assertLe(int a, int b, string memory err) internal {
        if (a > b) {
            emit log_named_string("Error", err);
            assertLe(a, b);
        }
    }
    function assertLeDecimal(int a, int b, uint decimals) internal {
        if (a > b) {
            emit log("Error: a <= b not satisfied [decimal int]");
            emit log_named_decimal_int("  Value a", a, decimals);
            emit log_named_decimal_int("  Value b", b, decimals);
            fail();
        }
    }
    function assertLeDecimal(int a, int b, uint decimals, string memory err) internal {
        if (a > b) {
            emit log_named_string("Error", err);
            assertLeDecimal(a, b, decimals);
        }
    }
    function assertLeDecimal(uint a, uint b, uint decimals) internal {
        if (a > b) {
            emit log("Error: a <= b not satisfied [decimal uint]");
            emit log_named_decimal_uint("  Value a", a, decimals);
            emit log_named_decimal_uint("  Value b", b, decimals);
            fail();
        }
    }
    function assertLeDecimal(uint a, uint b, uint decimals, string memory err) internal {
        if (a > b) {
            emit log_named_string("Error", err);
            assertLeDecimal(a, b, decimals);
        }
    }

    function assertEq(string memory a, string memory b) internal {
        if (keccak256(abi.encodePacked(a)) != keccak256(abi.encodePacked(b))) {
            emit log("Error: a == b not satisfied [string]");
            emit log_named_string("      Left", a);
            emit log_named_string("     Right", b);
            fail();
        }
    }
    function assertEq(string memory a, string memory b, string memory err) internal {
        if (keccak256(abi.encodePacked(a)) != keccak256(abi.encodePacked(b))) {
            emit log_named_string("Error", err);
            assertEq(a, b);
        }
    }

    function assertNotEq(string memory a, string memory b) internal {
        if (keccak256(abi.encodePacked(a)) == keccak256(abi.encodePacked(b))) {
            emit log("Error: a != b not satisfied [string]");
            emit log_named_string("      Left", a);
            emit log_named_string("     Right", b);
            fail();
        }
    }
    function assertNotEq(string memory a, string memory b, string memory err) internal {
        if (keccak256(abi.encodePacked(a)) == keccak256(abi.encodePacked(b))) {
            emit log_named_string("Error", err);
            assertNotEq(a, b);
        }
    }

    function checkEq0(bytes memory a, bytes memory b) internal pure returns (bool ok) {
        ok = true;
        if (a.length == b.length) {
            for (uint i = 0; i < a.length; i++) {
                if (a[i] != b[i]) {
                    ok = false;
                }
            }
        } else {
            ok = false;
        }
    }
    function assertEq0(bytes memory a, bytes memory b) internal {
        if (!checkEq0(a, b)) {
            emit log("Error: a == b not satisfied [bytes]");
            emit log_named_bytes("      Left", a);
            emit log_named_bytes("     Right", b);
            fail();
        }
    }
    function assertEq0(bytes memory a, bytes memory b, string memory err) internal {
        if (!checkEq0(a, b)) {
            emit log_named_string("Error", err);
            assertEq0(a, b);
        }
    }

    function assertNotEq0(bytes memory a, bytes memory b) internal {
        if (checkEq0(a, b)) {
            emit log("Error: a != b not satisfied [bytes]");
            emit log_named_bytes("      Left", a);
            emit log_named_bytes("     Right", b);
            fail();
        }
    }
    function assertNotEq0(bytes memory a, bytes memory b, string memory err) internal {
        if (checkEq0(a, b)) {
            emit log_named_string("Error", err);
            assertNotEq0(a, b);
        }
    }
}

library stdMath {
    int256 private constant INT256_MIN = -57896044618658097711785492504343953926634992332820282019728792003956564819968;

    function abs(int256 a) internal pure returns (uint256) {
        // Required or it will fail when `a = type(int256).min`
        if (a == INT256_MIN) {
            return 57896044618658097711785492504343953926634992332820282019728792003956564819968;
        }

        return uint256(a > 0 ? a : -a);
    }

    function delta(uint256 a, uint256 b) internal pure returns (uint256) {
        return a > b ? a - b : b - a;
    }

    function delta(int256 a, int256 b) internal pure returns (uint256) {
        // a and b are of the same sign
        // this works thanks to two's complement, the left-most bit is the sign bit
        if ((a ^ b) > -1) {
            return delta(abs(a), abs(b));
        }

        // a and b are of opposite signs
        return abs(a) + abs(b);
    }

    function percentDelta(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 absDelta = delta(a, b);

        return absDelta * 1e18 / b;
    }

    function percentDelta(int256 a, int256 b) internal pure returns (uint256) {
        uint256 absDelta = delta(a, b);
        uint256 absB = abs(b);

        return absDelta * 1e18 / absB;
    }
}

abstract contract StdAssertions is DSTest {
    event log_array(uint256[] val);
    event log_array(int256[] val);
    event log_array(address[] val);
    event log_named_array(string key, uint256[] val);
    event log_named_array(string key, int256[] val);
    event log_named_array(string key, address[] val);

    function fail(string memory err) internal virtual {
        emit log_named_string("Error", err);
        fail();
    }

    function assertFalse(bool data) internal virtual {
        assertTrue(!data);
    }

    function assertFalse(bool data, string memory err) internal virtual {
        assertTrue(!data, err);
    }

    function assertEq(bool a, bool b) internal virtual {
        if (a != b) {
            emit log("Error: a == b not satisfied [bool]");
            emit log_named_string("      Left", a ? "true" : "false");
            emit log_named_string("     Right", b ? "true" : "false");
            fail();
        }
    }

    function assertEq(bool a, bool b, string memory err) internal virtual {
        if (a != b) {
            emit log_named_string("Error", err);
            assertEq(a, b);
        }
    }

    function assertEq(bytes memory a, bytes memory b) internal virtual {
        assertEq0(a, b);
    }

    function assertEq(bytes memory a, bytes memory b, string memory err) internal virtual {
        assertEq0(a, b, err);
    }

    function assertEq(uint256[] memory a, uint256[] memory b) internal virtual {
        if (keccak256(abi.encode(a)) != keccak256(abi.encode(b))) {
            emit log("Error: a == b not satisfied [uint[]]");
            emit log_named_array("      Left", a);
            emit log_named_array("     Right", b);
            fail();
        }
    }

    function assertEq(int256[] memory a, int256[] memory b) internal virtual {
        if (keccak256(abi.encode(a)) != keccak256(abi.encode(b))) {
            emit log("Error: a == b not satisfied [int[]]");
            emit log_named_array("      Left", a);
            emit log_named_array("     Right", b);
            fail();
        }
    }

    function assertEq(address[] memory a, address[] memory b) internal virtual {
        if (keccak256(abi.encode(a)) != keccak256(abi.encode(b))) {
            emit log("Error: a == b not satisfied [address[]]");
            emit log_named_array("      Left", a);
            emit log_named_array("     Right", b);
            fail();
        }
    }

    function assertEq(uint256[] memory a, uint256[] memory b, string memory err) internal virtual {
        if (keccak256(abi.encode(a)) != keccak256(abi.encode(b))) {
            emit log_named_string("Error", err);
            assertEq(a, b);
        }
    }

    function assertEq(int256[] memory a, int256[] memory b, string memory err) internal virtual {
        if (keccak256(abi.encode(a)) != keccak256(abi.encode(b))) {
            emit log_named_string("Error", err);
            assertEq(a, b);
        }
    }

    function assertEq(address[] memory a, address[] memory b, string memory err) internal virtual {
        if (keccak256(abi.encode(a)) != keccak256(abi.encode(b))) {
            emit log_named_string("Error", err);
            assertEq(a, b);
        }
    }

    // Legacy helper
    function assertEqUint(uint256 a, uint256 b) internal virtual {
        assertEq(uint256(a), uint256(b));
    }

    function assertApproxEqAbs(uint256 a, uint256 b, uint256 maxDelta) internal virtual {
        uint256 delta = stdMath.delta(a, b);

        if (delta > maxDelta) {
            emit log("Error: a ~= b not satisfied [uint]");
            emit log_named_uint("      Left", a);
            emit log_named_uint("     Right", b);
            emit log_named_uint(" Max Delta", maxDelta);
            emit log_named_uint("     Delta", delta);
            fail();
        }
    }

    function assertApproxEqAbs(uint256 a, uint256 b, uint256 maxDelta, string memory err) internal virtual {
        uint256 delta = stdMath.delta(a, b);

        if (delta > maxDelta) {
            emit log_named_string("Error", err);
            assertApproxEqAbs(a, b, maxDelta);
        }
    }

    function assertApproxEqAbsDecimal(uint256 a, uint256 b, uint256 maxDelta, uint256 decimals) internal virtual {
        uint256 delta = stdMath.delta(a, b);

        if (delta > maxDelta) {
            emit log("Error: a ~= b not satisfied [uint]");
            emit log_named_decimal_uint("      Left", a, decimals);
            emit log_named_decimal_uint("     Right", b, decimals);
            emit log_named_decimal_uint(" Max Delta", maxDelta, decimals);
            emit log_named_decimal_uint("     Delta", delta, decimals);
            fail();
        }
    }

    function assertApproxEqAbsDecimal(uint256 a, uint256 b, uint256 maxDelta, uint256 decimals, string memory err)
        internal
        virtual
    {
        uint256 delta = stdMath.delta(a, b);

        if (delta > maxDelta) {
            emit log_named_string("Error", err);
            assertApproxEqAbsDecimal(a, b, maxDelta, decimals);
        }
    }

    function assertApproxEqAbs(int256 a, int256 b, uint256 maxDelta) internal virtual {
        uint256 delta = stdMath.delta(a, b);

        if (delta > maxDelta) {
            emit log("Error: a ~= b not satisfied [int]");
            emit log_named_int("       Left", a);
            emit log_named_int("      Right", b);
            emit log_named_uint(" Max Delta", maxDelta);
            emit log_named_uint("     Delta", delta);
            fail();
        }
    }

    function assertApproxEqAbs(int256 a, int256 b, uint256 maxDelta, string memory err) internal virtual {
        uint256 delta = stdMath.delta(a, b);

        if (delta > maxDelta) {
            emit log_named_string("Error", err);
            assertApproxEqAbs(a, b, maxDelta);
        }
    }

    function assertApproxEqAbsDecimal(int256 a, int256 b, uint256 maxDelta, uint256 decimals) internal virtual {
        uint256 delta = stdMath.delta(a, b);

        if (delta > maxDelta) {
            emit log("Error: a ~= b not satisfied [int]");
            emit log_named_decimal_int("      Left", a, decimals);
            emit log_named_decimal_int("     Right", b, decimals);
            emit log_named_decimal_uint(" Max Delta", maxDelta, decimals);
            emit log_named_decimal_uint("     Delta", delta, decimals);
            fail();
        }
    }

    function assertApproxEqAbsDecimal(int256 a, int256 b, uint256 maxDelta, uint256 decimals, string memory err)
        internal
        virtual
    {
        uint256 delta = stdMath.delta(a, b);

        if (delta > maxDelta) {
            emit log_named_string("Error", err);
            assertApproxEqAbsDecimal(a, b, maxDelta, decimals);
        }
    }

    function assertApproxEqRel(
        uint256 a,
        uint256 b,
        uint256 maxPercentDelta // An 18 decimal fixed point number, where 1e18 == 100%
    ) internal virtual {
        if (b == 0) return assertEq(a, b); // If the left is 0, right must be too.

        uint256 percentDelta = stdMath.percentDelta(a, b);

        if (percentDelta > maxPercentDelta) {
            emit log("Error: a ~= b not satisfied [uint]");
            emit log_named_uint("        Left", a);
            emit log_named_uint("       Right", b);
            emit log_named_decimal_uint(" Max % Delta", maxPercentDelta * 100, 18);
            emit log_named_decimal_uint("     % Delta", percentDelta * 100, 18);
            fail();
        }
    }

    function assertApproxEqRel(
        uint256 a,
        uint256 b,
        uint256 maxPercentDelta, // An 18 decimal fixed point number, where 1e18 == 100%
        string memory err
    ) internal virtual {
        if (b == 0) return assertEq(a, b, err); // If the left is 0, right must be too.

        uint256 percentDelta = stdMath.percentDelta(a, b);

        if (percentDelta > maxPercentDelta) {
            emit log_named_string("Error", err);
            assertApproxEqRel(a, b, maxPercentDelta);
        }
    }

    function assertApproxEqRelDecimal(
        uint256 a,
        uint256 b,
        uint256 maxPercentDelta, // An 18 decimal fixed point number, where 1e18 == 100%
        uint256 decimals
    ) internal virtual {
        if (b == 0) return assertEq(a, b); // If the left is 0, right must be too.

        uint256 percentDelta = stdMath.percentDelta(a, b);

        if (percentDelta > maxPercentDelta) {
            emit log("Error: a ~= b not satisfied [uint]");
            emit log_named_decimal_uint("        Left", a, decimals);
            emit log_named_decimal_uint("       Right", b, decimals);
            emit log_named_decimal_uint(" Max % Delta", maxPercentDelta * 100, 18);
            emit log_named_decimal_uint("     % Delta", percentDelta * 100, 18);
            fail();
        }
    }

    function assertApproxEqRelDecimal(
        uint256 a,
        uint256 b,
        uint256 maxPercentDelta, // An 18 decimal fixed point number, where 1e18 == 100%
        uint256 decimals,
        string memory err
    ) internal virtual {
        if (b == 0) return assertEq(a, b, err); // If the left is 0, right must be too.

        uint256 percentDelta = stdMath.percentDelta(a, b);

        if (percentDelta > maxPercentDelta) {
            emit log_named_string("Error", err);
            assertApproxEqRelDecimal(a, b, maxPercentDelta, decimals);
        }
    }

    function assertApproxEqRel(int256 a, int256 b, uint256 maxPercentDelta) internal virtual {
        if (b == 0) return assertEq(a, b); // If the left is 0, right must be too.

        uint256 percentDelta = stdMath.percentDelta(a, b);

        if (percentDelta > maxPercentDelta) {
            emit log("Error: a ~= b not satisfied [int]");
            emit log_named_int("        Left", a);
            emit log_named_int("       Right", b);
            emit log_named_decimal_uint(" Max % Delta", maxPercentDelta * 100, 18);
            emit log_named_decimal_uint("     % Delta", percentDelta * 100, 18);
            fail();
        }
    }

    function assertApproxEqRel(int256 a, int256 b, uint256 maxPercentDelta, string memory err) internal virtual {
        if (b == 0) return assertEq(a, b, err); // If the left is 0, right must be too.

        uint256 percentDelta = stdMath.percentDelta(a, b);

        if (percentDelta > maxPercentDelta) {
            emit log_named_string("Error", err);
            assertApproxEqRel(a, b, maxPercentDelta);
        }
    }

    function assertApproxEqRelDecimal(int256 a, int256 b, uint256 maxPercentDelta, uint256 decimals) internal virtual {
        if (b == 0) return assertEq(a, b); // If the left is 0, right must be too.

        uint256 percentDelta = stdMath.percentDelta(a, b);

        if (percentDelta > maxPercentDelta) {
            emit log("Error: a ~= b not satisfied [int]");
            emit log_named_decimal_int("        Left", a, decimals);
            emit log_named_decimal_int("       Right", b, decimals);
            emit log_named_decimal_uint(" Max % Delta", maxPercentDelta * 100, 18);
            emit log_named_decimal_uint("     % Delta", percentDelta * 100, 18);
            fail();
        }
    }

    function assertApproxEqRelDecimal(int256 a, int256 b, uint256 maxPercentDelta, uint256 decimals, string memory err)
        internal
        virtual
    {
        if (b == 0) return assertEq(a, b, err); // If the left is 0, right must be too.

        uint256 percentDelta = stdMath.percentDelta(a, b);

        if (percentDelta > maxPercentDelta) {
            emit log_named_string("Error", err);
            assertApproxEqRelDecimal(a, b, maxPercentDelta, decimals);
        }
    }

    function assertEqCall(address target, bytes memory callDataA, bytes memory callDataB) internal virtual {
        assertEqCall(target, callDataA, target, callDataB, true);
    }

    function assertEqCall(address targetA, bytes memory callDataA, address targetB, bytes memory callDataB)
        internal
        virtual
    {
        assertEqCall(targetA, callDataA, targetB, callDataB, true);
    }

    function assertEqCall(address target, bytes memory callDataA, bytes memory callDataB, bool strictRevertData)
        internal
        virtual
    {
        assertEqCall(target, callDataA, target, callDataB, strictRevertData);
    }

    function assertEqCall(
        address targetA,
        bytes memory callDataA,
        address targetB,
        bytes memory callDataB,
        bool strictRevertData
    ) internal virtual {
        (bool successA, bytes memory returnDataA) = address(targetA).call(callDataA);
        (bool successB, bytes memory returnDataB) = address(targetB).call(callDataB);

        if (successA && successB) {
            assertEq(returnDataA, returnDataB, "Call return data does not match");
        }

        if (!successA && !successB && strictRevertData) {
            assertEq(returnDataA, returnDataB, "Call revert data does not match");
        }

        if (!successA && successB) {
            emit log("Error: Calls were not equal");
            emit log_named_bytes("  Left call revert data", returnDataA);
            emit log_named_bytes(" Right call return data", returnDataB);
            fail();
        }

        if (successA && !successB) {
            emit log("Error: Calls were not equal");
            emit log_named_bytes("  Left call return data", returnDataA);
            emit log_named_bytes(" Right call revert data", returnDataB);
            fail();
        }
    }
}

// Cheatcodes are marked as view/pure/none using the following rules:
// 0. A call's observable behaviour includes its return value, logs, reverts and state writes,
// 1. If you can influence a later call's observable behaviour, you're neither `view` nor `pure (you are modifying some state be it the EVM, interpreter, filesystem, etc),
// 2. Otherwise if you can be influenced by an earlier call, or if reading some state, you're `view`,
// 3. Otherwise you're `pure`.

// The `VmSafe` interface does not allow manipulation of the EVM state or other actions that may
// result in Script simulations differing from on-chain execution. It is recommended to only use
// these cheats in scripts.
interface VmSafe {
    //  ======== Types ========
    enum CallerMode {
        None,
        Broadcast,
        RecurrentBroadcast,
        Prank,
        RecurrentPrank
    }

    struct Log {
        bytes32[] topics;
        bytes data;
        address emitter;
    }

    struct Rpc {
        string key;
        string url;
    }

    struct DirEntry {
        string errorMessage;
        string path;
        uint64 depth;
        bool isDir;
        bool isSymlink;
    }

    struct FsMetadata {
        bool isDir;
        bool isSymlink;
        uint256 length;
        bool readOnly;
        uint256 modified;
        uint256 accessed;
        uint256 created;
    }

    struct Wallet {
        address addr;
        uint256 publicKeyX;
        uint256 publicKeyY;
        uint256 privateKey;
    }

    struct FfiResult {
        int32 exitCode;
        bytes stdout;
        bytes stderr;
    }

    // ======== EVM  ========

    // Gets the address for a given private key
    function addr(uint256 privateKey) external pure returns (address keyAddr);

    // Gets the nonce of an account.
    // See `getNonce(Wallet memory wallet)` for an alternative way to manage users and get their nonces.
    function getNonce(address account) external view returns (uint64 nonce);

    // Loads a storage slot from an address
    function load(address target, bytes32 slot) external view returns (bytes32 data);

    // Signs data
    function sign(uint256 privateKey, bytes32 digest) external pure returns (uint8 v, bytes32 r, bytes32 s);

    // -------- Record Storage --------
    // Records all storage reads and writes
    function record() external;

    // Gets all accessed reads and write slot from a `vm.record` session, for a given address
    function accesses(address target) external returns (bytes32[] memory readSlots, bytes32[] memory writeSlots);

    // -------- Recording Map Writes --------

    // Starts recording all map SSTOREs for later retrieval.
    function startMappingRecording() external;

    // Stops recording all map SSTOREs for later retrieval and clears the recorded data.
    function stopMappingRecording() external;

    // Gets the number of elements in the mapping at the given slot, for a given address.
    function getMappingLength(address target, bytes32 mappingSlot) external returns (uint256 length);

    // Gets the elements at index idx of the mapping at the given slot, for a given address. The
    // index must be less than the length of the mapping (i.e. the number of keys in the mapping).
    function getMappingSlotAt(address target, bytes32 mappingSlot, uint256 idx) external returns (bytes32 value);

    // Gets the map key and parent of a mapping at a given slot, for a given address.
    function getMappingKeyAndParentOf(address target, bytes32 elementSlot)
        external
        returns (bool found, bytes32 key, bytes32 parent);

    // -------- Record Logs --------
    // Record all the transaction logs
    function recordLogs() external;

    // Gets all the recorded logs
    function getRecordedLogs() external returns (Log[] memory logs);

    // -------- Gas Metering --------
    // It's recommend to use the `noGasMetering` modifier included with forge-std, instead of
    // using these functions directly.

    // Pauses gas metering (i.e. gas usage is not counted). Noop if already paused.
    function pauseGasMetering() external;

    // Resumes gas metering (i.e. gas usage is counted again). Noop if already on.
    function resumeGasMetering() external;

    // ======== Test Configuration ========

    // If the condition is false, discard this run's fuzz inputs and generate new ones.
    function assume(bool condition) external pure;

    // Writes a breakpoint to jump to in the debugger
    function breakpoint(string calldata char) external;

    // Writes a conditional breakpoint to jump to in the debugger
    function breakpoint(string calldata char, bool value) external;

    // Returns the RPC url for the given alias
    function rpcUrl(string calldata rpcAlias) external view returns (string memory json);

    // Returns all rpc urls and their aliases `[alias, url][]`
    function rpcUrls() external view returns (string[2][] memory urls);

    // Returns all rpc urls and their aliases as structs.
    function rpcUrlStructs() external view returns (Rpc[] memory urls);

    // Suspends execution of the main thread for `duration` milliseconds
    function sleep(uint256 duration) external;

    // ======== OS and Filesystem ========

    // -------- Metadata --------

    // Returns true if the given path points to an existing entity, else returns false
    function exists(string calldata path) external returns (bool result);

    // Given a path, query the file system to get information about a file, directory, etc.
    function fsMetadata(string calldata path) external view returns (FsMetadata memory metadata);

    // Returns true if the path exists on disk and is pointing at a directory, else returns false
    function isDir(string calldata path) external returns (bool result);

    // Returns true if the path exists on disk and is pointing at a regular file, else returns false
    function isFile(string calldata path) external returns (bool result);

    // Get the path of the current project root.
    function projectRoot() external view returns (string memory path);

    // Returns the time since unix epoch in milliseconds
    function unixTime() external returns (uint256 milliseconds);

    // -------- Reading and writing --------

    // Closes file for reading, resetting the offset and allowing to read it from beginning with readLine.
    // `path` is relative to the project root.
    function closeFile(string calldata path) external;

    // Copies the contents of one file to another. This function will **overwrite** the contents of `to`.
    // On success, the total number of bytes copied is returned and it is equal to the length of the `to` file as reported by `metadata`.
    // Both `from` and `to` are relative to the project root.
    function copyFile(string calldata from, string calldata to) external returns (uint64 copied);

    // Creates a new, empty directory at the provided path.
    // This cheatcode will revert in the following situations, but is not limited to just these cases:
    // - User lacks permissions to modify `path`.
    // - A parent of the given path doesn't exist and `recursive` is false.
    // - `path` already exists and `recursive` is false.
    // `path` is relative to the project root.
    function createDir(string calldata path, bool recursive) external;

    // Reads the directory at the given path recursively, up to `max_depth`.
    // `max_depth` defaults to 1, meaning only the direct children of the given directory will be returned.
    // Follows symbolic links if `follow_links` is true.
    function readDir(string calldata path) external view returns (DirEntry[] memory entries);
    function readDir(string calldata path, uint64 maxDepth) external view returns (DirEntry[] memory entries);
    function readDir(string calldata path, uint64 maxDepth, bool followLinks)
        external
        view
        returns (DirEntry[] memory entries);

    // Reads the entire content of file to string. `path` is relative to the project root.
    function readFile(string calldata path) external view returns (string memory data);

    // Reads the entire content of file as binary. `path` is relative to the project root.
    function readFileBinary(string calldata path) external view returns (bytes memory data);

    // Reads next line of file to string.
    function readLine(string calldata path) external view returns (string memory line);

    // Reads a symbolic link, returning the path that the link points to.
    // This cheatcode will revert in the following situations, but is not limited to just these cases:
    // - `path` is not a symbolic link.
    // - `path` does not exist.
    function readLink(string calldata linkPath) external view returns (string memory targetPath);

    // Removes a directory at the provided path.
    // This cheatcode will revert in the following situations, but is not limited to just these cases:
    // - `path` doesn't exist.
    // - `path` isn't a directory.
    // - User lacks permissions to modify `path`.
    // - The directory is not empty and `recursive` is false.
    // `path` is relative to the project root.
    function removeDir(string calldata path, bool recursive) external;

    // Removes a file from the filesystem.
    // This cheatcode will revert in the following situations, but is not limited to just these cases:
    // - `path` points to a directory.
    // - The file doesn't exist.
    // - The user lacks permissions to remove the file.
    // `path` is relative to the project root.
    function removeFile(string calldata path) external;

    // Writes data to file, creating a file if it does not exist, and entirely replacing its contents if it does.
    // `path` is relative to the project root.
    function writeFile(string calldata path, string calldata data) external;

    // Writes binary data to a file, creating a file if it does not exist, and entirely replacing its contents if it does.
    // `path` is relative to the project root.
    function writeFileBinary(string calldata path, bytes calldata data) external;

    // Writes line to file, creating a file if it does not exist.
    // `path` is relative to the project root.
    function writeLine(string calldata path, string calldata data) external;

    // -------- Foreign Function Interface --------

    // Performs a foreign function call via the terminal
    function ffi(string[] calldata commandInput) external returns (bytes memory result);

    // Performs a foreign function call via terminal and returns the exit code, stdout, and stderr
    function tryFfi(string[] calldata commandInput) external returns (FfiResult memory result);

    // ======== Environment Variables ========

    // Sets environment variables
    function setEnv(string calldata name, string calldata value) external;

    // Reads environment variables, (name) => (value)
    function envBool(string calldata name) external view returns (bool value);
    function envUint(string calldata name) external view returns (uint256 value);
    function envInt(string calldata name) external view returns (int256 value);
    function envAddress(string calldata name) external view returns (address value);
    function envBytes32(string calldata name) external view returns (bytes32 value);
    function envString(string calldata name) external view returns (string memory value);
    function envBytes(string calldata name) external view returns (bytes memory value);

    // Reads environment variables as arrays
    function envBool(string calldata name, string calldata delim) external view returns (bool[] memory value);
    function envUint(string calldata name, string calldata delim) external view returns (uint256[] memory value);
    function envInt(string calldata name, string calldata delim) external view returns (int256[] memory value);
    function envAddress(string calldata name, string calldata delim) external view returns (address[] memory value);
    function envBytes32(string calldata name, string calldata delim) external view returns (bytes32[] memory value);
    function envString(string calldata name, string calldata delim) external view returns (string[] memory value);
    function envBytes(string calldata name, string calldata delim) external view returns (bytes[] memory value);

    // Read environment variables with default value
    function envOr(string calldata name, bool defaultValue) external returns (bool value);
    function envOr(string calldata name, uint256 defaultValue) external returns (uint256 value);
    function envOr(string calldata name, int256 defaultValue) external returns (int256 value);
    function envOr(string calldata name, address defaultValue) external returns (address value);
    function envOr(string calldata name, bytes32 defaultValue) external returns (bytes32 value);
    function envOr(string calldata name, string calldata defaultValue) external returns (string memory value);
    function envOr(string calldata name, bytes calldata defaultValue) external returns (bytes memory value);

    // Read environment variables as arrays with default value
    function envOr(string calldata name, string calldata delim, bool[] calldata defaultValue)
        external
        returns (bool[] memory value);
    function envOr(string calldata name, string calldata delim, uint256[] calldata defaultValue)
        external
        returns (uint256[] memory value);
    function envOr(string calldata name, string calldata delim, int256[] calldata defaultValue)
        external
        returns (int256[] memory value);
    function envOr(string calldata name, string calldata delim, address[] calldata defaultValue)
        external
        returns (address[] memory value);
    function envOr(string calldata name, string calldata delim, bytes32[] calldata defaultValue)
        external
        returns (bytes32[] memory value);
    function envOr(string calldata name, string calldata delim, string[] calldata defaultValue)
        external
        returns (string[] memory value);
    function envOr(string calldata name, string calldata delim, bytes[] calldata defaultValue)
        external
        returns (bytes[] memory value);

    // ======== User Management ========

    // Derives a private key from the name, labels the account with that name, and returns the wallet
    function createWallet(string calldata walletLabel) external returns (Wallet memory wallet);

    // Generates a wallet from the private key and returns the wallet
    function createWallet(uint256 privateKey) external returns (Wallet memory wallet);

    // Generates a wallet from the private key, labels the account with that name, and returns the wallet
    function createWallet(uint256 privateKey, string calldata walletLabel) external returns (Wallet memory wallet);

    // Gets the label for the specified address
    function getLabel(address account) external returns (string memory currentLabel);

    // Get nonce for a Wallet.
    // See `getNonce(address account)` for an alternative way to get a nonce.
    function getNonce(Wallet calldata wallet) external returns (uint64 nonce);

    // Labels an address in call traces
    function label(address account, string calldata newLabel) external;

    // Signs data, (Wallet, digest) => (v, r, s)
    function sign(Wallet calldata wallet, bytes32 digest) external returns (uint8 v, bytes32 r, bytes32 s);

    // ======== Scripts ========

    // -------- Broadcasting Transactions --------

    // Using the address that calls the test contract, has the next call (at this call depth only) create a transaction that can later be signed and sent onchain
    function broadcast() external;

    // Has the next call (at this call depth only) create a transaction with the address provided as the sender that can later be signed and sent onchain
    function broadcast(address signer) external;

    // Has the next call (at this call depth only) create a transaction with the private key provided as the sender that can later be signed and sent onchain
    function broadcast(uint256 privateKey) external;

    // Using the address that calls the test contract, has all subsequent calls (at this call depth only) create transactions that can later be signed and sent onchain
    function startBroadcast() external;

    // Has all subsequent calls (at this call depth only) create transactions with the address provided that can later be signed and sent onchain
    function startBroadcast(address signer) external;

    // Has all subsequent calls (at this call depth only) create transactions with the private key provided that can later be signed and sent onchain
    function startBroadcast(uint256 privateKey) external;

    // Stops collecting onchain transactions
    function stopBroadcast() external;

    // -------- Key Management --------

    // Derive a private key from a provided mnenomic string (or mnenomic file path) at the derivation path m/44'/60'/0'/0/{index}
    function deriveKey(string calldata mnemonic, uint32 index) external pure returns (uint256 privateKey);

    // Derive a private key from a provided mnenomic string (or mnenomic file path) at {derivationPath}{index}
    function deriveKey(string calldata mnemonic, string calldata derivationPath, uint32 index)
        external
        pure
        returns (uint256 privateKey);

    // Adds a private key to the local forge wallet and returns the address
    function rememberKey(uint256 privateKey) external returns (address keyAddr);

    // ======== Utilities ========

    // Convert values to a string
    function toString(address value) external pure returns (string memory stringifiedValue);
    function toString(bytes calldata value) external pure returns (string memory stringifiedValue);
    function toString(bytes32 value) external pure returns (string memory stringifiedValue);
    function toString(bool value) external pure returns (string memory stringifiedValue);
    function toString(uint256 value) external pure returns (string memory stringifiedValue);
    function toString(int256 value) external pure returns (string memory stringifiedValue);

    // Convert values from a string
    function parseBytes(string calldata stringifiedValue) external pure returns (bytes memory parsedValue);
    function parseAddress(string calldata stringifiedValue) external pure returns (address parsedValue);
    function parseUint(string calldata stringifiedValue) external pure returns (uint256 parsedValue);
    function parseInt(string calldata stringifiedValue) external pure returns (int256 parsedValue);
    function parseBytes32(string calldata stringifiedValue) external pure returns (bytes32 parsedValue);
    function parseBool(string calldata stringifiedValue) external pure returns (bool parsedValue);

    // Gets the creation bytecode from an artifact file. Takes in the relative path to the json file
    function getCode(string calldata artifactPath) external view returns (bytes memory creationBytecode);

    // Gets the deployed bytecode from an artifact file. Takes in the relative path to the json file
    function getDeployedCode(string calldata artifactPath) external view returns (bytes memory runtimeBytecode);

    // ======== JSON Parsing and Manipulation ========

    // -------- Reading --------

    // NOTE: Please read https://book.getfoundry.sh/cheatcodes/parse-json to understand the
    // limitations and caveats of the JSON parsing cheats.

    // Checks if a key exists in a JSON object.
    function keyExists(string calldata json, string calldata key) external view returns (bool);

    // Given a string of JSON, return it as ABI-encoded
    function parseJson(string calldata json, string calldata key) external pure returns (bytes memory abiEncodedData);
    function parseJson(string calldata json) external pure returns (bytes memory abiEncodedData);

    // The following parseJson cheatcodes will do type coercion, for the type that they indicate.
    // For example, parseJsonUint will coerce all values to a uint256. That includes stringified numbers '12'
    // and hex numbers '0xEF'.
    // Type coercion works ONLY for discrete values or arrays. That means that the key must return a value or array, not
    // a JSON object.
    function parseJsonUint(string calldata json, string calldata key) external pure returns (uint256);
    function parseJsonUintArray(string calldata json, string calldata key) external pure returns (uint256[] memory);
    function parseJsonInt(string calldata json, string calldata key) external pure returns (int256);
    function parseJsonIntArray(string calldata json, string calldata key) external pure returns (int256[] memory);
    function parseJsonBool(string calldata json, string calldata key) external pure returns (bool);
    function parseJsonBoolArray(string calldata json, string calldata key) external pure returns (bool[] memory);
    function parseJsonAddress(string calldata json, string calldata key) external pure returns (address);
    function parseJsonAddressArray(string calldata json, string calldata key)
        external
        pure
        returns (address[] memory);
    function parseJsonString(string calldata json, string calldata key) external pure returns (string memory);
    function parseJsonStringArray(string calldata json, string calldata key) external pure returns (string[] memory);
    function parseJsonBytes(string calldata json, string calldata key) external pure returns (bytes memory);
    function parseJsonBytesArray(string calldata json, string calldata key) external pure returns (bytes[] memory);
    function parseJsonBytes32(string calldata json, string calldata key) external pure returns (bytes32);
    function parseJsonBytes32Array(string calldata json, string calldata key)
        external
        pure
        returns (bytes32[] memory);

    // Returns array of keys for a JSON object
    function parseJsonKeys(string calldata json, string calldata key) external pure returns (string[] memory keys);

    // -------- Writing --------

    // NOTE: Please read https://book.getfoundry.sh/cheatcodes/serialize-json to understand how
    // to use the serialization cheats.

    // Serialize a key and value to a JSON object stored in-memory that can be later written to a file
    // It returns the stringified version of the specific JSON file up to that moment.
    function serializeJson(string calldata objectKey, string calldata value) external returns (string memory json);
    function serializeBool(string calldata objectKey, string calldata valueKey, bool value)
        external
        returns (string memory json);
    function serializeUint(string calldata objectKey, string calldata valueKey, uint256 value)
        external
        returns (string memory json);
    function serializeInt(string calldata objectKey, string calldata valueKey, int256 value)
        external
        returns (string memory json);
    function serializeAddress(string calldata objectKey, string calldata valueKey, address value)
        external
        returns (string memory json);
    function serializeBytes32(string calldata objectKey, string calldata valueKey, bytes32 value)
        external
        returns (string memory json);
    function serializeString(string calldata objectKey, string calldata valueKey, string calldata value)
        external
        returns (string memory json);
    function serializeBytes(string calldata objectKey, string calldata valueKey, bytes calldata value)
        external
        returns (string memory json);

    function serializeBool(string calldata objectKey, string calldata valueKey, bool[] calldata values)
        external
        returns (string memory json);
    function serializeUint(string calldata objectKey, string calldata valueKey, uint256[] calldata values)
        external
        returns (string memory json);
    function serializeInt(string calldata objectKey, string calldata valueKey, int256[] calldata values)
        external
        returns (string memory json);
    function serializeAddress(string calldata objectKey, string calldata valueKey, address[] calldata values)
        external
        returns (string memory json);
    function serializeBytes32(string calldata objectKey, string calldata valueKey, bytes32[] calldata values)
        external
        returns (string memory json);
    function serializeString(string calldata objectKey, string calldata valueKey, string[] calldata values)
        external
        returns (string memory json);
    function serializeBytes(string calldata objectKey, string calldata valueKey, bytes[] calldata values)
        external
        returns (string memory json);

    // NOTE: Please read https://book.getfoundry.sh/cheatcodes/write-json to understand how
    // to use the JSON writing cheats.

    // Write a serialized JSON object to a file. If the file exists, it will be overwritten.
    function writeJson(string calldata json, string calldata path) external;

    // Write a serialized JSON object to an **existing** JSON file, replacing a value with key = <value_key>
    // This is useful to replace a specific value of a JSON file, without having to parse the entire thing
    function writeJson(string calldata json, string calldata path, string calldata valueKey) external;
}

// The `Vm` interface does allow manipulation of the EVM state. These are all intended to be used
// in tests, but it is not recommended to use these cheats in scripts.
interface Vm is VmSafe {
    // ======== EVM  ========

    // -------- Block and Transaction Properties --------

    // Sets block.chainid
    function chainId(uint256 newChainId) external;

    // Sets block.coinbase
    function coinbase(address newCoinbase) external;

    // Sets block.difficulty
    // Not available on EVM versions from Paris onwards. Use `prevrandao` instead.
    // If used on unsupported EVM versions it will revert.
    function difficulty(uint256 newDifficulty) external;

    // Sets block.basefee
    function fee(uint256 newBasefee) external;

    // Sets block.prevrandao
    // Not available on EVM versions before Paris. Use `difficulty` instead.
    // If used on unsupported EVM versions it will revert.
    function prevrandao(bytes32 newPrevrandao) external;

    // Sets block.height
    function roll(uint256 newHeight) external;

    // Sets tx.gasprice
    function txGasPrice(uint256 newGasPrice) external;

    // Sets block.timestamp
    function warp(uint256 newTimestamp) external;

    // -------- Account State --------

    // Sets an address' balance
    function deal(address account, uint256 newBalance) external;

    // Sets an address' code
    function etch(address target, bytes calldata newRuntimeBytecode) external;

    // Resets the nonce of an account to 0 for EOAs and 1 for contract accounts
    function resetNonce(address account) external;

    // Sets the nonce of an account; must be higher than the current nonce of the account
    function setNonce(address account, uint64 newNonce) external;

    // Sets the nonce of an account to an arbitrary value
    function setNonceUnsafe(address account, uint64 newNonce) external;

    // Stores a value to an address' storage slot.
    function store(address target, bytes32 slot, bytes32 value) external;

    // -------- Call Manipulation --------
    // --- Mocks ---

    // Clears all mocked calls
    function clearMockedCalls() external;

    // Mocks a call to an address, returning specified data.
    // Calldata can either be strict or a partial match, e.g. if you only
    // pass a Solidity selector to the expected calldata, then the entire Solidity
    // function will be mocked.
    function mockCall(address callee, bytes calldata data, bytes calldata returnData) external;

    // Mocks a call to an address with a specific msg.value, returning specified data.
    // Calldata match takes precedence over msg.value in case of ambiguity.
    function mockCall(address callee, uint256 msgValue, bytes calldata data, bytes calldata returnData) external;

    // Reverts a call to an address with specified revert data.
    function mockCallRevert(address callee, bytes calldata data, bytes calldata revertData) external;

    // Reverts a call to an address with a specific msg.value, with specified revert data.
    function mockCallRevert(address callee, uint256 msgValue, bytes calldata data, bytes calldata revertData)
        external;

    // --- Impersonation (pranks) ---

    // Sets the *next* call's msg.sender to be the input address
    function prank(address msgSender) external;

    // Sets all subsequent calls' msg.sender to be the input address until `stopPrank` is called
    function startPrank(address msgSender) external;

    // Sets the *next* call's msg.sender to be the input address, and the tx.origin to be the second input
    function prank(address msgSender, address txOrigin) external;

    // Sets all subsequent calls' msg.sender to be the input address until `stopPrank` is called, and the tx.origin to be the second input
    function startPrank(address msgSender, address txOrigin) external;

    // Resets subsequent calls' msg.sender to be `address(this)`
    function stopPrank() external;

    // Reads the current `msg.sender` and `tx.origin` from state and reports if there is any active caller modification
    function readCallers() external returns (CallerMode callerMode, address msgSender, address txOrigin);

    // -------- State Snapshots --------

    // Snapshot the current state of the evm.
    // Returns the id of the snapshot that was created.
    // To revert a snapshot use `revertTo`
    function snapshot() external returns (uint256 snapshotId);

    // Revert the state of the EVM to a previous snapshot
    // Takes the snapshot id to revert to.
    // This deletes the snapshot and all snapshots taken after the given snapshot id.
    function revertTo(uint256 snapshotId) external returns (bool success);

    // -------- Forking --------
    // --- Creation and Selection ---

    // Returns the identifier of the currently active fork. Reverts if no fork is currently active.
    function activeFork() external view returns (uint256 forkId);

    // Creates a new fork with the given endpoint and block and returns the identifier of the fork
    function createFork(string calldata urlOrAlias, uint256 blockNumber) external returns (uint256 forkId);

    // Creates a new fork with the given endpoint and the _latest_ block and returns the identifier of the fork
    function createFork(string calldata urlOrAlias) external returns (uint256 forkId);

    // Creates a new fork with the given endpoint and at the block the given transaction was mined in, replays all transaction mined in the block before the transaction,
    // and returns the identifier of the fork
    function createFork(string calldata urlOrAlias, bytes32 txHash) external returns (uint256 forkId);

    // Creates and also selects a new fork with the given endpoint and block and returns the identifier of the fork
    function createSelectFork(string calldata urlOrAlias, uint256 blockNumber) external returns (uint256 forkId);

    // Creates and also selects new fork with the given endpoint and at the block the given transaction was mined in, replays all transaction mined in the block before
    // the transaction, returns the identifier of the fork
    function createSelectFork(string calldata urlOrAlias, bytes32 txHash) external returns (uint256 forkId);

    // Creates and also selects a new fork with the given endpoint and the latest block and returns the identifier of the fork
    function createSelectFork(string calldata urlOrAlias) external returns (uint256 forkId);

    // Updates the currently active fork to given block number
    // This is similar to `roll` but for the currently active fork
    function rollFork(uint256 blockNumber) external;

    // Updates the currently active fork to given transaction
    // this will `rollFork` with the number of the block the transaction was mined in and replays all transaction mined before it in the block
    function rollFork(bytes32 txHash) external;

    // Updates the given fork to given block number
    function rollFork(uint256 forkId, uint256 blockNumber) external;

    // Updates the given fork to block number of the given transaction and replays all transaction mined before it in the block
    function rollFork(uint256 forkId, bytes32 txHash) external;

    // Takes a fork identifier created by `createFork` and sets the corresponding forked state as active.
    function selectFork(uint256 forkId) external;

    // Fetches the given transaction from the active fork and executes it on the current state
    function transact(bytes32 txHash) external;

    // Fetches the given transaction from the given fork and executes it on the current state
    function transact(uint256 forkId, bytes32 txHash) external;

    // --- Behavior ---

    // In forking mode, explicitly grant the given address cheatcode access
    function allowCheatcodes(address account) external;

    // Marks that the account(s) should use persistent storage across fork swaps in a multifork setup
    // Meaning, changes made to the state of this account will be kept when switching forks
    function makePersistent(address account) external;
    function makePersistent(address account0, address account1) external;
    function makePersistent(address account0, address account1, address account2) external;
    function makePersistent(address[] calldata accounts) external;

    // Revokes persistent status from the address, previously added via `makePersistent`
    function revokePersistent(address account) external;
    function revokePersistent(address[] calldata accounts) external;

    // Returns true if the account is marked as persistent
    function isPersistent(address account) external view returns (bool persistent);

    // ======== Test Assertions and Utilities ========

    // Expects a call to an address with the specified calldata.
    // Calldata can either be a strict or a partial match
    function expectCall(address callee, bytes calldata data) external;

    // Expects given number of calls to an address with the specified calldata.
    function expectCall(address callee, bytes calldata data, uint64 count) external;

    // Expects a call to an address with the specified msg.value and calldata
    function expectCall(address callee, uint256 msgValue, bytes calldata data) external;

    // Expects given number of calls to an address with the specified msg.value and calldata
    function expectCall(address callee, uint256 msgValue, bytes calldata data, uint64 count) external;

    // Expect a call to an address with the specified msg.value, gas, and calldata.
    function expectCall(address callee, uint256 msgValue, uint64 gas, bytes calldata data) external;

    // Expects given number of calls to an address with the specified msg.value, gas, and calldata.
    function expectCall(address callee, uint256 msgValue, uint64 gas, bytes calldata data, uint64 count) external;

    // Expect a call to an address with the specified msg.value and calldata, and a *minimum* amount of gas.
    function expectCallMinGas(address callee, uint256 msgValue, uint64 minGas, bytes calldata data) external;

    // Expect given number of calls to an address with the specified msg.value and calldata, and a *minimum* amount of gas.
    function expectCallMinGas(address callee, uint256 msgValue, uint64 minGas, bytes calldata data, uint64 count)
        external;

    // Prepare an expected log with (bool checkTopic1, bool checkTopic2, bool checkTopic3, bool checkData).
    // Call this function, then emit an event, then call a function. Internally after the call, we check if
    // logs were emitted in the expected order with the expected topics and data (as specified by the booleans).
    function expectEmit(bool checkTopic1, bool checkTopic2, bool checkTopic3, bool checkData) external;

    // Same as the previous method, but also checks supplied address against emitting contract.
    function expectEmit(bool checkTopic1, bool checkTopic2, bool checkTopic3, bool checkData, address emitter)
        external;

    // Prepare an expected log with all topic and data checks enabled.
    // Call this function, then emit an event, then call a function. Internally after the call, we check if
    // logs were emitted in the expected order with the expected topics and data.
    function expectEmit() external;

    // Same as the previous method, but also checks supplied address against emitting contract.
    function expectEmit(address emitter) external;

    // Expects an error on next call that exactly matches the revert data.
    function expectRevert(bytes calldata revertData) external;

    // Expects an error on next call that starts with the revert data.
    function expectRevert(bytes4 revertData) external;

    // Expects an error on next call with any revert data.
    function expectRevert() external;

    // Only allows memory writes to offsets [0x00, 0x60) ∪ [min, max) in the current subcontext. If any other
    // memory is written to, the test will fail. Can be called multiple times to add more ranges to the set.
    function expectSafeMemory(uint64 min, uint64 max) external;

    // Only allows memory writes to offsets [0x00, 0x60) ∪ [min, max) in the next created subcontext.
    // If any other memory is written to, the test will fail. Can be called multiple times to add more ranges
    // to the set.
    function expectSafeMemoryCall(uint64 min, uint64 max) external;

    // Marks a test as skipped. Must be called at the top of the test.
    function skip(bool skipTest) external;
}

/**
 * StdChains provides information about EVM compatible chains that can be used in scripts/tests.
 * For each chain, the chain's name, chain ID, and a default RPC URL are provided. Chains are
 * identified by their alias, which is the same as the alias in the `[rpc_endpoints]` section of
 * the `foundry.toml` file. For best UX, ensure the alias in the `foundry.toml` file match the
 * alias used in this contract, which can be found as the first argument to the
 * `setChainWithDefaultRpcUrl` call in the `initializeStdChains` function.
 *
 * There are two main ways to use this contract:
 *   1. Set a chain with `setChain(string memory chainAlias, ChainData memory chain)` or
 *      `setChain(string memory chainAlias, Chain memory chain)`
 *   2. Get a chain with `getChain(string memory chainAlias)` or `getChain(uint256 chainId)`.
 *
 * The first time either of those are used, chains are initialized with the default set of RPC URLs.
 * This is done in `initializeStdChains`, which uses `setChainWithDefaultRpcUrl`. Defaults are recorded in
 * `defaultRpcUrls`.
 *
 * The `setChain` function is straightforward, and it simply saves off the given chain data.
 *
 * The `getChain` methods use `getChainWithUpdatedRpcUrl` to return a chain. For example, let's say
 * we want to retrieve the RPC URL for `mainnet`:
 *   - If you have specified data with `setChain`, it will return that.
 *   - If you have configured a mainnet RPC URL in `foundry.toml`, it will return the URL, provided it
 *     is valid (e.g. a URL is specified, or an environment variable is given and exists).
 *   - If neither of the above conditions is met, the default data is returned.
 *
 * Summarizing the above, the prioritization hierarchy is `setChain` -> `foundry.toml` -> environment variable -> defaults.
 */
abstract contract StdChains {
    VmSafe private constant vm = VmSafe(address(uint160(uint256(keccak256("hevm cheat code")))));

    bool private stdChainsInitialized;

    struct ChainData {
        string name;
        uint256 chainId;
        string rpcUrl;
    }

    struct Chain {
        // The chain name.
        string name;
        // The chain's Chain ID.
        uint256 chainId;
        // The chain's alias. (i.e. what gets specified in `foundry.toml`).
        string chainAlias;
        // A default RPC endpoint for this chain.
        // NOTE: This default RPC URL is included for convenience to facilitate quick tests and
        // experimentation. Do not use this RPC URL for production test suites, CI, or other heavy
        // usage as you will be throttled and this is a disservice to others who need this endpoint.
        string rpcUrl;
    }

    // Maps from the chain's alias (matching the alias in the `foundry.toml` file) to chain data.
    mapping(string => Chain) private chains;
    // Maps from the chain's alias to it's default RPC URL.
    mapping(string => string) private defaultRpcUrls;
    // Maps from a chain ID to it's alias.
    mapping(uint256 => string) private idToAlias;

    bool private fallbackToDefaultRpcUrls = true;

    // The RPC URL will be fetched from config or defaultRpcUrls if possible.
    function getChain(string memory chainAlias) internal virtual returns (Chain memory chain) {
        require(bytes(chainAlias).length != 0, "StdChains getChain(string): Chain alias cannot be the empty string.");

        initializeStdChains();
        chain = chains[chainAlias];
        require(
            chain.chainId != 0,
            string(abi.encodePacked("StdChains getChain(string): Chain with alias \"", chainAlias, "\" not found."))
        );

        chain = getChainWithUpdatedRpcUrl(chainAlias, chain);
    }

    function getChain(uint256 chainId) internal virtual returns (Chain memory chain) {
        require(chainId != 0, "StdChains getChain(uint256): Chain ID cannot be 0.");
        initializeStdChains();
        string memory chainAlias = idToAlias[chainId];

        chain = chains[chainAlias];

        require(
            chain.chainId != 0,
            string(abi.encodePacked("StdChains getChain(uint256): Chain with ID ", vm.toString(chainId), " not found."))
        );

        chain = getChainWithUpdatedRpcUrl(chainAlias, chain);
    }

    // set chain info, with priority to argument's rpcUrl field.
    function setChain(string memory chainAlias, ChainData memory chain) internal virtual {
        require(
            bytes(chainAlias).length != 0,
            "StdChains setChain(string,ChainData): Chain alias cannot be the empty string."
        );

        require(chain.chainId != 0, "StdChains setChain(string,ChainData): Chain ID cannot be 0.");

        initializeStdChains();
        string memory foundAlias = idToAlias[chain.chainId];

        require(
            bytes(foundAlias).length == 0 || keccak256(bytes(foundAlias)) == keccak256(bytes(chainAlias)),
            string(
                abi.encodePacked(
                    "StdChains setChain(string,ChainData): Chain ID ",
                    vm.toString(chain.chainId),
                    " already used by \"",
                    foundAlias,
                    "\"."
                )
            )
        );

        uint256 oldChainId = chains[chainAlias].chainId;
        delete idToAlias[oldChainId];

        chains[chainAlias] =
            Chain({name: chain.name, chainId: chain.chainId, chainAlias: chainAlias, rpcUrl: chain.rpcUrl});
        idToAlias[chain.chainId] = chainAlias;
    }

    // set chain info, with priority to argument's rpcUrl field.
    function setChain(string memory chainAlias, Chain memory chain) internal virtual {
        setChain(chainAlias, ChainData({name: chain.name, chainId: chain.chainId, rpcUrl: chain.rpcUrl}));
    }

    function _toUpper(string memory str) private pure returns (string memory) {
        bytes memory strb = bytes(str);
        bytes memory copy = new bytes(strb.length);
        for (uint256 i = 0; i < strb.length; i++) {
            bytes1 b = strb[i];
            if (b >= 0x61 && b <= 0x7A) {
                copy[i] = bytes1(uint8(b) - 32);
            } else {
                copy[i] = b;
            }
        }
        return string(copy);
    }

    // lookup rpcUrl, in descending order of priority:
    // current -> config (foundry.toml) -> environment variable -> default
    function getChainWithUpdatedRpcUrl(string memory chainAlias, Chain memory chain) private returns (Chain memory) {
        if (bytes(chain.rpcUrl).length == 0) {
            try vm.rpcUrl(chainAlias) returns (string memory configRpcUrl) {
                chain.rpcUrl = configRpcUrl;
            } catch (bytes memory err) {
                string memory envName = string(abi.encodePacked(_toUpper(chainAlias), "_RPC_URL"));
                if (fallbackToDefaultRpcUrls) {
                    chain.rpcUrl = vm.envOr(envName, defaultRpcUrls[chainAlias]);
                } else {
                    chain.rpcUrl = vm.envString(envName);
                }
                // distinguish 'not found' from 'cannot read'
                bytes memory notFoundError =
                    abi.encodeWithSignature("CheatCodeError", string(abi.encodePacked("invalid rpc url ", chainAlias)));
                if (keccak256(notFoundError) != keccak256(err) || bytes(chain.rpcUrl).length == 0) {
                    /// @solidity memory-safe-assembly
                    assembly {
                        revert(add(32, err), mload(err))
                    }
                }
            }
        }
        return chain;
    }

    function setFallbackToDefaultRpcUrls(bool useDefault) internal {
        fallbackToDefaultRpcUrls = useDefault;
    }

    function initializeStdChains() private {
        if (stdChainsInitialized) return;

        stdChainsInitialized = true;

        // If adding an RPC here, make sure to test the default RPC URL in `testRpcs`
        setChainWithDefaultRpcUrl("anvil", ChainData("Anvil", 31337, "http://127.0.0.1:8545"));
        setChainWithDefaultRpcUrl(
            "mainnet", ChainData("Mainnet", 1, "https://mainnet.infura.io/v3/b9794ad1ddf84dfb8c34d6bb5dca2001")
        );
        setChainWithDefaultRpcUrl(
            "goerli", ChainData("Goerli", 5, "https://goerli.infura.io/v3/b9794ad1ddf84dfb8c34d6bb5dca2001")
        );
        setChainWithDefaultRpcUrl(
            "sepolia", ChainData("Sepolia", 11155111, "https://sepolia.infura.io/v3/b9794ad1ddf84dfb8c34d6bb5dca2001")
        );
        setChainWithDefaultRpcUrl("optimism", ChainData("Optimism", 10, "https://mainnet.optimism.io"));
        setChainWithDefaultRpcUrl("optimism_goerli", ChainData("Optimism Goerli", 420, "https://goerli.optimism.io"));
        setChainWithDefaultRpcUrl("arbitrum_one", ChainData("Arbitrum One", 42161, "https://arb1.arbitrum.io/rpc"));
        setChainWithDefaultRpcUrl(
            "arbitrum_one_goerli", ChainData("Arbitrum One Goerli", 421613, "https://goerli-rollup.arbitrum.io/rpc")
        );
        setChainWithDefaultRpcUrl("arbitrum_nova", ChainData("Arbitrum Nova", 42170, "https://nova.arbitrum.io/rpc"));
        setChainWithDefaultRpcUrl("polygon", ChainData("Polygon", 137, "https://polygon-rpc.com"));
        setChainWithDefaultRpcUrl(
            "polygon_mumbai", ChainData("Polygon Mumbai", 80001, "https://rpc-mumbai.maticvigil.com")
        );
        setChainWithDefaultRpcUrl("avalanche", ChainData("Avalanche", 43114, "https://api.avax.network/ext/bc/C/rpc"));
        setChainWithDefaultRpcUrl(
            "avalanche_fuji", ChainData("Avalanche Fuji", 43113, "https://api.avax-test.network/ext/bc/C/rpc")
        );
        setChainWithDefaultRpcUrl(
            "bnb_smart_chain", ChainData("BNB Smart Chain", 56, "https://bsc-dataseed1.binance.org")
        );
        setChainWithDefaultRpcUrl(
            "bnb_smart_chain_testnet",
            ChainData("BNB Smart Chain Testnet", 97, "https://rpc.ankr.com/bsc_testnet_chapel")
        );
        setChainWithDefaultRpcUrl("gnosis_chain", ChainData("Gnosis Chain", 100, "https://rpc.gnosischain.com"));
        setChainWithDefaultRpcUrl("moonbeam", ChainData("Moonbeam", 1284, "https://rpc.api.moonbeam.network"));
        setChainWithDefaultRpcUrl(
            "moonriver", ChainData("Moonriver", 1285, "https://rpc.api.moonriver.moonbeam.network")
        );
        setChainWithDefaultRpcUrl("moonbase", ChainData("Moonbase", 1287, "https://rpc.testnet.moonbeam.network"));
        setChainWithDefaultRpcUrl("base_goerli", ChainData("Base Goerli", 84531, "https://goerli.base.org"));
        setChainWithDefaultRpcUrl("base", ChainData("Base", 8453, "https://mainnet.base.org"));
    }

    // set chain info, with priority to chainAlias' rpc url in foundry.toml
    function setChainWithDefaultRpcUrl(string memory chainAlias, ChainData memory chain) private {
        string memory rpcUrl = chain.rpcUrl;
        defaultRpcUrls[chainAlias] = rpcUrl;
        chain.rpcUrl = "";
        setChain(chainAlias, chain);
        chain.rpcUrl = rpcUrl; // restore argument
    }
}

struct StdStorage {
    mapping(address => mapping(bytes4 => mapping(bytes32 => uint256))) slots;
    mapping(address => mapping(bytes4 => mapping(bytes32 => bool))) finds;
    bytes32[] _keys;
    bytes4 _sig;
    uint256 _depth;
    address _target;
    bytes32 _set;
}

library stdStorageSafe {
    event SlotFound(address who, bytes4 fsig, bytes32 keysHash, uint256 slot);
    event WARNING_UninitedSlot(address who, uint256 slot);

    Vm private constant vm = Vm(address(uint160(uint256(keccak256("hevm cheat code")))));

    function sigs(string memory sigStr) internal pure returns (bytes4) {
        return bytes4(keccak256(bytes(sigStr)));
    }

    /// @notice find an arbitrary storage slot given a function sig, input data, address of the contract and a value to check against
    // slot complexity:
    //  if flat, will be bytes32(uint256(uint));
    //  if map, will be keccak256(abi.encode(key, uint(slot)));
    //  if deep map, will be keccak256(abi.encode(key1, keccak256(abi.encode(key0, uint(slot)))));
    //  if map struct, will be bytes32(uint256(keccak256(abi.encode(key1, keccak256(abi.encode(key0, uint(slot)))))) + structFieldDepth);
    function find(StdStorage storage self) internal returns (uint256) {
        address who = self._target;
        bytes4 fsig = self._sig;
        uint256 field_depth = self._depth;
        bytes32[] memory ins = self._keys;

        // calldata to test against
        if (self.finds[who][fsig][keccak256(abi.encodePacked(ins, field_depth))]) {
            return self.slots[who][fsig][keccak256(abi.encodePacked(ins, field_depth))];
        }
        bytes memory cald = abi.encodePacked(fsig, flatten(ins));
        vm.record();
        bytes32 fdat;
        {
            (, bytes memory rdat) = who.staticcall(cald);
            fdat = bytesToBytes32(rdat, 32 * field_depth);
        }

        (bytes32[] memory reads,) = vm.accesses(address(who));
        if (reads.length == 1) {
            bytes32 curr = vm.load(who, reads[0]);
            if (curr == bytes32(0)) {
                emit WARNING_UninitedSlot(who, uint256(reads[0]));
            }
            if (fdat != curr) {
                require(
                    false,
                    "stdStorage find(StdStorage): Packed slot. This would cause dangerous overwriting and currently isn't supported."
                );
            }
            emit SlotFound(who, fsig, keccak256(abi.encodePacked(ins, field_depth)), uint256(reads[0]));
            self.slots[who][fsig][keccak256(abi.encodePacked(ins, field_depth))] = uint256(reads[0]);
            self.finds[who][fsig][keccak256(abi.encodePacked(ins, field_depth))] = true;
        } else if (reads.length > 1) {
            for (uint256 i = 0; i < reads.length; i++) {
                bytes32 prev = vm.load(who, reads[i]);
                if (prev == bytes32(0)) {
                    emit WARNING_UninitedSlot(who, uint256(reads[i]));
                }
                if (prev != fdat) {
                    continue;
                }
                bytes32 new_val = ~prev;
                // store
                vm.store(who, reads[i], new_val);
                bool success;
                {
                    bytes memory rdat;
                    (success, rdat) = who.staticcall(cald);
                    fdat = bytesToBytes32(rdat, 32 * field_depth);
                }

                if (success && fdat == new_val) {
                    // we found which of the slots is the actual one
                    emit SlotFound(who, fsig, keccak256(abi.encodePacked(ins, field_depth)), uint256(reads[i]));
                    self.slots[who][fsig][keccak256(abi.encodePacked(ins, field_depth))] = uint256(reads[i]);
                    self.finds[who][fsig][keccak256(abi.encodePacked(ins, field_depth))] = true;
                    vm.store(who, reads[i], prev);
                    break;
                }
                vm.store(who, reads[i], prev);
            }
        } else {
            revert("stdStorage find(StdStorage): No storage use detected for target.");
        }

        require(
            self.finds[who][fsig][keccak256(abi.encodePacked(ins, field_depth))],
            "stdStorage find(StdStorage): Slot(s) not found."
        );

        delete self._target;
        delete self._sig;
        delete self._keys;
        delete self._depth;

        return self.slots[who][fsig][keccak256(abi.encodePacked(ins, field_depth))];
    }

    function target(StdStorage storage self, address _target) internal returns (StdStorage storage) {
        self._target = _target;
        return self;
    }

    function sig(StdStorage storage self, bytes4 _sig) internal returns (StdStorage storage) {
        self._sig = _sig;
        return self;
    }

    function sig(StdStorage storage self, string memory _sig) internal returns (StdStorage storage) {
        self._sig = sigs(_sig);
        return self;
    }

    function with_key(StdStorage storage self, address who) internal returns (StdStorage storage) {
        self._keys.push(bytes32(uint256(uint160(who))));
        return self;
    }

    function with_key(StdStorage storage self, uint256 amt) internal returns (StdStorage storage) {
        self._keys.push(bytes32(amt));
        return self;
    }

    function with_key(StdStorage storage self, bytes32 key) internal returns (StdStorage storage) {
        self._keys.push(key);
        return self;
    }

    function depth(StdStorage storage self, uint256 _depth) internal returns (StdStorage storage) {
        self._depth = _depth;
        return self;
    }

    function read(StdStorage storage self) private returns (bytes memory) {
        address t = self._target;
        uint256 s = find(self);
        return abi.encode(vm.load(t, bytes32(s)));
    }

    function read_bytes32(StdStorage storage self) internal returns (bytes32) {
        return abi.decode(read(self), (bytes32));
    }

    function read_bool(StdStorage storage self) internal returns (bool) {
        int256 v = read_int(self);
        if (v == 0) return false;
        if (v == 1) return true;
        revert("stdStorage read_bool(StdStorage): Cannot decode. Make sure you are reading a bool.");
    }

    function read_address(StdStorage storage self) internal returns (address) {
        return abi.decode(read(self), (address));
    }

    function read_uint(StdStorage storage self) internal returns (uint256) {
        return abi.decode(read(self), (uint256));
    }

    function read_int(StdStorage storage self) internal returns (int256) {
        return abi.decode(read(self), (int256));
    }

    function parent(StdStorage storage self) internal returns (uint256, bytes32) {
        address who = self._target;
        uint256 field_depth = self._depth;
        vm.startMappingRecording();
        uint256 child = find(self) - field_depth;
        (bool found, bytes32 key, bytes32 parent_slot) = vm.getMappingKeyAndParentOf(who, bytes32(child));
        if (!found) {
            revert(
                "stdStorage read_bool(StdStorage): Cannot find parent. Make sure you give a slot and startMappingRecording() has been called."
            );
        }
        return (uint256(parent_slot), key);
    }

    function root(StdStorage storage self) internal returns (uint256) {
        address who = self._target;
        uint256 field_depth = self._depth;
        vm.startMappingRecording();
        uint256 child = find(self) - field_depth;
        bool found;
        bytes32 root_slot;
        bytes32 parent_slot;
        (found,, parent_slot) = vm.getMappingKeyAndParentOf(who, bytes32(child));
        if (!found) {
            revert(
                "stdStorage read_bool(StdStorage): Cannot find parent. Make sure you give a slot and startMappingRecording() has been called."
            );
        }
        while (found) {
            root_slot = parent_slot;
            (found,, parent_slot) = vm.getMappingKeyAndParentOf(who, bytes32(root_slot));
        }
        return uint256(root_slot);
    }

    function bytesToBytes32(bytes memory b, uint256 offset) private pure returns (bytes32) {
        bytes32 out;

        uint256 max = b.length > 32 ? 32 : b.length;
        for (uint256 i = 0; i < max; i++) {
            out |= bytes32(b[offset + i] & 0xFF) >> (i * 8);
        }
        return out;
    }

    function flatten(bytes32[] memory b) private pure returns (bytes memory) {
        bytes memory result = new bytes(b.length * 32);
        for (uint256 i = 0; i < b.length; i++) {
            bytes32 k = b[i];
            /// @solidity memory-safe-assembly
            assembly {
                mstore(add(result, add(32, mul(32, i))), k)
            }
        }

        return result;
    }
}

library stdStorage {
    Vm private constant vm = Vm(address(uint160(uint256(keccak256("hevm cheat code")))));

    function sigs(string memory sigStr) internal pure returns (bytes4) {
        return stdStorageSafe.sigs(sigStr);
    }

    function find(StdStorage storage self) internal returns (uint256) {
        return stdStorageSafe.find(self);
    }

    function target(StdStorage storage self, address _target) internal returns (StdStorage storage) {
        return stdStorageSafe.target(self, _target);
    }

    function sig(StdStorage storage self, bytes4 _sig) internal returns (StdStorage storage) {
        return stdStorageSafe.sig(self, _sig);
    }

    function sig(StdStorage storage self, string memory _sig) internal returns (StdStorage storage) {
        return stdStorageSafe.sig(self, _sig);
    }

    function with_key(StdStorage storage self, address who) internal returns (StdStorage storage) {
        return stdStorageSafe.with_key(self, who);
    }

    function with_key(StdStorage storage self, uint256 amt) internal returns (StdStorage storage) {
        return stdStorageSafe.with_key(self, amt);
    }

    function with_key(StdStorage storage self, bytes32 key) internal returns (StdStorage storage) {
        return stdStorageSafe.with_key(self, key);
    }

    function depth(StdStorage storage self, uint256 _depth) internal returns (StdStorage storage) {
        return stdStorageSafe.depth(self, _depth);
    }

    function checked_write(StdStorage storage self, address who) internal {
        checked_write(self, bytes32(uint256(uint160(who))));
    }

    function checked_write(StdStorage storage self, uint256 amt) internal {
        checked_write(self, bytes32(amt));
    }

    function checked_write_int(StdStorage storage self, int256 val) internal {
        checked_write(self, bytes32(uint256(val)));
    }

    function checked_write(StdStorage storage self, bool write) internal {
        bytes32 t;
        /// @solidity memory-safe-assembly
        assembly {
            t := write
        }
        checked_write(self, t);
    }

    function checked_write(StdStorage storage self, bytes32 set) internal {
        address who = self._target;
        bytes4 fsig = self._sig;
        uint256 field_depth = self._depth;
        bytes32[] memory ins = self._keys;

        bytes memory cald = abi.encodePacked(fsig, flatten(ins));
        if (!self.finds[who][fsig][keccak256(abi.encodePacked(ins, field_depth))]) {
            find(self);
        }
        bytes32 slot = bytes32(self.slots[who][fsig][keccak256(abi.encodePacked(ins, field_depth))]);

        bytes32 fdat;
        {
            (, bytes memory rdat) = who.staticcall(cald);
            fdat = bytesToBytes32(rdat, 32 * field_depth);
        }
        bytes32 curr = vm.load(who, slot);

        if (fdat != curr) {
            require(
                false,
                "stdStorage find(StdStorage): Packed slot. This would cause dangerous overwriting and currently isn't supported."
            );
        }
        vm.store(who, slot, set);
        delete self._target;
        delete self._sig;
        delete self._keys;
        delete self._depth;
    }

    function read_bytes32(StdStorage storage self) internal returns (bytes32) {
        return stdStorageSafe.read_bytes32(self);
    }

    function read_bool(StdStorage storage self) internal returns (bool) {
        return stdStorageSafe.read_bool(self);
    }

    function read_address(StdStorage storage self) internal returns (address) {
        return stdStorageSafe.read_address(self);
    }

    function read_uint(StdStorage storage self) internal returns (uint256) {
        return stdStorageSafe.read_uint(self);
    }

    function read_int(StdStorage storage self) internal returns (int256) {
        return stdStorageSafe.read_int(self);
    }

    function parent(StdStorage storage self) internal returns (uint256, bytes32) {
        return stdStorageSafe.parent(self);
    }

    function root(StdStorage storage self) internal returns (uint256) {
        return stdStorageSafe.root(self);
    }

    // Private function so needs to be copied over
    function bytesToBytes32(bytes memory b, uint256 offset) private pure returns (bytes32) {
        bytes32 out;

        uint256 max = b.length > 32 ? 32 : b.length;
        for (uint256 i = 0; i < max; i++) {
            out |= bytes32(b[offset + i] & 0xFF) >> (i * 8);
        }
        return out;
    }

    // Private function so needs to be copied over
    function flatten(bytes32[] memory b) private pure returns (bytes memory) {
        bytes memory result = new bytes(b.length * 32);
        for (uint256 i = 0; i < b.length; i++) {
            bytes32 k = b[i];
            /// @solidity memory-safe-assembly
            assembly {
                mstore(add(result, add(32, mul(32, i))), k)
            }
        }

        return result;
    }
}

abstract contract StdCheatsSafe {
    Vm private constant vm = Vm(address(uint160(uint256(keccak256("hevm cheat code")))));

    uint256 private constant UINT256_MAX =
        115792089237316195423570985008687907853269984665640564039457584007913129639935;

    bool private gasMeteringOff;

    // Data structures to parse Transaction objects from the broadcast artifact
    // that conform to EIP1559. The Raw structs is what is parsed from the JSON
    // and then converted to the one that is used by the user for better UX.

    struct RawTx1559 {
        string[] arguments;
        address contractAddress;
        string contractName;
        // json value name = function
        string functionSig;
        bytes32 hash;
        // json value name = tx
        RawTx1559Detail txDetail;
        // json value name = type
        string opcode;
    }

    struct RawTx1559Detail {
        AccessList[] accessList;
        bytes data;
        address from;
        bytes gas;
        bytes nonce;
        address to;
        bytes txType;
        bytes value;
    }

    struct Tx1559 {
        string[] arguments;
        address contractAddress;
        string contractName;
        string functionSig;
        bytes32 hash;
        Tx1559Detail txDetail;
        string opcode;
    }

    struct Tx1559Detail {
        AccessList[] accessList;
        bytes data;
        address from;
        uint256 gas;
        uint256 nonce;
        address to;
        uint256 txType;
        uint256 value;
    }

    // Data structures to parse Transaction objects from the broadcast artifact
    // that DO NOT conform to EIP1559. The Raw structs is what is parsed from the JSON
    // and then converted to the one that is used by the user for better UX.

    struct TxLegacy {
        string[] arguments;
        address contractAddress;
        string contractName;
        string functionSig;
        string hash;
        string opcode;
        TxDetailLegacy transaction;
    }

    struct TxDetailLegacy {
        AccessList[] accessList;
        uint256 chainId;
        bytes data;
        address from;
        uint256 gas;
        uint256 gasPrice;
        bytes32 hash;
        uint256 nonce;
        bytes1 opcode;
        bytes32 r;
        bytes32 s;
        uint256 txType;
        address to;
        uint8 v;
        uint256 value;
    }

    struct AccessList {
        address accessAddress;
        bytes32[] storageKeys;
    }

    // Data structures to parse Receipt objects from the broadcast artifact.
    // The Raw structs is what is parsed from the JSON
    // and then converted to the one that is used by the user for better UX.

    struct RawReceipt {
        bytes32 blockHash;
        bytes blockNumber;
        address contractAddress;
        bytes cumulativeGasUsed;
        bytes effectiveGasPrice;
        address from;
        bytes gasUsed;
        RawReceiptLog[] logs;
        bytes logsBloom;
        bytes status;
        address to;
        bytes32 transactionHash;
        bytes transactionIndex;
    }

    struct Receipt {
        bytes32 blockHash;
        uint256 blockNumber;
        address contractAddress;
        uint256 cumulativeGasUsed;
        uint256 effectiveGasPrice;
        address from;
        uint256 gasUsed;
        ReceiptLog[] logs;
        bytes logsBloom;
        uint256 status;
        address to;
        bytes32 transactionHash;
        uint256 transactionIndex;
    }

    // Data structures to parse the entire broadcast artifact, assuming the
    // transactions conform to EIP1559.

    struct EIP1559ScriptArtifact {
        string[] libraries;
        string path;
        string[] pending;
        Receipt[] receipts;
        uint256 timestamp;
        Tx1559[] transactions;
        TxReturn[] txReturns;
    }

    struct RawEIP1559ScriptArtifact {
        string[] libraries;
        string path;
        string[] pending;
        RawReceipt[] receipts;
        TxReturn[] txReturns;
        uint256 timestamp;
        RawTx1559[] transactions;
    }

    struct RawReceiptLog {
        // json value = address
        address logAddress;
        bytes32 blockHash;
        bytes blockNumber;
        bytes data;
        bytes logIndex;
        bool removed;
        bytes32[] topics;
        bytes32 transactionHash;
        bytes transactionIndex;
        bytes transactionLogIndex;
    }

    struct ReceiptLog {
        // json value = address
        address logAddress;
        bytes32 blockHash;
        uint256 blockNumber;
        bytes data;
        uint256 logIndex;
        bytes32[] topics;
        uint256 transactionIndex;
        uint256 transactionLogIndex;
        bool removed;
    }

    struct TxReturn {
        string internalType;
        string value;
    }

    struct Account {
        address addr;
        uint256 key;
    }

    enum AddressType {
        Payable,
        NonPayable,
        ZeroAddress,
        Precompile,
        ForgeAddress
    }

    // Checks that `addr` is not blacklisted by token contracts that have a blacklist.
    function assumeNotBlacklisted(address token, address addr) internal view virtual {
        // Nothing to check if `token` is not a contract.
        uint256 tokenCodeSize;
        assembly {
            tokenCodeSize := extcodesize(token)
        }
        require(tokenCodeSize > 0, "StdCheats assumeNotBlacklisted(address,address): Token address is not a contract.");

        bool success;
        bytes memory returnData;

        // 4-byte selector for `isBlacklisted(address)`, used by USDC.
        (success, returnData) = token.staticcall(abi.encodeWithSelector(0xfe575a87, addr));
        vm.assume(!success || abi.decode(returnData, (bool)) == false);

        // 4-byte selector for `isBlackListed(address)`, used by USDT.
        (success, returnData) = token.staticcall(abi.encodeWithSelector(0xe47d6060, addr));
        vm.assume(!success || abi.decode(returnData, (bool)) == false);
    }

    // Checks that `addr` is not blacklisted by token contracts that have a blacklist.
    // This is identical to `assumeNotBlacklisted(address,address)` but with a different name, for
    // backwards compatibility, since this name was used in the original PR which has already has
    // a release. This function can be removed in a future release once we want a breaking change.
    function assumeNoBlacklisted(address token, address addr) internal view virtual {
        assumeNotBlacklisted(token, addr);
    }

    function assumeAddressIsNot(address addr, AddressType addressType) internal virtual {
        if (addressType == AddressType.Payable) {
            assumeNotPayable(addr);
        } else if (addressType == AddressType.NonPayable) {
            assumePayable(addr);
        } else if (addressType == AddressType.ZeroAddress) {
            assumeNotZeroAddress(addr);
        } else if (addressType == AddressType.Precompile) {
            assumeNotPrecompile(addr);
        } else if (addressType == AddressType.ForgeAddress) {
            assumeNotForgeAddress(addr);
        }
    }

    function assumeAddressIsNot(address addr, AddressType addressType1, AddressType addressType2) internal virtual {
        assumeAddressIsNot(addr, addressType1);
        assumeAddressIsNot(addr, addressType2);
    }

    function assumeAddressIsNot(
        address addr,
        AddressType addressType1,
        AddressType addressType2,
        AddressType addressType3
    ) internal virtual {
        assumeAddressIsNot(addr, addressType1);
        assumeAddressIsNot(addr, addressType2);
        assumeAddressIsNot(addr, addressType3);
    }

    function assumeAddressIsNot(
        address addr,
        AddressType addressType1,
        AddressType addressType2,
        AddressType addressType3,
        AddressType addressType4
    ) internal virtual {
        assumeAddressIsNot(addr, addressType1);
        assumeAddressIsNot(addr, addressType2);
        assumeAddressIsNot(addr, addressType3);
        assumeAddressIsNot(addr, addressType4);
    }

    // This function checks whether an address, `addr`, is payable. It works by sending 1 wei to
    // `addr` and checking the `success` return value.
    // NOTE: This function may result in state changes depending on the fallback/receive logic
    // implemented by `addr`, which should be taken into account when this function is used.
    function _isPayable(address addr) private returns (bool) {
        require(
            addr.balance < UINT256_MAX,
            "StdCheats _isPayable(address): Balance equals max uint256, so it cannot receive any more funds"
        );
        uint256 origBalanceTest = address(this).balance;
        uint256 origBalanceAddr = address(addr).balance;

        vm.deal(address(this), 1);
        (bool success,) = payable(addr).call{value: 1}("");

        // reset balances
        vm.deal(address(this), origBalanceTest);
        vm.deal(addr, origBalanceAddr);

        return success;
    }

    // NOTE: This function may result in state changes depending on the fallback/receive logic
    // implemented by `addr`, which should be taken into account when this function is used. See the
    // `_isPayable` method for more information.
    function assumePayable(address addr) internal virtual {
        vm.assume(_isPayable(addr));
    }

    function assumeNotPayable(address addr) internal virtual {
        vm.assume(!_isPayable(addr));
    }

    function assumeNotZeroAddress(address addr) internal pure virtual {
        vm.assume(addr != address(0));
    }

    function assumeNotPrecompile(address addr) internal pure virtual {
        assumeNotPrecompile(addr, _pureChainId());
    }

    function assumeNotPrecompile(address addr, uint256 chainId) internal pure virtual {
        // Note: For some chains like Optimism these are technically predeploys (i.e. bytecode placed at a specific
        // address), but the same rationale for excluding them applies so we include those too.

        // These should be present on all EVM-compatible chains.
        vm.assume(addr < address(0x1) || addr > address(0x9));

        // forgefmt: disable-start
        if (chainId == 10 || chainId == 420) {
            // https://github.com/ethereum-optimism/optimism/blob/eaa371a0184b56b7ca6d9eb9cb0a2b78b2ccd864/op-bindings/predeploys/addresses.go#L6-L21
            vm.assume(addr < address(0x4200000000000000000000000000000000000000) || addr > address(0x4200000000000000000000000000000000000800));
        } else if (chainId == 42161 || chainId == 421613) {
            // https://developer.arbitrum.io/useful-addresses#arbitrum-precompiles-l2-same-on-all-arb-chains
            vm.assume(addr < address(0x0000000000000000000000000000000000000064) || addr > address(0x0000000000000000000000000000000000000068));
        } else if (chainId == 43114 || chainId == 43113) {
            // https://github.com/ava-labs/subnet-evm/blob/47c03fd007ecaa6de2c52ea081596e0a88401f58/precompile/params.go#L18-L59
            vm.assume(addr < address(0x0100000000000000000000000000000000000000) || addr > address(0x01000000000000000000000000000000000000ff));
            vm.assume(addr < address(0x0200000000000000000000000000000000000000) || addr > address(0x02000000000000000000000000000000000000FF));
            vm.assume(addr < address(0x0300000000000000000000000000000000000000) || addr > address(0x03000000000000000000000000000000000000Ff));
        }
        // forgefmt: disable-end
    }

    function assumeNotForgeAddress(address addr) internal pure virtual {
        // vm, console, and Create2Deployer addresses
        vm.assume(
            addr != address(vm) && addr != 0x000000000000000000636F6e736F6c652e6c6f67
                && addr != 0x4e59b44847b379578588920cA78FbF26c0B4956C
        );
    }

    function readEIP1559ScriptArtifact(string memory path)
        internal
        view
        virtual
        returns (EIP1559ScriptArtifact memory)
    {
        string memory data = vm.readFile(path);
        bytes memory parsedData = vm.parseJson(data);
        RawEIP1559ScriptArtifact memory rawArtifact = abi.decode(parsedData, (RawEIP1559ScriptArtifact));
        EIP1559ScriptArtifact memory artifact;
        artifact.libraries = rawArtifact.libraries;
        artifact.path = rawArtifact.path;
        artifact.timestamp = rawArtifact.timestamp;
        artifact.pending = rawArtifact.pending;
        artifact.txReturns = rawArtifact.txReturns;
        artifact.receipts = rawToConvertedReceipts(rawArtifact.receipts);
        artifact.transactions = rawToConvertedEIPTx1559s(rawArtifact.transactions);
        return artifact;
    }

    function rawToConvertedEIPTx1559s(RawTx1559[] memory rawTxs) internal pure virtual returns (Tx1559[] memory) {
        Tx1559[] memory txs = new Tx1559[](rawTxs.length);
        for (uint256 i; i < rawTxs.length; i++) {
            txs[i] = rawToConvertedEIPTx1559(rawTxs[i]);
        }
        return txs;
    }

    function rawToConvertedEIPTx1559(RawTx1559 memory rawTx) internal pure virtual returns (Tx1559 memory) {
        Tx1559 memory transaction;
        transaction.arguments = rawTx.arguments;
        transaction.contractName = rawTx.contractName;
        transaction.functionSig = rawTx.functionSig;
        transaction.hash = rawTx.hash;
        transaction.txDetail = rawToConvertedEIP1559Detail(rawTx.txDetail);
        transaction.opcode = rawTx.opcode;
        return transaction;
    }

    function rawToConvertedEIP1559Detail(RawTx1559Detail memory rawDetail)
        internal
        pure
        virtual
        returns (Tx1559Detail memory)
    {
        Tx1559Detail memory txDetail;
        txDetail.data = rawDetail.data;
        txDetail.from = rawDetail.from;
        txDetail.to = rawDetail.to;
        txDetail.nonce = _bytesToUint(rawDetail.nonce);
        txDetail.txType = _bytesToUint(rawDetail.txType);
        txDetail.value = _bytesToUint(rawDetail.value);
        txDetail.gas = _bytesToUint(rawDetail.gas);
        txDetail.accessList = rawDetail.accessList;
        return txDetail;
    }

    function readTx1559s(string memory path) internal view virtual returns (Tx1559[] memory) {
        string memory deployData = vm.readFile(path);
        bytes memory parsedDeployData = vm.parseJson(deployData, ".transactions");
        RawTx1559[] memory rawTxs = abi.decode(parsedDeployData, (RawTx1559[]));
        return rawToConvertedEIPTx1559s(rawTxs);
    }

    function readTx1559(string memory path, uint256 index) internal view virtual returns (Tx1559 memory) {
        string memory deployData = vm.readFile(path);
        string memory key = string(abi.encodePacked(".transactions[", vm.toString(index), "]"));
        bytes memory parsedDeployData = vm.parseJson(deployData, key);
        RawTx1559 memory rawTx = abi.decode(parsedDeployData, (RawTx1559));
        return rawToConvertedEIPTx1559(rawTx);
    }

    // Analogous to readTransactions, but for receipts.
    function readReceipts(string memory path) internal view virtual returns (Receipt[] memory) {
        string memory deployData = vm.readFile(path);
        bytes memory parsedDeployData = vm.parseJson(deployData, ".receipts");
        RawReceipt[] memory rawReceipts = abi.decode(parsedDeployData, (RawReceipt[]));
        return rawToConvertedReceipts(rawReceipts);
    }

    function readReceipt(string memory path, uint256 index) internal view virtual returns (Receipt memory) {
        string memory deployData = vm.readFile(path);
        string memory key = string(abi.encodePacked(".receipts[", vm.toString(index), "]"));
        bytes memory parsedDeployData = vm.parseJson(deployData, key);
        RawReceipt memory rawReceipt = abi.decode(parsedDeployData, (RawReceipt));
        return rawToConvertedReceipt(rawReceipt);
    }

    function rawToConvertedReceipts(RawReceipt[] memory rawReceipts) internal pure virtual returns (Receipt[] memory) {
        Receipt[] memory receipts = new Receipt[](rawReceipts.length);
        for (uint256 i; i < rawReceipts.length; i++) {
            receipts[i] = rawToConvertedReceipt(rawReceipts[i]);
        }
        return receipts;
    }

    function rawToConvertedReceipt(RawReceipt memory rawReceipt) internal pure virtual returns (Receipt memory) {
        Receipt memory receipt;
        receipt.blockHash = rawReceipt.blockHash;
        receipt.to = rawReceipt.to;
        receipt.from = rawReceipt.from;
        receipt.contractAddress = rawReceipt.contractAddress;
        receipt.effectiveGasPrice = _bytesToUint(rawReceipt.effectiveGasPrice);
        receipt.cumulativeGasUsed = _bytesToUint(rawReceipt.cumulativeGasUsed);
        receipt.gasUsed = _bytesToUint(rawReceipt.gasUsed);
        receipt.status = _bytesToUint(rawReceipt.status);
        receipt.transactionIndex = _bytesToUint(rawReceipt.transactionIndex);
        receipt.blockNumber = _bytesToUint(rawReceipt.blockNumber);
        receipt.logs = rawToConvertedReceiptLogs(rawReceipt.logs);
        receipt.logsBloom = rawReceipt.logsBloom;
        receipt.transactionHash = rawReceipt.transactionHash;
        return receipt;
    }

    function rawToConvertedReceiptLogs(RawReceiptLog[] memory rawLogs)
        internal
        pure
        virtual
        returns (ReceiptLog[] memory)
    {
        ReceiptLog[] memory logs = new ReceiptLog[](rawLogs.length);
        for (uint256 i; i < rawLogs.length; i++) {
            logs[i].logAddress = rawLogs[i].logAddress;
            logs[i].blockHash = rawLogs[i].blockHash;
            logs[i].blockNumber = _bytesToUint(rawLogs[i].blockNumber);
            logs[i].data = rawLogs[i].data;
            logs[i].logIndex = _bytesToUint(rawLogs[i].logIndex);
            logs[i].topics = rawLogs[i].topics;
            logs[i].transactionIndex = _bytesToUint(rawLogs[i].transactionIndex);
            logs[i].transactionLogIndex = _bytesToUint(rawLogs[i].transactionLogIndex);
            logs[i].removed = rawLogs[i].removed;
        }
        return logs;
    }

    // Deploy a contract by fetching the contract bytecode from
    // the artifacts directory
    // e.g. `deployCode(code, abi.encode(arg1,arg2,arg3))`
    function deployCode(string memory what, bytes memory args) internal virtual returns (address addr) {
        bytes memory bytecode = abi.encodePacked(vm.getCode(what), args);
        /// @solidity memory-safe-assembly
        assembly {
            addr := create(0, add(bytecode, 0x20), mload(bytecode))
        }

        require(addr != address(0), "StdCheats deployCode(string,bytes): Deployment failed.");
    }

    function deployCode(string memory what) internal virtual returns (address addr) {
        bytes memory bytecode = vm.getCode(what);
        /// @solidity memory-safe-assembly
        assembly {
            addr := create(0, add(bytecode, 0x20), mload(bytecode))
        }

        require(addr != address(0), "StdCheats deployCode(string): Deployment failed.");
    }

    /// @dev deploy contract with value on construction
    function deployCode(string memory what, bytes memory args, uint256 val) internal virtual returns (address addr) {
        bytes memory bytecode = abi.encodePacked(vm.getCode(what), args);
        /// @solidity memory-safe-assembly
        assembly {
            addr := create(val, add(bytecode, 0x20), mload(bytecode))
        }

        require(addr != address(0), "StdCheats deployCode(string,bytes,uint256): Deployment failed.");
    }

    function deployCode(string memory what, uint256 val) internal virtual returns (address addr) {
        bytes memory bytecode = vm.getCode(what);
        /// @solidity memory-safe-assembly
        assembly {
            addr := create(val, add(bytecode, 0x20), mload(bytecode))
        }

        require(addr != address(0), "StdCheats deployCode(string,uint256): Deployment failed.");
    }

    // creates a labeled address and the corresponding private key
    function makeAddrAndKey(string memory name) internal virtual returns (address addr, uint256 privateKey) {
        privateKey = uint256(keccak256(abi.encodePacked(name)));
        addr = vm.addr(privateKey);
        vm.label(addr, name);
    }

    // creates a labeled address
    function makeAddr(string memory name) internal virtual returns (address addr) {
        (addr,) = makeAddrAndKey(name);
    }

    // Destroys an account immediately, sending the balance to beneficiary.
    // Destroying means: balance will be zero, code will be empty, and nonce will be 0
    // This is similar to selfdestruct but not identical: selfdestruct destroys code and nonce
    // only after tx ends, this will run immediately.
    function destroyAccount(address who, address beneficiary) internal virtual {
        uint256 currBalance = who.balance;
        vm.etch(who, abi.encode());
        vm.deal(who, 0);
        vm.resetNonce(who);

        uint256 beneficiaryBalance = beneficiary.balance;
        vm.deal(beneficiary, currBalance + beneficiaryBalance);
    }

    // creates a struct containing both a labeled address and the corresponding private key
    function makeAccount(string memory name) internal virtual returns (Account memory account) {
        (account.addr, account.key) = makeAddrAndKey(name);
    }

    function deriveRememberKey(string memory mnemonic, uint32 index)
        internal
        virtual
        returns (address who, uint256 privateKey)
    {
        privateKey = vm.deriveKey(mnemonic, index);
        who = vm.rememberKey(privateKey);
    }

    function _bytesToUint(bytes memory b) private pure returns (uint256) {
        require(b.length <= 32, "StdCheats _bytesToUint(bytes): Bytes length exceeds 32.");
        return abi.decode(abi.encodePacked(new bytes(32 - b.length), b), (uint256));
    }

    function isFork() internal view virtual returns (bool status) {
        try vm.activeFork() {
            status = true;
        } catch (bytes memory) {}
    }

    modifier skipWhenForking() {
        if (!isFork()) {
            _;
        }
    }

    modifier skipWhenNotForking() {
        if (isFork()) {
            _;
        }
    }

    modifier noGasMetering() {
        vm.pauseGasMetering();
        // To prevent turning gas monitoring back on with nested functions that use this modifier,
        // we check if gasMetering started in the off position. If it did, we don't want to turn
        // it back on until we exit the top level function that used the modifier
        //
        // i.e. funcA() noGasMetering { funcB() }, where funcB has noGasMetering as well.
        // funcA will have `gasStartedOff` as false, funcB will have it as true,
        // so we only turn metering back on at the end of the funcA
        bool gasStartedOff = gasMeteringOff;
        gasMeteringOff = true;

        _;

        // if gas metering was on when this modifier was called, turn it back on at the end
        if (!gasStartedOff) {
            gasMeteringOff = false;
            vm.resumeGasMetering();
        }
    }

    // We use this complex approach of `_viewChainId` and `_pureChainId` to ensure there are no
    // compiler warnings when accessing chain ID in any solidity version supported by forge-std. We
    // can't simply access the chain ID in a normal view or pure function because the solc View Pure
    // Checker changed `chainid` from pure to view in 0.8.0.
    function _viewChainId() private view returns (uint256 chainId) {
        // Assembly required since `block.chainid` was introduced in 0.8.0.
        assembly {
            chainId := chainid()
        }

        address(this); // Silence warnings in older Solc versions.
    }

    function _pureChainId() private pure returns (uint256 chainId) {
        function() internal view returns (uint256) fnIn = _viewChainId;
        function() internal pure returns (uint256) pureChainId;
        assembly {
            pureChainId := fnIn
        }
        chainId = pureChainId();
    }
}

// Wrappers around cheatcodes to avoid footguns
abstract contract StdCheats is StdCheatsSafe {
    using stdStorage for StdStorage;

    StdStorage private stdstore;
    Vm private constant vm = Vm(address(uint160(uint256(keccak256("hevm cheat code")))));
    address private constant CONSOLE2_ADDRESS = 0x000000000000000000636F6e736F6c652e6c6f67;

    // Skip forward or rewind time by the specified number of seconds
    function skip(uint256 time) internal virtual {
        vm.warp(block.timestamp + time);
    }

    function rewind(uint256 time) internal virtual {
        vm.warp(block.timestamp - time);
    }

    // Setup a prank from an address that has some ether
    function hoax(address msgSender) internal virtual {
        vm.deal(msgSender, 1 << 128);
        vm.prank(msgSender);
    }

    function hoax(address msgSender, uint256 give) internal virtual {
        vm.deal(msgSender, give);
        vm.prank(msgSender);
    }

    function hoax(address msgSender, address origin) internal virtual {
        vm.deal(msgSender, 1 << 128);
        vm.prank(msgSender, origin);
    }

    function hoax(address msgSender, address origin, uint256 give) internal virtual {
        vm.deal(msgSender, give);
        vm.prank(msgSender, origin);
    }

    // Start perpetual prank from an address that has some ether
    function startHoax(address msgSender) internal virtual {
        vm.deal(msgSender, 1 << 128);
        vm.startPrank(msgSender);
    }

    function startHoax(address msgSender, uint256 give) internal virtual {
        vm.deal(msgSender, give);
        vm.startPrank(msgSender);
    }

    // Start perpetual prank from an address that has some ether
    // tx.origin is set to the origin parameter
    function startHoax(address msgSender, address origin) internal virtual {
        vm.deal(msgSender, 1 << 128);
        vm.startPrank(msgSender, origin);
    }

    function startHoax(address msgSender, address origin, uint256 give) internal virtual {
        vm.deal(msgSender, give);
        vm.startPrank(msgSender, origin);
    }

    function changePrank(address msgSender) internal virtual {
        console2_log("changePrank is deprecated. Please use vm.startPrank instead.");
        vm.stopPrank();
        vm.startPrank(msgSender);
    }

    function changePrank(address msgSender, address txOrigin) internal virtual {
        vm.stopPrank();
        vm.startPrank(msgSender, txOrigin);
    }

    // The same as Vm's `deal`
    // Use the alternative signature for ERC20 tokens
    function deal(address to, uint256 give) internal virtual {
        vm.deal(to, give);
    }

    // Set the balance of an account for any ERC20 token
    // Use the alternative signature to update `totalSupply`
    function deal(address token, address to, uint256 give) internal virtual {
        deal(token, to, give, false);
    }

    // Set the balance of an account for any ERC1155 token
    // Use the alternative signature to update `totalSupply`
    function dealERC1155(address token, address to, uint256 id, uint256 give) internal virtual {
        dealERC1155(token, to, id, give, false);
    }

    function deal(address token, address to, uint256 give, bool adjust) internal virtual {
        // get current balance
        (, bytes memory balData) = token.staticcall(abi.encodeWithSelector(0x70a08231, to));
        uint256 prevBal = abi.decode(balData, (uint256));

        // update balance
        stdstore.target(token).sig(0x70a08231).with_key(to).checked_write(give);

        // update total supply
        if (adjust) {
            (, bytes memory totSupData) = token.staticcall(abi.encodeWithSelector(0x18160ddd));
            uint256 totSup = abi.decode(totSupData, (uint256));
            if (give < prevBal) {
                totSup -= (prevBal - give);
            } else {
                totSup += (give - prevBal);
            }
            stdstore.target(token).sig(0x18160ddd).checked_write(totSup);
        }
    }

    function dealERC1155(address token, address to, uint256 id, uint256 give, bool adjust) internal virtual {
        // get current balance
        (, bytes memory balData) = token.staticcall(abi.encodeWithSelector(0x00fdd58e, to, id));
        uint256 prevBal = abi.decode(balData, (uint256));

        // update balance
        stdstore.target(token).sig(0x00fdd58e).with_key(to).with_key(id).checked_write(give);

        // update total supply
        if (adjust) {
            (, bytes memory totSupData) = token.staticcall(abi.encodeWithSelector(0xbd85b039, id));
            require(
                totSupData.length != 0,
                "StdCheats deal(address,address,uint,uint,bool): target contract is not ERC1155Supply."
            );
            uint256 totSup = abi.decode(totSupData, (uint256));
            if (give < prevBal) {
                totSup -= (prevBal - give);
            } else {
                totSup += (give - prevBal);
            }
            stdstore.target(token).sig(0xbd85b039).with_key(id).checked_write(totSup);
        }
    }

    function dealERC721(address token, address to, uint256 id) internal virtual {
        // check if token id is already minted and the actual owner.
        (bool successMinted, bytes memory ownerData) = token.staticcall(abi.encodeWithSelector(0x6352211e, id));
        require(successMinted, "StdCheats deal(address,address,uint,bool): id not minted.");

        // get owner current balance
        (, bytes memory fromBalData) =
            token.staticcall(abi.encodeWithSelector(0x70a08231, abi.decode(ownerData, (address))));
        uint256 fromPrevBal = abi.decode(fromBalData, (uint256));

        // get new user current balance
        (, bytes memory toBalData) = token.staticcall(abi.encodeWithSelector(0x70a08231, to));
        uint256 toPrevBal = abi.decode(toBalData, (uint256));

        // update balances
        stdstore.target(token).sig(0x70a08231).with_key(abi.decode(ownerData, (address))).checked_write(--fromPrevBal);
        stdstore.target(token).sig(0x70a08231).with_key(to).checked_write(++toPrevBal);

        // update owner
        stdstore.target(token).sig(0x6352211e).with_key(id).checked_write(to);
    }

    function deployCodeTo(string memory what, address where) internal virtual {
        deployCodeTo(what, "", 0, where);
    }

    function deployCodeTo(string memory what, bytes memory args, address where) internal virtual {
        deployCodeTo(what, args, 0, where);
    }

    function deployCodeTo(string memory what, bytes memory args, uint256 value, address where) internal virtual {
        bytes memory creationCode = vm.getCode(what);
        vm.etch(where, abi.encodePacked(creationCode, args));
        (bool success, bytes memory runtimeBytecode) = where.call{value: value}("");
        require(success, "StdCheats deployCodeTo(string,bytes,uint256,address): Failed to create runtime bytecode.");
        vm.etch(where, runtimeBytecode);
    }

    // Used to prevent the compilation of console, which shortens the compilation time when console is not used elsewhere.
    function console2_log(string memory p0) private view {
        (bool status,) = address(CONSOLE2_ADDRESS).staticcall(abi.encodeWithSignature("log(string)", p0));
        status;
    }
}

// Panics work for versions >=0.8.0, but we lowered the pragma to make this compatible with Test

library stdError {
    bytes public constant assertionError = abi.encodeWithSignature("Panic(uint256)", 0x01);
    bytes public constant arithmeticError = abi.encodeWithSignature("Panic(uint256)", 0x11);
    bytes public constant divisionError = abi.encodeWithSignature("Panic(uint256)", 0x12);
    bytes public constant enumConversionError = abi.encodeWithSignature("Panic(uint256)", 0x21);
    bytes public constant encodeStorageError = abi.encodeWithSignature("Panic(uint256)", 0x22);
    bytes public constant popError = abi.encodeWithSignature("Panic(uint256)", 0x31);
    bytes public constant indexOOBError = abi.encodeWithSignature("Panic(uint256)", 0x32);
    bytes public constant memOverflowError = abi.encodeWithSignature("Panic(uint256)", 0x41);
    bytes public constant zeroVarError = abi.encodeWithSignature("Panic(uint256)", 0x51);
}

abstract contract StdInvariant {
    struct FuzzSelector {
        address addr;
        bytes4[] selectors;
    }

    struct FuzzInterface {
        address addr;
        string[] artifacts;
    }

    address[] private _excludedContracts;
    address[] private _excludedSenders;
    address[] private _targetedContracts;
    address[] private _targetedSenders;

    string[] private _excludedArtifacts;
    string[] private _targetedArtifacts;

    FuzzSelector[] private _targetedArtifactSelectors;
    FuzzSelector[] private _targetedSelectors;

    FuzzInterface[] private _targetedInterfaces;

    // Functions for users:
    // These are intended to be called in tests.

    function excludeContract(address newExcludedContract_) internal {
        _excludedContracts.push(newExcludedContract_);
    }

    function excludeSender(address newExcludedSender_) internal {
        _excludedSenders.push(newExcludedSender_);
    }

    function excludeArtifact(string memory newExcludedArtifact_) internal {
        _excludedArtifacts.push(newExcludedArtifact_);
    }

    function targetArtifact(string memory newTargetedArtifact_) internal {
        _targetedArtifacts.push(newTargetedArtifact_);
    }

    function targetArtifactSelector(FuzzSelector memory newTargetedArtifactSelector_) internal {
        _targetedArtifactSelectors.push(newTargetedArtifactSelector_);
    }

    function targetContract(address newTargetedContract_) internal {
        _targetedContracts.push(newTargetedContract_);
    }

    function targetSelector(FuzzSelector memory newTargetedSelector_) internal {
        _targetedSelectors.push(newTargetedSelector_);
    }

    function targetSender(address newTargetedSender_) internal {
        _targetedSenders.push(newTargetedSender_);
    }

    function targetInterface(FuzzInterface memory newTargetedInterface_) internal {
        _targetedInterfaces.push(newTargetedInterface_);
    }

    // Functions for forge:
    // These are called by forge to run invariant tests and don't need to be called in tests.

    function excludeArtifacts() public view returns (string[] memory excludedArtifacts_) {
        excludedArtifacts_ = _excludedArtifacts;
    }

    function excludeContracts() public view returns (address[] memory excludedContracts_) {
        excludedContracts_ = _excludedContracts;
    }

    function excludeSenders() public view returns (address[] memory excludedSenders_) {
        excludedSenders_ = _excludedSenders;
    }

    function targetArtifacts() public view returns (string[] memory targetedArtifacts_) {
        targetedArtifacts_ = _targetedArtifacts;
    }

    function targetArtifactSelectors() public view returns (FuzzSelector[] memory targetedArtifactSelectors_) {
        targetedArtifactSelectors_ = _targetedArtifactSelectors;
    }

    function targetContracts() public view returns (address[] memory targetedContracts_) {
        targetedContracts_ = _targetedContracts;
    }

    function targetSelectors() public view returns (FuzzSelector[] memory targetedSelectors_) {
        targetedSelectors_ = _targetedSelectors;
    }

    function targetSenders() public view returns (address[] memory targetedSenders_) {
        targetedSenders_ = _targetedSenders;
    }

    function targetInterfaces() public view returns (FuzzInterface[] memory targetedInterfaces_) {
        targetedInterfaces_ = _targetedInterfaces;
    }
}

// Helpers for parsing and writing JSON files
// To parse:
// ```
// using stdJson for string;
// string memory json = vm.readFile("some_peth");
// json.parseUint("<json_path>");
// ```
// To write:
// ```
// using stdJson for string;
// string memory json = "deploymentArtifact";
// Contract contract = new Contract();
// json.serialize("contractAddress", address(contract));
// json = json.serialize("deploymentTimes", uint(1));
// // store the stringified JSON to the 'json' variable we have been using as a key
// // as we won't need it any longer
// string memory json2 = "finalArtifact";
// string memory final = json2.serialize("depArtifact", json);
// final.write("<some_path>");
// ```

library stdJson {
    VmSafe private constant vm = VmSafe(address(uint160(uint256(keccak256("hevm cheat code")))));

    function parseRaw(string memory json, string memory key) internal pure returns (bytes memory) {
        return vm.parseJson(json, key);
    }

    function readUint(string memory json, string memory key) internal pure returns (uint256) {
        return vm.parseJsonUint(json, key);
    }

    function readUintArray(string memory json, string memory key) internal pure returns (uint256[] memory) {
        return vm.parseJsonUintArray(json, key);
    }

    function readInt(string memory json, string memory key) internal pure returns (int256) {
        return vm.parseJsonInt(json, key);
    }

    function readIntArray(string memory json, string memory key) internal pure returns (int256[] memory) {
        return vm.parseJsonIntArray(json, key);
    }

    function readBytes32(string memory json, string memory key) internal pure returns (bytes32) {
        return vm.parseJsonBytes32(json, key);
    }

    function readBytes32Array(string memory json, string memory key) internal pure returns (bytes32[] memory) {
        return vm.parseJsonBytes32Array(json, key);
    }

    function readString(string memory json, string memory key) internal pure returns (string memory) {
        return vm.parseJsonString(json, key);
    }

    function readStringArray(string memory json, string memory key) internal pure returns (string[] memory) {
        return vm.parseJsonStringArray(json, key);
    }

    function readAddress(string memory json, string memory key) internal pure returns (address) {
        return vm.parseJsonAddress(json, key);
    }

    function readAddressArray(string memory json, string memory key) internal pure returns (address[] memory) {
        return vm.parseJsonAddressArray(json, key);
    }

    function readBool(string memory json, string memory key) internal pure returns (bool) {
        return vm.parseJsonBool(json, key);
    }

    function readBoolArray(string memory json, string memory key) internal pure returns (bool[] memory) {
        return vm.parseJsonBoolArray(json, key);
    }

    function readBytes(string memory json, string memory key) internal pure returns (bytes memory) {
        return vm.parseJsonBytes(json, key);
    }

    function readBytesArray(string memory json, string memory key) internal pure returns (bytes[] memory) {
        return vm.parseJsonBytesArray(json, key);
    }

    function serialize(string memory jsonKey, string memory rootObject) internal returns (string memory) {
        return vm.serializeJson(jsonKey, rootObject);
    }

    function serialize(string memory jsonKey, string memory key, bool value) internal returns (string memory) {
        return vm.serializeBool(jsonKey, key, value);
    }

    function serialize(string memory jsonKey, string memory key, bool[] memory value)
        internal
        returns (string memory)
    {
        return vm.serializeBool(jsonKey, key, value);
    }

    function serialize(string memory jsonKey, string memory key, uint256 value) internal returns (string memory) {
        return vm.serializeUint(jsonKey, key, value);
    }

    function serialize(string memory jsonKey, string memory key, uint256[] memory value)
        internal
        returns (string memory)
    {
        return vm.serializeUint(jsonKey, key, value);
    }

    function serialize(string memory jsonKey, string memory key, int256 value) internal returns (string memory) {
        return vm.serializeInt(jsonKey, key, value);
    }

    function serialize(string memory jsonKey, string memory key, int256[] memory value)
        internal
        returns (string memory)
    {
        return vm.serializeInt(jsonKey, key, value);
    }

    function serialize(string memory jsonKey, string memory key, address value) internal returns (string memory) {
        return vm.serializeAddress(jsonKey, key, value);
    }

    function serialize(string memory jsonKey, string memory key, address[] memory value)
        internal
        returns (string memory)
    {
        return vm.serializeAddress(jsonKey, key, value);
    }

    function serialize(string memory jsonKey, string memory key, bytes32 value) internal returns (string memory) {
        return vm.serializeBytes32(jsonKey, key, value);
    }

    function serialize(string memory jsonKey, string memory key, bytes32[] memory value)
        internal
        returns (string memory)
    {
        return vm.serializeBytes32(jsonKey, key, value);
    }

    function serialize(string memory jsonKey, string memory key, bytes memory value) internal returns (string memory) {
        return vm.serializeBytes(jsonKey, key, value);
    }

    function serialize(string memory jsonKey, string memory key, bytes[] memory value)
        internal
        returns (string memory)
    {
        return vm.serializeBytes(jsonKey, key, value);
    }

    function serialize(string memory jsonKey, string memory key, string memory value)
        internal
        returns (string memory)
    {
        return vm.serializeString(jsonKey, key, value);
    }

    function serialize(string memory jsonKey, string memory key, string[] memory value)
        internal
        returns (string memory)
    {
        return vm.serializeString(jsonKey, key, value);
    }

    function write(string memory jsonKey, string memory path) internal {
        vm.writeJson(jsonKey, path);
    }

    function write(string memory jsonKey, string memory path, string memory valueKey) internal {
        vm.writeJson(jsonKey, path, valueKey);
    }
}

library StdStyle {
    VmSafe private constant vm = VmSafe(address(uint160(uint256(keccak256("hevm cheat code")))));

    string constant RED = "\u001b[91m";
    string constant GREEN = "\u001b[92m";
    string constant YELLOW = "\u001b[93m";
    string constant BLUE = "\u001b[94m";
    string constant MAGENTA = "\u001b[95m";
    string constant CYAN = "\u001b[96m";
    string constant BOLD = "\u001b[1m";
    string constant DIM = "\u001b[2m";
    string constant ITALIC = "\u001b[3m";
    string constant UNDERLINE = "\u001b[4m";
    string constant INVERSE = "\u001b[7m";
    string constant RESET = "\u001b[0m";

    function styleConcat(string memory style, string memory self) private pure returns (string memory) {
        return string(abi.encodePacked(style, self, RESET));
    }

    function red(string memory self) internal pure returns (string memory) {
        return styleConcat(RED, self);
    }

    function red(uint256 self) internal pure returns (string memory) {
        return red(vm.toString(self));
    }

    function red(int256 self) internal pure returns (string memory) {
        return red(vm.toString(self));
    }

    function red(address self) internal pure returns (string memory) {
        return red(vm.toString(self));
    }

    function red(bool self) internal pure returns (string memory) {
        return red(vm.toString(self));
    }

    function redBytes(bytes memory self) internal pure returns (string memory) {
        return red(vm.toString(self));
    }

    function redBytes32(bytes32 self) internal pure returns (string memory) {
        return red(vm.toString(self));
    }

    function green(string memory self) internal pure returns (string memory) {
        return styleConcat(GREEN, self);
    }

    function green(uint256 self) internal pure returns (string memory) {
        return green(vm.toString(self));
    }

    function green(int256 self) internal pure returns (string memory) {
        return green(vm.toString(self));
    }

    function green(address self) internal pure returns (string memory) {
        return green(vm.toString(self));
    }

    function green(bool self) internal pure returns (string memory) {
        return green(vm.toString(self));
    }

    function greenBytes(bytes memory self) internal pure returns (string memory) {
        return green(vm.toString(self));
    }

    function greenBytes32(bytes32 self) internal pure returns (string memory) {
        return green(vm.toString(self));
    }

    function yellow(string memory self) internal pure returns (string memory) {
        return styleConcat(YELLOW, self);
    }

    function yellow(uint256 self) internal pure returns (string memory) {
        return yellow(vm.toString(self));
    }

    function yellow(int256 self) internal pure returns (string memory) {
        return yellow(vm.toString(self));
    }

    function yellow(address self) internal pure returns (string memory) {
        return yellow(vm.toString(self));
    }

    function yellow(bool self) internal pure returns (string memory) {
        return yellow(vm.toString(self));
    }

    function yellowBytes(bytes memory self) internal pure returns (string memory) {
        return yellow(vm.toString(self));
    }

    function yellowBytes32(bytes32 self) internal pure returns (string memory) {
        return yellow(vm.toString(self));
    }

    function blue(string memory self) internal pure returns (string memory) {
        return styleConcat(BLUE, self);
    }

    function blue(uint256 self) internal pure returns (string memory) {
        return blue(vm.toString(self));
    }

    function blue(int256 self) internal pure returns (string memory) {
        return blue(vm.toString(self));
    }

    function blue(address self) internal pure returns (string memory) {
        return blue(vm.toString(self));
    }

    function blue(bool self) internal pure returns (string memory) {
        return blue(vm.toString(self));
    }

    function blueBytes(bytes memory self) internal pure returns (string memory) {
        return blue(vm.toString(self));
    }

    function blueBytes32(bytes32 self) internal pure returns (string memory) {
        return blue(vm.toString(self));
    }

    function magenta(string memory self) internal pure returns (string memory) {
        return styleConcat(MAGENTA, self);
    }

    function magenta(uint256 self) internal pure returns (string memory) {
        return magenta(vm.toString(self));
    }

    function magenta(int256 self) internal pure returns (string memory) {
        return magenta(vm.toString(self));
    }

    function magenta(address self) internal pure returns (string memory) {
        return magenta(vm.toString(self));
    }

    function magenta(bool self) internal pure returns (string memory) {
        return magenta(vm.toString(self));
    }

    function magentaBytes(bytes memory self) internal pure returns (string memory) {
        return magenta(vm.toString(self));
    }

    function magentaBytes32(bytes32 self) internal pure returns (string memory) {
        return magenta(vm.toString(self));
    }

    function cyan(string memory self) internal pure returns (string memory) {
        return styleConcat(CYAN, self);
    }

    function cyan(uint256 self) internal pure returns (string memory) {
        return cyan(vm.toString(self));
    }

    function cyan(int256 self) internal pure returns (string memory) {
        return cyan(vm.toString(self));
    }

    function cyan(address self) internal pure returns (string memory) {
        return cyan(vm.toString(self));
    }

    function cyan(bool self) internal pure returns (string memory) {
        return cyan(vm.toString(self));
    }

    function cyanBytes(bytes memory self) internal pure returns (string memory) {
        return cyan(vm.toString(self));
    }

    function cyanBytes32(bytes32 self) internal pure returns (string memory) {
        return cyan(vm.toString(self));
    }

    function bold(string memory self) internal pure returns (string memory) {
        return styleConcat(BOLD, self);
    }

    function bold(uint256 self) internal pure returns (string memory) {
        return bold(vm.toString(self));
    }

    function bold(int256 self) internal pure returns (string memory) {
        return bold(vm.toString(self));
    }

    function bold(address self) internal pure returns (string memory) {
        return bold(vm.toString(self));
    }

    function bold(bool self) internal pure returns (string memory) {
        return bold(vm.toString(self));
    }

    function boldBytes(bytes memory self) internal pure returns (string memory) {
        return bold(vm.toString(self));
    }

    function boldBytes32(bytes32 self) internal pure returns (string memory) {
        return bold(vm.toString(self));
    }

    function dim(string memory self) internal pure returns (string memory) {
        return styleConcat(DIM, self);
    }

    function dim(uint256 self) internal pure returns (string memory) {
        return dim(vm.toString(self));
    }

    function dim(int256 self) internal pure returns (string memory) {
        return dim(vm.toString(self));
    }

    function dim(address self) internal pure returns (string memory) {
        return dim(vm.toString(self));
    }

    function dim(bool self) internal pure returns (string memory) {
        return dim(vm.toString(self));
    }

    function dimBytes(bytes memory self) internal pure returns (string memory) {
        return dim(vm.toString(self));
    }

    function dimBytes32(bytes32 self) internal pure returns (string memory) {
        return dim(vm.toString(self));
    }

    function italic(string memory self) internal pure returns (string memory) {
        return styleConcat(ITALIC, self);
    }

    function italic(uint256 self) internal pure returns (string memory) {
        return italic(vm.toString(self));
    }

    function italic(int256 self) internal pure returns (string memory) {
        return italic(vm.toString(self));
    }

    function italic(address self) internal pure returns (string memory) {
        return italic(vm.toString(self));
    }

    function italic(bool self) internal pure returns (string memory) {
        return italic(vm.toString(self));
    }

    function italicBytes(bytes memory self) internal pure returns (string memory) {
        return italic(vm.toString(self));
    }

    function italicBytes32(bytes32 self) internal pure returns (string memory) {
        return italic(vm.toString(self));
    }

    function underline(string memory self) internal pure returns (string memory) {
        return styleConcat(UNDERLINE, self);
    }

    function underline(uint256 self) internal pure returns (string memory) {
        return underline(vm.toString(self));
    }

    function underline(int256 self) internal pure returns (string memory) {
        return underline(vm.toString(self));
    }

    function underline(address self) internal pure returns (string memory) {
        return underline(vm.toString(self));
    }

    function underline(bool self) internal pure returns (string memory) {
        return underline(vm.toString(self));
    }

    function underlineBytes(bytes memory self) internal pure returns (string memory) {
        return underline(vm.toString(self));
    }

    function underlineBytes32(bytes32 self) internal pure returns (string memory) {
        return underline(vm.toString(self));
    }

    function inverse(string memory self) internal pure returns (string memory) {
        return styleConcat(INVERSE, self);
    }

    function inverse(uint256 self) internal pure returns (string memory) {
        return inverse(vm.toString(self));
    }

    function inverse(int256 self) internal pure returns (string memory) {
        return inverse(vm.toString(self));
    }

    function inverse(address self) internal pure returns (string memory) {
        return inverse(vm.toString(self));
    }

    function inverse(bool self) internal pure returns (string memory) {
        return inverse(vm.toString(self));
    }

    function inverseBytes(bytes memory self) internal pure returns (string memory) {
        return inverse(vm.toString(self));
    }

    function inverseBytes32(bytes32 self) internal pure returns (string memory) {
        return inverse(vm.toString(self));
    }
}

interface IMulticall3 {
    struct Call {
        address target;
        bytes callData;
    }

    struct Call3 {
        address target;
        bool allowFailure;
        bytes callData;
    }

    struct Call3Value {
        address target;
        bool allowFailure;
        uint256 value;
        bytes callData;
    }

    struct Result {
        bool success;
        bytes returnData;
    }

    function aggregate(Call[] calldata calls)
        external
        payable
        returns (uint256 blockNumber, bytes[] memory returnData);

    function aggregate3(Call3[] calldata calls) external payable returns (Result[] memory returnData);

    function aggregate3Value(Call3Value[] calldata calls) external payable returns (Result[] memory returnData);

    function blockAndAggregate(Call[] calldata calls)
        external
        payable
        returns (uint256 blockNumber, bytes32 blockHash, Result[] memory returnData);

    function getBasefee() external view returns (uint256 basefee);

    function getBlockHash(uint256 blockNumber) external view returns (bytes32 blockHash);

    function getBlockNumber() external view returns (uint256 blockNumber);

    function getChainId() external view returns (uint256 chainid);

    function getCurrentBlockCoinbase() external view returns (address coinbase);

    function getCurrentBlockDifficulty() external view returns (uint256 difficulty);

    function getCurrentBlockGasLimit() external view returns (uint256 gaslimit);

    function getCurrentBlockTimestamp() external view returns (uint256 timestamp);

    function getEthBalance(address addr) external view returns (uint256 balance);

    function getLastBlockHash() external view returns (bytes32 blockHash);

    function tryAggregate(bool requireSuccess, Call[] calldata calls)
        external
        payable
        returns (Result[] memory returnData);

    function tryBlockAndAggregate(bool requireSuccess, Call[] calldata calls)
        external
        payable
        returns (uint256 blockNumber, bytes32 blockHash, Result[] memory returnData);
}

abstract contract StdUtils {
    /*//////////////////////////////////////////////////////////////////////////
                                     CONSTANTS
    //////////////////////////////////////////////////////////////////////////*/

    IMulticall3 private constant multicall = IMulticall3(0xcA11bde05977b3631167028862bE2a173976CA11);
    VmSafe private constant vm = VmSafe(address(uint160(uint256(keccak256("hevm cheat code")))));
    address private constant CONSOLE2_ADDRESS = 0x000000000000000000636F6e736F6c652e6c6f67;
    uint256 private constant INT256_MIN_ABS =
        57896044618658097711785492504343953926634992332820282019728792003956564819968;
    uint256 private constant SECP256K1_ORDER =
        115792089237316195423570985008687907852837564279074904382605163141518161494337;
    uint256 private constant UINT256_MAX =
        115792089237316195423570985008687907853269984665640564039457584007913129639935;

    // Used by default when deploying with create2, https://github.com/Arachnid/deterministic-deployment-proxy.
    address private constant CREATE2_FACTORY = 0x4e59b44847b379578588920cA78FbF26c0B4956C;

    /*//////////////////////////////////////////////////////////////////////////
                                 INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    function _bound(uint256 x, uint256 min, uint256 max) internal pure virtual returns (uint256 result) {
        require(min <= max, "StdUtils bound(uint256,uint256,uint256): Max is less than min.");
        // If x is between min and max, return x directly. This is to ensure that dictionary values
        // do not get shifted if the min is nonzero. More info: https://github.com/foundry-rs/forge-std/issues/188
        if (x >= min && x <= max) return x;

        uint256 size = max - min + 1;

        // If the value is 0, 1, 2, 3, wrap that to min, min+1, min+2, min+3. Similarly for the UINT256_MAX side.
        // This helps ensure coverage of the min/max values.
        if (x <= 3 && size > x) return min + x;
        if (x >= UINT256_MAX - 3 && size > UINT256_MAX - x) return max - (UINT256_MAX - x);

        // Otherwise, wrap x into the range [min, max], i.e. the range is inclusive.
        if (x > max) {
            uint256 diff = x - max;
            uint256 rem = diff % size;
            if (rem == 0) return max;
            result = min + rem - 1;
        } else if (x < min) {
            uint256 diff = min - x;
            uint256 rem = diff % size;
            if (rem == 0) return min;
            result = max - rem + 1;
        }
    }

    function bound(uint256 x, uint256 min, uint256 max) internal view virtual returns (uint256 result) {
        result = _bound(x, min, max);
        console2_log("Bound Result", result);
    }

    function _bound(int256 x, int256 min, int256 max) internal pure virtual returns (int256 result) {
        require(min <= max, "StdUtils bound(int256,int256,int256): Max is less than min.");

        // Shifting all int256 values to uint256 to use _bound function. The range of two types are:
        // int256 : -(2**255) ~ (2**255 - 1)
        // uint256:     0     ~ (2**256 - 1)
        // So, add 2**255, INT256_MIN_ABS to the integer values.
        //
        // If the given integer value is -2**255, we cannot use `-uint256(-x)` because of the overflow.
        // So, use `~uint256(x) + 1` instead.
        uint256 _x = x < 0 ? (INT256_MIN_ABS - ~uint256(x) - 1) : (uint256(x) + INT256_MIN_ABS);
        uint256 _min = min < 0 ? (INT256_MIN_ABS - ~uint256(min) - 1) : (uint256(min) + INT256_MIN_ABS);
        uint256 _max = max < 0 ? (INT256_MIN_ABS - ~uint256(max) - 1) : (uint256(max) + INT256_MIN_ABS);

        uint256 y = _bound(_x, _min, _max);

        // To move it back to int256 value, subtract INT256_MIN_ABS at here.
        result = y < INT256_MIN_ABS ? int256(~(INT256_MIN_ABS - y) + 1) : int256(y - INT256_MIN_ABS);
    }

    function bound(int256 x, int256 min, int256 max) internal view virtual returns (int256 result) {
        result = _bound(x, min, max);
        console2_log("Bound result", vm.toString(result));
    }

    function boundPrivateKey(uint256 privateKey) internal pure virtual returns (uint256 result) {
        result = _bound(privateKey, 1, SECP256K1_ORDER - 1);
    }

    function bytesToUint(bytes memory b) internal pure virtual returns (uint256) {
        require(b.length <= 32, "StdUtils bytesToUint(bytes): Bytes length exceeds 32.");
        return abi.decode(abi.encodePacked(new bytes(32 - b.length), b), (uint256));
    }

    /// @dev Compute the address a contract will be deployed at for a given deployer address and nonce
    /// @notice adapted from Solmate implementation (https://github.com/Rari-Capital/solmate/blob/main/src/utils/LibRLP.sol)
    function computeCreateAddress(address deployer, uint256 nonce) internal pure virtual returns (address) {
        // forgefmt: disable-start
        // The integer zero is treated as an empty byte string, and as a result it only has a length prefix, 0x80, computed via 0x80 + 0.
        // A one byte integer uses its own value as its length prefix, there is no additional "0x80 + length" prefix that comes before it.
        if (nonce == 0x00)      return addressFromLast20Bytes(keccak256(abi.encodePacked(bytes1(0xd6), bytes1(0x94), deployer, bytes1(0x80))));
        if (nonce <= 0x7f)      return addressFromLast20Bytes(keccak256(abi.encodePacked(bytes1(0xd6), bytes1(0x94), deployer, uint8(nonce))));

        // Nonces greater than 1 byte all follow a consistent encoding scheme, where each value is preceded by a prefix of 0x80 + length.
        if (nonce <= 2**8 - 1)  return addressFromLast20Bytes(keccak256(abi.encodePacked(bytes1(0xd7), bytes1(0x94), deployer, bytes1(0x81), uint8(nonce))));
        if (nonce <= 2**16 - 1) return addressFromLast20Bytes(keccak256(abi.encodePacked(bytes1(0xd8), bytes1(0x94), deployer, bytes1(0x82), uint16(nonce))));
        if (nonce <= 2**24 - 1) return addressFromLast20Bytes(keccak256(abi.encodePacked(bytes1(0xd9), bytes1(0x94), deployer, bytes1(0x83), uint24(nonce))));
        // forgefmt: disable-end

        // More details about RLP encoding can be found here: https://eth.wiki/fundamentals/rlp
        // 0xda = 0xc0 (short RLP prefix) + 0x16 (length of: 0x94 ++ proxy ++ 0x84 ++ nonce)
        // 0x94 = 0x80 + 0x14 (0x14 = the length of an address, 20 bytes, in hex)
        // 0x84 = 0x80 + 0x04 (0x04 = the bytes length of the nonce, 4 bytes, in hex)
        // We assume nobody can have a nonce large enough to require more than 32 bytes.
        return addressFromLast20Bytes(
            keccak256(abi.encodePacked(bytes1(0xda), bytes1(0x94), deployer, bytes1(0x84), uint32(nonce)))
        );
    }

    function computeCreate2Address(bytes32 salt, bytes32 initcodeHash, address deployer)
        internal
        pure
        virtual
        returns (address)
    {
        return addressFromLast20Bytes(keccak256(abi.encodePacked(bytes1(0xff), deployer, salt, initcodeHash)));
    }

    /// @dev returns the address of a contract created with CREATE2 using the default CREATE2 deployer
    function computeCreate2Address(bytes32 salt, bytes32 initCodeHash) internal pure returns (address) {
        return computeCreate2Address(salt, initCodeHash, CREATE2_FACTORY);
    }

    /// @dev returns the hash of the init code (creation code + no args) used in CREATE2 with no constructor arguments
    /// @param creationCode the creation code of a contract C, as returned by type(C).creationCode
    function hashInitCode(bytes memory creationCode) internal pure returns (bytes32) {
        return hashInitCode(creationCode, "");
    }

    /// @dev returns the hash of the init code (creation code + ABI-encoded args) used in CREATE2
    /// @param creationCode the creation code of a contract C, as returned by type(C).creationCode
    /// @param args the ABI-encoded arguments to the constructor of C
    function hashInitCode(bytes memory creationCode, bytes memory args) internal pure returns (bytes32) {
        return keccak256(abi.encodePacked(creationCode, args));
    }

    // Performs a single call with Multicall3 to query the ERC-20 token balances of the given addresses.
    function getTokenBalances(address token, address[] memory addresses)
        internal
        virtual
        returns (uint256[] memory balances)
    {
        uint256 tokenCodeSize;
        assembly {
            tokenCodeSize := extcodesize(token)
        }
        require(tokenCodeSize > 0, "StdUtils getTokenBalances(address,address[]): Token address is not a contract.");

        // ABI encode the aggregate call to Multicall3.
        uint256 length = addresses.length;
        IMulticall3.Call[] memory calls = new IMulticall3.Call[](length);
        for (uint256 i = 0; i < length; ++i) {
            // 0x70a08231 = bytes4("balanceOf(address)"))
            calls[i] = IMulticall3.Call({target: token, callData: abi.encodeWithSelector(0x70a08231, (addresses[i]))});
        }

        // Make the aggregate call.
        (, bytes[] memory returnData) = multicall.aggregate(calls);

        // ABI decode the return data and return the balances.
        balances = new uint256[](length);
        for (uint256 i = 0; i < length; ++i) {
            balances[i] = abi.decode(returnData[i], (uint256));
        }
    }

    /*//////////////////////////////////////////////////////////////////////////
                                 PRIVATE FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    function addressFromLast20Bytes(bytes32 bytesValue) private pure returns (address) {
        return address(uint160(uint256(bytesValue)));
    }

    // Used to prevent the compilation of console, which shortens the compilation time when console is not used elsewhere.

    function console2_log(string memory p0, uint256 p1) private view {
        (bool status,) = address(CONSOLE2_ADDRESS).staticcall(abi.encodeWithSignature("log(string,uint256)", p0, p1));
        status;
    }

    function console2_log(string memory p0, string memory p1) private view {
        (bool status,) = address(CONSOLE2_ADDRESS).staticcall(abi.encodeWithSignature("log(string,string)", p0, p1));
        status;
    }
}

// 📦 BOILERPLATE

abstract contract CommonBase {
    // Cheat code address, 0x7109709ECfa91a80626fF3989D68f67F5b1DD12D.
    address internal constant VM_ADDRESS = address(uint160(uint256(keccak256("hevm cheat code"))));
    // console.sol and console2.sol work by executing a staticcall to this address.
    address internal constant CONSOLE = 0x000000000000000000636F6e736F6c652e6c6f67;
    // Used when deploying with create2, https://github.com/Arachnid/deterministic-deployment-proxy.
    address internal constant CREATE2_FACTORY = 0x4e59b44847b379578588920cA78FbF26c0B4956C;
    // Default address for tx.origin and msg.sender, 0x1804c8AB1F12E6bbf3894d4083f33e07309d1f38.
    address internal constant DEFAULT_SENDER = address(uint160(uint256(keccak256("foundry default caller"))));
    // Address of the test contract, deployed by the DEFAULT_SENDER.
    address internal constant DEFAULT_TEST_CONTRACT = 0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f;
    // Deterministic deployment address of the Multicall3 contract.
    address internal constant MULTICALL3_ADDRESS = 0xcA11bde05977b3631167028862bE2a173976CA11;
    // The order of the secp256k1 curve.
    uint256 internal constant SECP256K1_ORDER =
        115792089237316195423570985008687907852837564279074904382605163141518161494337;

    uint256 internal constant UINT256_MAX =
        115792089237316195423570985008687907853269984665640564039457584007913129639935;

    Vm internal constant vm = Vm(VM_ADDRESS);
    StdStorage internal stdstore;
}

abstract contract TestBase is CommonBase {}

abstract contract ScriptBase is CommonBase {
    VmSafe internal constant vmSafe = VmSafe(VM_ADDRESS);
}

// ⭐️ TEST
abstract contract Test is TestBase, DSTest, StdAssertions, StdChains, StdCheats, StdInvariant, StdUtils {
// Note: IS_TEST() must return true.
// Note: Must have failure system, https://github.com/dapphub/ds-test/blob/cd98eff28324bfac652e63a239a60632a761790b/src/test.sol#L39-L76.
}

// OpenZeppelin Contracts (last updated v4.5.0) (proxy/utils/UUPSUpgradeable.sol)

// OpenZeppelin Contracts (last updated v4.5.0) (interfaces/draft-IERC1822.sol)

/**
 * @dev ERC1822: Universal Upgradeable Proxy Standard (UUPS) documents a method for upgradeability through a simplified
 * proxy whose upgrades are fully controlled by the current implementation.
 */
interface IERC1822Proxiable {
    /**
     * @dev Returns the storage slot that the proxiable contract assumes is being used to store the implementation
     * address.
     *
     * IMPORTANT: A proxy pointing at a proxiable contract should not be considered proxiable itself, because this risks
     * bricking a proxy that upgrades to it, by delegating to itself until out of gas. Thus it is critical that this
     * function revert if invoked through a proxy.
     */
    function proxiableUUID() external view returns (bytes32);
}

// OpenZeppelin Contracts (last updated v4.5.0) (proxy/ERC1967/ERC1967Upgrade.sol)

// OpenZeppelin Contracts v4.4.1 (proxy/beacon/IBeacon.sol)

/**
 * @dev This is the interface that {BeaconProxy} expects of its beacon.
 */
interface IBeacon {
    /**
     * @dev Must return an address that can be used as a delegate call target.
     *
     * {BeaconProxy} will check that this address is a contract.
     */
    function implementation() external view returns (address);
}

// OpenZeppelin Contracts (last updated v4.7.0) (utils/Address.sol)

/**
 * @dev Collection of functions related to the address type
 */
library Address {
    /**
     * @dev Returns true if `account` is a contract.
     *
     * [IMPORTANT]
     * ====
     * It is unsafe to assume that an address for which this function returns
     * false is an externally-owned account (EOA) and not a contract.
     *
     * Among others, `isContract` will return false for the following
     * types of addresses:
     *
     *  - an externally-owned account
     *  - a contract in construction
     *  - an address where a contract will be created
     *  - an address where a contract lived, but was destroyed
     * ====
     *
     * [IMPORTANT]
     * ====
     * You shouldn't rely on `isContract` to protect against flash loan attacks!
     *
     * Preventing calls from contracts is highly discouraged. It breaks composability, breaks support for smart wallets
     * like Gnosis Safe, and does not provide security since it can be circumvented by calling from a contract
     * constructor.
     * ====
     */
    function isContract(address account) internal view returns (bool) {
        // This method relies on extcodesize/address.code.length, which returns 0
        // for contracts in construction, since the code is only stored at the end
        // of the constructor execution.

        return account.code.length > 0;
    }

    /**
     * @dev Replacement for Solidity's `transfer`: sends `amount` wei to
     * `recipient`, forwarding all available gas and reverting on errors.
     *
     * https://eips.ethereum.org/EIPS/eip-1884[EIP1884] increases the gas cost
     * of certain opcodes, possibly making contracts go over the 2300 gas limit
     * imposed by `transfer`, making them unable to receive funds via
     * `transfer`. {sendValue} removes this limitation.
     *
     * https://diligence.consensys.net/posts/2019/09/stop-using-soliditys-transfer-now/[Learn more].
     *
     * IMPORTANT: because control is transferred to `recipient`, care must be
     * taken to not create reentrancy vulnerabilities. Consider using
     * {ReentrancyGuard} or the
     * https://solidity.readthedocs.io/en/v0.5.11/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
     */
    function sendValue(address payable recipient, uint256 amount) internal {
        require(address(this).balance >= amount, "Address: insufficient balance");

        (bool success, ) = recipient.call{value: amount}("");
        require(success, "Address: unable to send value, recipient may have reverted");
    }

    /**
     * @dev Performs a Solidity function call using a low level `call`. A
     * plain `call` is an unsafe replacement for a function call: use this
     * function instead.
     *
     * If `target` reverts with a revert reason, it is bubbled up by this
     * function (like regular Solidity function calls).
     *
     * Returns the raw returned data. To convert to the expected return value,
     * use https://solidity.readthedocs.io/en/latest/units-and-global-variables.html?highlight=abi.decode#abi-encoding-and-decoding-functions[`abi.decode`].
     *
     * Requirements:
     *
     * - `target` must be a contract.
     * - calling `target` with `data` must not revert.
     *
     * _Available since v3.1._
     */
    function functionCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionCall(target, data, "Address: low-level call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`], but with
     * `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but also transferring `value` wei to `target`.
     *
     * Requirements:
     *
     * - the calling contract must have an ETH balance of at least `value`.
     * - the called Solidity function must be `payable`.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(
        address target,
        bytes memory data,
        uint256 value
    ) internal returns (bytes memory) {
        return functionCallWithValue(target, data, value, "Address: low-level call with value failed");
    }

    /**
     * @dev Same as {xref-Address-functionCallWithValue-address-bytes-uint256-}[`functionCallWithValue`], but
     * with `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(
        address target,
        bytes memory data,
        uint256 value,
        string memory errorMessage
    ) internal returns (bytes memory) {
        require(address(this).balance >= value, "Address: insufficient balance for call");
        require(isContract(target), "Address: call to non-contract");

        (bool success, bytes memory returndata) = target.call{value: value}(data);
        return verifyCallResult(success, returndata, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(address target, bytes memory data) internal view returns (bytes memory) {
        return functionStaticCall(target, data, "Address: low-level static call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal view returns (bytes memory) {
        require(isContract(target), "Address: static call to non-contract");

        (bool success, bytes memory returndata) = target.staticcall(data);
        return verifyCallResult(success, returndata, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a delegate call.
     *
     * _Available since v3.4._
     */
    function functionDelegateCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionDelegateCall(target, data, "Address: low-level delegate call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a delegate call.
     *
     * _Available since v3.4._
     */
    function functionDelegateCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal returns (bytes memory) {
        require(isContract(target), "Address: delegate call to non-contract");

        (bool success, bytes memory returndata) = target.delegatecall(data);
        return verifyCallResult(success, returndata, errorMessage);
    }

    /**
     * @dev Tool to verifies that a low level call was successful, and revert if it wasn't, either by bubbling the
     * revert reason using the provided one.
     *
     * _Available since v4.3._
     */
    function verifyCallResult(
        bool success,
        bytes memory returndata,
        string memory errorMessage
    ) internal pure returns (bytes memory) {
        if (success) {
            return returndata;
        } else {
            // Look for revert reason and bubble it up if present
            if (returndata.length > 0) {
                // The easiest way to bubble the revert reason is using memory via assembly
                /// @solidity memory-safe-assembly
                assembly {
                    let returndata_size := mload(returndata)
                    revert(add(32, returndata), returndata_size)
                }
            } else {
                revert(errorMessage);
            }
        }
    }
}

// OpenZeppelin Contracts (last updated v4.7.0) (utils/StorageSlot.sol)

/**
 * @dev Library for reading and writing primitive types to specific storage slots.
 *
 * Storage slots are often used to avoid storage conflict when dealing with upgradeable contracts.
 * This library helps with reading and writing to such slots without the need for inline assembly.
 *
 * The functions in this library return Slot structs that contain a `value` member that can be used to read or write.
 *
 * Example usage to set ERC1967 implementation slot:
 * ```
 * contract ERC1967 {
 *     bytes32 internal constant _IMPLEMENTATION_SLOT = 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc;
 *
 *     function _getImplementation() internal view returns (address) {
 *         return StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value;
 *     }
 *
 *     function _setImplementation(address newImplementation) internal {
 *         require(Address.isContract(newImplementation), "ERC1967: new implementation is not a contract");
 *         StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value = newImplementation;
 *     }
 * }
 * ```
 *
 * _Available since v4.1 for `address`, `bool`, `bytes32`, and `uint256`._
 */
library StorageSlot {
    struct AddressSlot {
        address value;
    }

    struct BooleanSlot {
        bool value;
    }

    struct Bytes32Slot {
        bytes32 value;
    }

    struct Uint256Slot {
        uint256 value;
    }

    /**
     * @dev Returns an `AddressSlot` with member `value` located at `slot`.
     */
    function getAddressSlot(bytes32 slot) internal pure returns (AddressSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `BooleanSlot` with member `value` located at `slot`.
     */
    function getBooleanSlot(bytes32 slot) internal pure returns (BooleanSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `Bytes32Slot` with member `value` located at `slot`.
     */
    function getBytes32Slot(bytes32 slot) internal pure returns (Bytes32Slot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `Uint256Slot` with member `value` located at `slot`.
     */
    function getUint256Slot(bytes32 slot) internal pure returns (Uint256Slot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }
}

/**
 * @dev This abstract contract provides getters and event emitting update functions for
 * https://eips.ethereum.org/EIPS/eip-1967[EIP1967] slots.
 *
 * _Available since v4.1._
 *
 * @custom:oz-upgrades-unsafe-allow delegatecall
 */
abstract contract ERC1967Upgrade {
    // This is the keccak-256 hash of "eip1967.proxy.rollback" subtracted by 1
    bytes32 private constant _ROLLBACK_SLOT = 0x4910fdfa16fed3260ed0e7147f7cc6da11a60208b5b9406d12a635614ffd9143;

    /**
     * @dev Storage slot with the address of the current implementation.
     * This is the keccak-256 hash of "eip1967.proxy.implementation" subtracted by 1, and is
     * validated in the constructor.
     */
    bytes32 internal constant _IMPLEMENTATION_SLOT = 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc;

    /**
     * @dev Emitted when the implementation is upgraded.
     */
    event Upgraded(address indexed implementation);

    /**
     * @dev Returns the current implementation address.
     */
    function _getImplementation() internal view returns (address) {
        return StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value;
    }

    /**
     * @dev Stores a new address in the EIP1967 implementation slot.
     */
    function _setImplementation(address newImplementation) private {
        require(Address.isContract(newImplementation), "ERC1967: new implementation is not a contract");
        StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value = newImplementation;
    }

    /**
     * @dev Perform implementation upgrade
     *
     * Emits an {Upgraded} event.
     */
    function _upgradeTo(address newImplementation) internal {
        _setImplementation(newImplementation);
        emit Upgraded(newImplementation);
    }

    /**
     * @dev Perform implementation upgrade with additional setup call.
     *
     * Emits an {Upgraded} event.
     */
    function _upgradeToAndCall(
        address newImplementation,
        bytes memory data,
        bool forceCall
    ) internal {
        _upgradeTo(newImplementation);
        if (data.length > 0 || forceCall) {
            Address.functionDelegateCall(newImplementation, data);
        }
    }

    /**
     * @dev Perform implementation upgrade with security checks for UUPS proxies, and additional setup call.
     *
     * Emits an {Upgraded} event.
     */
    function _upgradeToAndCallUUPS(
        address newImplementation,
        bytes memory data,
        bool forceCall
    ) internal {
        // Upgrades from old implementations will perform a rollback test. This test requires the new
        // implementation to upgrade back to the old, non-ERC1822 compliant, implementation. Removing
        // this special case will break upgrade paths from old UUPS implementation to new ones.
        if (StorageSlot.getBooleanSlot(_ROLLBACK_SLOT).value) {
            _setImplementation(newImplementation);
        } else {
            try IERC1822Proxiable(newImplementation).proxiableUUID() returns (bytes32 slot) {
                require(slot == _IMPLEMENTATION_SLOT, "ERC1967Upgrade: unsupported proxiableUUID");
            } catch {
                revert("ERC1967Upgrade: new implementation is not UUPS");
            }
            _upgradeToAndCall(newImplementation, data, forceCall);
        }
    }

    /**
     * @dev Storage slot with the admin of the contract.
     * This is the keccak-256 hash of "eip1967.proxy.admin" subtracted by 1, and is
     * validated in the constructor.
     */
    bytes32 internal constant _ADMIN_SLOT = 0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103;

    /**
     * @dev Emitted when the admin account has changed.
     */
    event AdminChanged(address previousAdmin, address newAdmin);

    /**
     * @dev Returns the current admin.
     */
    function _getAdmin() internal view returns (address) {
        return StorageSlot.getAddressSlot(_ADMIN_SLOT).value;
    }

    /**
     * @dev Stores a new address in the EIP1967 admin slot.
     */
    function _setAdmin(address newAdmin) private {
        require(newAdmin != address(0), "ERC1967: new admin is the zero address");
        StorageSlot.getAddressSlot(_ADMIN_SLOT).value = newAdmin;
    }

    /**
     * @dev Changes the admin of the proxy.
     *
     * Emits an {AdminChanged} event.
     */
    function _changeAdmin(address newAdmin) internal {
        emit AdminChanged(_getAdmin(), newAdmin);
        _setAdmin(newAdmin);
    }

    /**
     * @dev The storage slot of the UpgradeableBeacon contract which defines the implementation for this proxy.
     * This is bytes32(uint256(keccak256('eip1967.proxy.beacon')) - 1)) and is validated in the constructor.
     */
    bytes32 internal constant _BEACON_SLOT = 0xa3f0ad74e5423aebfd80d3ef4346578335a9a72aeaee59ff6cb3582b35133d50;

    /**
     * @dev Emitted when the beacon is upgraded.
     */
    event BeaconUpgraded(address indexed beacon);

    /**
     * @dev Returns the current beacon.
     */
    function _getBeacon() internal view returns (address) {
        return StorageSlot.getAddressSlot(_BEACON_SLOT).value;
    }

    /**
     * @dev Stores a new beacon in the EIP1967 beacon slot.
     */
    function _setBeacon(address newBeacon) private {
        require(Address.isContract(newBeacon), "ERC1967: new beacon is not a contract");
        require(
            Address.isContract(IBeacon(newBeacon).implementation()),
            "ERC1967: beacon implementation is not a contract"
        );
        StorageSlot.getAddressSlot(_BEACON_SLOT).value = newBeacon;
    }

    /**
     * @dev Perform beacon upgrade with additional setup call. Note: This upgrades the address of the beacon, it does
     * not upgrade the implementation contained in the beacon (see {UpgradeableBeacon-_setImplementation} for that).
     *
     * Emits a {BeaconUpgraded} event.
     */
    function _upgradeBeaconToAndCall(
        address newBeacon,
        bytes memory data,
        bool forceCall
    ) internal {
        _setBeacon(newBeacon);
        emit BeaconUpgraded(newBeacon);
        if (data.length > 0 || forceCall) {
            Address.functionDelegateCall(IBeacon(newBeacon).implementation(), data);
        }
    }
}

/**
 * @dev An upgradeability mechanism designed for UUPS proxies. The functions included here can perform an upgrade of an
 * {ERC1967Proxy}, when this contract is set as the implementation behind such a proxy.
 *
 * A security mechanism ensures that an upgrade does not turn off upgradeability accidentally, although this risk is
 * reinstated if the upgrade retains upgradeability but removes the security mechanism, e.g. by replacing
 * `UUPSUpgradeable` with a custom implementation of upgrades.
 *
 * The {_authorizeUpgrade} function must be overridden to include access restriction to the upgrade mechanism.
 *
 * _Available since v4.1._
 */
abstract contract UUPSUpgradeable is IERC1822Proxiable, ERC1967Upgrade {
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable state-variable-assignment
    address private immutable __self = address(this);

    /**
     * @dev Check that the execution is being performed through a delegatecall call and that the execution context is
     * a proxy contract with an implementation (as defined in ERC1967) pointing to self. This should only be the case
     * for UUPS and transparent proxies that are using the current contract as their implementation. Execution of a
     * function through ERC1167 minimal proxies (clones) would not normally pass this test, but is not guaranteed to
     * fail.
     */
    modifier onlyProxy() {
        require(address(this) != __self, "Function must be called through delegatecall");
        require(_getImplementation() == __self, "Function must be called through active proxy");
        _;
    }

    /**
     * @dev Check that the execution is not being performed through a delegate call. This allows a function to be
     * callable on the implementing contract but not through proxies.
     */
    modifier notDelegated() {
        require(address(this) == __self, "UUPSUpgradeable: must not be called through delegatecall");
        _;
    }

    /**
     * @dev Implementation of the ERC1822 {proxiableUUID} function. This returns the storage slot used by the
     * implementation. It is used to validate that the this implementation remains valid after an upgrade.
     *
     * IMPORTANT: A proxy pointing at a proxiable contract should not be considered proxiable itself, because this risks
     * bricking a proxy that upgrades to it, by delegating to itself until out of gas. Thus it is critical that this
     * function revert if invoked through a proxy. This is guaranteed by the `notDelegated` modifier.
     */
    function proxiableUUID() external view virtual override notDelegated returns (bytes32) {
        return _IMPLEMENTATION_SLOT;
    }

    /**
     * @dev Upgrade the implementation of the proxy to `newImplementation`.
     *
     * Calls {_authorizeUpgrade}.
     *
     * Emits an {Upgraded} event.
     */
    function upgradeTo(address newImplementation) external virtual onlyProxy {
        _authorizeUpgrade(newImplementation);
        _upgradeToAndCallUUPS(newImplementation, new bytes(0), false);
    }

    /**
     * @dev Upgrade the implementation of the proxy to `newImplementation`, and subsequently execute the function call
     * encoded in `data`.
     *
     * Calls {_authorizeUpgrade}.
     *
     * Emits an {Upgraded} event.
     */
    function upgradeToAndCall(address newImplementation, bytes memory data) external payable virtual onlyProxy {
        _authorizeUpgrade(newImplementation);
        _upgradeToAndCallUUPS(newImplementation, data, true);
    }

    /**
     * @dev Function that should revert when `msg.sender` is not authorized to upgrade the contract. Called by
     * {upgradeTo} and {upgradeToAndCall}.
     *
     * Normally, this function will use an xref:access.adoc[access control] modifier such as {Ownable-onlyOwner}.
     *
     * ```solidity
     * function _authorizeUpgrade(address) internal override onlyOwner {}
     * ```
     */
    function _authorizeUpgrade(address newImplementation) internal virtual;
}

// OpenZeppelin Contracts (last updated v4.7.0) (token/common/ERC2981.sol)

// OpenZeppelin Contracts (last updated v4.6.0) (interfaces/IERC2981.sol)

// OpenZeppelin Contracts v4.4.1 (utils/introspection/IERC165.sol)

/**
 * @dev Interface of the ERC165 standard, as defined in the
 * https://eips.ethereum.org/EIPS/eip-165[EIP].
 *
 * Implementers can declare support of contract interfaces, which can then be
 * queried by others ({ERC165Checker}).
 *
 * For an implementation, see {ERC165}.
 */
interface IERC165 {
    /**
     * @dev Returns true if this contract implements the interface defined by
     * `interfaceId`. See the corresponding
     * https://eips.ethereum.org/EIPS/eip-165#how-interfaces-are-identified[EIP section]
     * to learn more about how these ids are created.
     *
     * This function call must use less than 30 000 gas.
     */
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}

/**
 * @dev Interface for the NFT Royalty Standard.
 *
 * A standardized way to retrieve royalty payment information for non-fungible tokens (NFTs) to enable universal
 * support for royalty payments across all NFT marketplaces and ecosystem participants.
 *
 * _Available since v4.5._
 */
interface IERC2981 is IERC165 {
    /**
     * @dev Returns how much royalty is owed and to whom, based on a sale price that may be denominated in any unit of
     * exchange. The royalty amount is denominated and should be paid in that same unit of exchange.
     */
    function royaltyInfo(uint256 tokenId, uint256 salePrice)
        external
        view
        returns (address receiver, uint256 royaltyAmount);
}

// OpenZeppelin Contracts v4.4.1 (utils/introspection/ERC165.sol)

/**
 * @dev Implementation of the {IERC165} interface.
 *
 * Contracts that want to implement ERC165 should inherit from this contract and override {supportsInterface} to check
 * for the additional interface id that will be supported. For example:
 *
 * ```solidity
 * function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
 *     return interfaceId == type(MyInterface).interfaceId || super.supportsInterface(interfaceId);
 * }
 * ```
 *
 * Alternatively, {ERC165Storage} provides an easier to use but more expensive implementation.
 */
abstract contract ERC165 is IERC165 {
    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IERC165).interfaceId;
    }
}

/**
 * @dev Implementation of the NFT Royalty Standard, a standardized way to retrieve royalty payment information.
 *
 * Royalty information can be specified globally for all token ids via {_setDefaultRoyalty}, and/or individually for
 * specific token ids via {_setTokenRoyalty}. The latter takes precedence over the first.
 *
 * Royalty is specified as a fraction of sale price. {_feeDenominator} is overridable but defaults to 10000, meaning the
 * fee is specified in basis points by default.
 *
 * IMPORTANT: ERC-2981 only specifies a way to signal royalty information and does not enforce its payment. See
 * https://eips.ethereum.org/EIPS/eip-2981#optional-royalty-payments[Rationale] in the EIP. Marketplaces are expected to
 * voluntarily pay royalties together with sales, but note that this standard is not yet widely supported.
 *
 * _Available since v4.5._
 */
abstract contract ERC2981 is IERC2981, ERC165 {
    struct RoyaltyInfo {
        address receiver;
        uint96 royaltyFraction;
    }

    RoyaltyInfo private _defaultRoyaltyInfo;
    mapping(uint256 => RoyaltyInfo) private _tokenRoyaltyInfo;

    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override(IERC165, ERC165) returns (bool) {
        return interfaceId == type(IERC2981).interfaceId || super.supportsInterface(interfaceId);
    }

    /**
     * @inheritdoc IERC2981
     */
    function royaltyInfo(uint256 _tokenId, uint256 _salePrice)
        public
        view
        virtual
        override
        returns (address, uint256)
    {
        RoyaltyInfo memory royalty = _tokenRoyaltyInfo[_tokenId];

        if (royalty.receiver == address(0)) {
            royalty = _defaultRoyaltyInfo;
        }

        uint256 royaltyAmount = (_salePrice * royalty.royaltyFraction) / _feeDenominator();

        return (royalty.receiver, royaltyAmount);
    }

    /**
     * @dev The denominator with which to interpret the fee set in {_setTokenRoyalty} and {_setDefaultRoyalty} as a
     * fraction of the sale price. Defaults to 10000 so fees are expressed in basis points, but may be customized by an
     * override.
     */
    function _feeDenominator() internal pure virtual returns (uint96) {
        return 10000;
    }

    /**
     * @dev Sets the royalty information that all ids in this contract will default to.
     *
     * Requirements:
     *
     * - `receiver` cannot be the zero address.
     * - `feeNumerator` cannot be greater than the fee denominator.
     */
    function _setDefaultRoyalty(address receiver, uint96 feeNumerator) internal virtual {
        require(feeNumerator <= _feeDenominator(), "ERC2981: royalty fee will exceed salePrice");
        require(receiver != address(0), "ERC2981: invalid receiver");

        _defaultRoyaltyInfo = RoyaltyInfo(receiver, feeNumerator);
    }

    /**
     * @dev Removes default royalty information.
     */
    function _deleteDefaultRoyalty() internal virtual {
        delete _defaultRoyaltyInfo;
    }

    /**
     * @dev Sets the royalty information for a specific token id, overriding the global default.
     *
     * Requirements:
     *
     * - `receiver` cannot be the zero address.
     * - `feeNumerator` cannot be greater than the fee denominator.
     */
    function _setTokenRoyalty(uint256 tokenId, address receiver, uint96 feeNumerator) internal virtual {
        require(feeNumerator <= _feeDenominator(), "ERC2981: royalty fee will exceed salePrice");
        require(receiver != address(0), "ERC2981: Invalid parameters");

        _tokenRoyaltyInfo[tokenId] = RoyaltyInfo(receiver, feeNumerator);
    }

    /**
     * @dev Resets royalty information for the token id back to the global default.
     */
    function _resetTokenRoyalty(uint256 tokenId) internal virtual {
        delete _tokenRoyaltyInfo[tokenId];
    }
}

interface IERC6551Registry {
    event AccountCreated(
        address account, address implementation, uint256 chainId, address tokenContract, uint256 tokenId, uint256 salt
    );

    function createAccount(
        address implementation,
        uint256 chainId,
        address tokenContract,
        uint256 tokenId,
        uint256 seed,
        bytes calldata initData
    ) external returns (address);

    function account(address implementation, uint256 chainId, address tokenContract, uint256 tokenId, uint256 salt)
        external
        view
        returns (address);
}

library Types {
    bytes32 internal constant SALT = keccak256(bytes("ATTProtocolV1"));
    struct AtticcAddresses {
        address communityBeacon;
    }

    struct AtticcBootstrapParams {
        address communityFactory;
    }

    struct CommunityFeatureStorage {
        uint256 totalCommunities;
        mapping(uint256 => Types.CommunityConfig) communitiesById;
    }

    struct CommunityConfig {
        address proxy;
        address owner;
        string name;
        string symbol;
        string description;
        // if totalSupply_ is 0, then unlimited supply
        uint256 totalSupply;
        uint256 price;
        uint256 maxPerWallet;
        // if accessCode is "", then no restricted access
        string  accessCode;
        string  tokenUriCommon;
        uint96  royaltyAmount;
        bool isTransferable;
        bool accessCodeUsed;
    }

    struct CommunityParameters {
        string name;
        string symbol;
        string description;
        // if totalSupply_ is 0, then unlimited supply
        uint256 totalSupply;
        uint256 price;
        uint256 maxPerWallet;
        // if accessCode is "", then no restricted access
        string  accessCode;
        string  tokenUriCommon;
        uint96 royaltyAmount;
        bool isTransferable;
        bool accessCodeUsed;
    }

    struct EngineBootstrapParams {
        address engineOwner;
        address communityFactory;
    }
}

interface IUpgradeable {
    /**
     * @notice Contract version number.
     *
     * @return uint256 The version number.
     */
    function version() external pure returns (uint256);
}

// OpenZeppelin Contracts (last updated v4.7.0) (token/ERC721/IERC721.sol)

/**
 * @dev Required interface of an ERC721 compliant contract.
 */
interface IERC721 {
    /**
     * @dev Emitted when `tokenId` token is transferred from `from` to `to`.
     */
    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);

    /**
     * @dev Emitted when `owner` enables `approved` to manage the `tokenId` token.
     */
    event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);

    /**
     * @dev Emitted when `owner` enables or disables (`approved`) `operator` to manage all of its assets.
     */
    event ApprovalForAll(address indexed owner, address indexed operator, bool approved);

    /**
     * @dev Returns the number of tokens in ``owner``'s account.
     */
    function balanceOf(address owner) external view returns (uint256 balance);

    /**
     * @dev Returns the owner of the `tokenId` token.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     */
    function ownerOf(uint256 tokenId) external view returns (address owner);

    /**
     * @dev Safely transfers `tokenId` token from `from` to `to`.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must exist and be owned by `from`.
     * - If the caller is not `from`, it must be approved to move this token by either {approve} or {setApprovalForAll}.
     * - If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon a safe transfer.
     *
     * Emits a {Transfer} event.
     */
    function safeTransferFrom(address from, address to, uint256 tokenId, bytes calldata data) external;

    /**
     * @dev Safely transfers `tokenId` token from `from` to `to`, checking first that contract recipients
     * are aware of the ERC721 protocol to prevent tokens from being forever locked.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must exist and be owned by `from`.
     * - If the caller is not `from`, it must have been allowed to move this token by either {approve} or {setApprovalForAll}.
     * - If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon a safe transfer.
     *
     * Emits a {Transfer} event.
     */
    function safeTransferFrom(address from, address to, uint256 tokenId) external;

    /**
     * @dev Transfers `tokenId` token from `from` to `to`.
     *
     * WARNING: Usage of this method is discouraged, use {safeTransferFrom} whenever possible.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must be owned by `from`.
     * - If the caller is not `from`, it must be approved to move this token by either {approve} or {setApprovalForAll}.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 tokenId) external;

    /**
     * @dev Gives permission to `to` to transfer `tokenId` token to another account.
     * The approval is cleared when the token is transferred.
     *
     * Only a single account can be approved at a time, so approving the zero address clears previous approvals.
     *
     * Requirements:
     *
     * - The caller must own the token or be an approved operator.
     * - `tokenId` must exist.
     *
     * Emits an {Approval} event.
     */
    function approve(address to, uint256 tokenId) external;

    /**
     * @dev Approve or remove `operator` as an operator for the caller.
     * Operators can call {transferFrom} or {safeTransferFrom} for any token owned by the caller.
     *
     * Requirements:
     *
     * - The `operator` cannot be the caller.
     *
     * Emits an {ApprovalForAll} event.
     */
    function setApprovalForAll(address operator, bool _approved) external;

    /**
     * @dev Returns the account approved for `tokenId` token.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     */
    function getApproved(uint256 tokenId) external view returns (address operator);

    /**
     * @dev Returns if the `operator` is allowed to manage all of the assets of `owner`.
     *
     * See {setApprovalForAll}
     */
    function isApprovedForAll(address owner, address operator) external view returns (bool);
}

// ERC721A Contracts v4.2.3
// Creator: Chiru Labs

// ERC721A Contracts v4.2.3
// Creator: Chiru Labs

// ERC721A Contracts v4.2.3
// Creator: Chiru Labs

/**
 * @dev Interface of ERC721A.
 */
interface IERC721AUpgradeable {
    /**
     * The caller must own the token or be an approved operator.
     */
    error ApprovalCallerNotOwnerNorApproved();

    /**
     * The token does not exist.
     */
    error ApprovalQueryForNonexistentToken();

    /**
     * Cannot query the balance for the zero address.
     */
    error BalanceQueryForZeroAddress();

    /**
     * Cannot mint to the zero address.
     */
    error MintToZeroAddress();

    /**
     * The quantity of tokens minted must be more than zero.
     */
    error MintZeroQuantity();

    /**
     * The token does not exist.
     */
    error OwnerQueryForNonexistentToken();

    /**
     * The caller must own the token or be an approved operator.
     */
    error TransferCallerNotOwnerNorApproved();

    /**
     * The token must be owned by `from`.
     */
    error TransferFromIncorrectOwner();

    /**
     * Cannot safely transfer to a contract that does not implement the
     * ERC721Receiver interface.
     */
    error TransferToNonERC721ReceiverImplementer();

    /**
     * Cannot transfer to the zero address.
     */
    error TransferToZeroAddress();

    /**
     * The token does not exist.
     */
    error URIQueryForNonexistentToken();

    /**
     * The `quantity` minted with ERC2309 exceeds the safety limit.
     */
    error MintERC2309QuantityExceedsLimit();

    /**
     * The `extraData` cannot be set on an unintialized ownership slot.
     */
    error OwnershipNotInitializedForExtraData();

    // =============================================================
    //                            STRUCTS
    // =============================================================

    struct TokenOwnership {
        // The address of the owner.
        address addr;
        // Stores the start time of ownership with minimal overhead for tokenomics.
        uint64 startTimestamp;
        // Whether the token has been burned.
        bool burned;
        // Arbitrary data similar to `startTimestamp` that can be set via {_extraData}.
        uint24 extraData;
    }

    // =============================================================
    //                         TOKEN COUNTERS
    // =============================================================

    /**
     * @dev Returns the total number of tokens in existence.
     * Burned tokens will reduce the count.
     * To get the total number of tokens minted, please see {_totalMinted}.
     */
    function totalSupply() external view returns (uint256);

    // =============================================================
    //                            IERC165
    // =============================================================

    /**
     * @dev Returns true if this contract implements the interface defined by
     * `interfaceId`. See the corresponding
     * [EIP section](https://eips.ethereum.org/EIPS/eip-165#how-interfaces-are-identified)
     * to learn more about how these ids are created.
     *
     * This function call must use less than 30000 gas.
     */
    function supportsInterface(bytes4 interfaceId) external view returns (bool);

    // =============================================================
    //                            IERC721
    // =============================================================

    /**
     * @dev Emitted when `tokenId` token is transferred from `from` to `to`.
     */
    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);

    /**
     * @dev Emitted when `owner` enables `approved` to manage the `tokenId` token.
     */
    event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);

    /**
     * @dev Emitted when `owner` enables or disables
     * (`approved`) `operator` to manage all of its assets.
     */
    event ApprovalForAll(address indexed owner, address indexed operator, bool approved);

    /**
     * @dev Returns the number of tokens in `owner`'s account.
     */
    function balanceOf(address owner) external view returns (uint256 balance);

    /**
     * @dev Returns the owner of the `tokenId` token.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     */
    function ownerOf(uint256 tokenId) external view returns (address owner);

    /**
     * @dev Safely transfers `tokenId` token from `from` to `to`,
     * checking first that contract recipients are aware of the ERC721 protocol
     * to prevent tokens from being forever locked.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must exist and be owned by `from`.
     * - If the caller is not `from`, it must be have been allowed to move
     * this token by either {approve} or {setApprovalForAll}.
     * - If `to` refers to a smart contract, it must implement
     * {IERC721Receiver-onERC721Received}, which is called upon a safe transfer.
     *
     * Emits a {Transfer} event.
     */
    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId,
        bytes calldata data
    ) external payable;

    /**
     * @dev Equivalent to `safeTransferFrom(from, to, tokenId, '')`.
     */
    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId
    ) external payable;

    /**
     * @dev Transfers `tokenId` from `from` to `to`.
     *
     * WARNING: Usage of this method is discouraged, use {safeTransferFrom}
     * whenever possible.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must be owned by `from`.
     * - If the caller is not `from`, it must be approved to move this token
     * by either {approve} or {setApprovalForAll}.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(
        address from,
        address to,
        uint256 tokenId
    ) external payable;

    /**
     * @dev Gives permission to `to` to transfer `tokenId` token to another account.
     * The approval is cleared when the token is transferred.
     *
     * Only a single account can be approved at a time, so approving the
     * zero address clears previous approvals.
     *
     * Requirements:
     *
     * - The caller must own the token or be an approved operator.
     * - `tokenId` must exist.
     *
     * Emits an {Approval} event.
     */
    function approve(address to, uint256 tokenId) external payable;

    /**
     * @dev Approve or remove `operator` as an operator for the caller.
     * Operators can call {transferFrom} or {safeTransferFrom}
     * for any token owned by the caller.
     *
     * Requirements:
     *
     * - The `operator` cannot be the caller.
     *
     * Emits an {ApprovalForAll} event.
     */
    function setApprovalForAll(address operator, bool _approved) external;

    /**
     * @dev Returns the account approved for `tokenId` token.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     */
    function getApproved(uint256 tokenId) external view returns (address operator);

    /**
     * @dev Returns if the `operator` is allowed to manage all of the assets of `owner`.
     *
     * See {setApprovalForAll}.
     */
    function isApprovedForAll(address owner, address operator) external view returns (bool);

    // =============================================================
    //                        IERC721Metadata
    // =============================================================

    /**
     * @dev Returns the token collection name.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the token collection symbol.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the Uniform Resource Identifier (URI) for `tokenId` token.
     */
    function tokenURI(uint256 tokenId) external view returns (string memory);

    // =============================================================
    //                           IERC2309
    // =============================================================

    /**
     * @dev Emitted when tokens in `fromTokenId` to `toTokenId`
     * (inclusive) is transferred from `from` to `to`, as defined in the
     * [ERC2309](https://eips.ethereum.org/EIPS/eip-2309) standard.
     *
     * See {_mintERC2309} for more details.
     */
    event ConsecutiveTransfer(uint256 indexed fromTokenId, uint256 toTokenId, address indexed from, address indexed to);
}

/**
 * @dev Interface of ERC721AQueryable.
 */
interface IERC721AQueryableUpgradeable is IERC721AUpgradeable {
    /**
     * Invalid query range (`start` >= `stop`).
     */
    error InvalidQueryRange();

    /**
     * @dev Returns the `TokenOwnership` struct at `tokenId` without reverting.
     *
     * If the `tokenId` is out of bounds:
     *
     * - `addr = address(0)`
     * - `startTimestamp = 0`
     * - `burned = false`
     * - `extraData = 0`
     *
     * If the `tokenId` is burned:
     *
     * - `addr = <Address of owner before token was burned>`
     * - `startTimestamp = <Timestamp when token was burned>`
     * - `burned = true`
     * - `extraData = <Extra data when token was burned>`
     *
     * Otherwise:
     *
     * - `addr = <Address of owner>`
     * - `startTimestamp = <Timestamp of start of ownership>`
     * - `burned = false`
     * - `extraData = <Extra data at start of ownership>`
     */
    function explicitOwnershipOf(uint256 tokenId) external view returns (TokenOwnership memory);

    /**
     * @dev Returns an array of `TokenOwnership` structs at `tokenIds` in order.
     * See {ERC721AQueryable-explicitOwnershipOf}
     */
    function explicitOwnershipsOf(uint256[] memory tokenIds) external view returns (TokenOwnership[] memory);

    /**
     * @dev Returns an array of token IDs owned by `owner`,
     * in the range [`start`, `stop`)
     * (i.e. `start <= tokenId < stop`).
     *
     * This function allows for tokens to be queried if the collection
     * grows too big for a single call of {ERC721AQueryable-tokensOfOwner}.
     *
     * Requirements:
     *
     * - `start < stop`
     */
    function tokensOfOwnerIn(
        address owner,
        uint256 start,
        uint256 stop
    ) external view returns (uint256[] memory);

    /**
     * @dev Returns an array of token IDs owned by `owner`.
     *
     * This function scans the ownership mapping and is O(`totalSupply`) in complexity.
     * It is meant to be called off-chain.
     *
     * See {ERC721AQueryable-tokensOfOwnerIn} for splitting the scan into
     * multiple smaller scans if the collection is large enough to cause
     * an out-of-gas error (10K collections should be fine).
     */
    function tokensOfOwner(address owner) external view returns (uint256[] memory);
}

// ERC721A Contracts v4.2.3
// Creator: Chiru Labs

library ERC721AStorage {
    // Bypass for a `--via-ir` bug (https://github.com/chiru-labs/ERC721A/pull/364).
    struct TokenApprovalRef {
        address value;
    }

    struct Layout {
        // =============================================================
        //                            STORAGE
        // =============================================================

        // The next token ID to be minted.
        uint256 _currentIndex;
        // The number of tokens burned.
        uint256 _burnCounter;
        // Token name
        string _name;
        // Token symbol
        string _symbol;
        // Mapping from token ID to ownership details
        // An empty struct value does not necessarily mean the token is unowned.
        // See {_packedOwnershipOf} implementation for details.
        //
        // Bits Layout:
        // - [0..159]   `addr`
        // - [160..223] `startTimestamp`
        // - [224]      `burned`
        // - [225]      `nextInitialized`
        // - [232..255] `extraData`
        mapping(uint256 => uint256) _packedOwnerships;
        // Mapping owner address to address data.
        //
        // Bits Layout:
        // - [0..63]    `balance`
        // - [64..127]  `numberMinted`
        // - [128..191] `numberBurned`
        // - [192..255] `aux`
        mapping(address => uint256) _packedAddressData;
        // Mapping from token ID to approved address.
        mapping(uint256 => ERC721AStorage.TokenApprovalRef) _tokenApprovals;
        // Mapping from owner to operator approvals
        mapping(address => mapping(address => bool)) _operatorApprovals;
    }

    bytes32 internal constant STORAGE_SLOT = keccak256('ERC721A.contracts.storage.ERC721A');

    function layout() internal pure returns (Layout storage l) {
        bytes32 slot = STORAGE_SLOT;
        assembly {
            l.slot := slot
        }
    }
}

/**
 * @dev This is a base contract to aid in writing upgradeable diamond facet contracts, or any kind of contract that will be deployed
 * behind a proxy. Since proxied contracts do not make use of a constructor, it's common to move constructor logic to an
 * external initializer function, usually called `initialize`. It then becomes necessary to protect this initializer
 * function so it can only be called once. The {initializer} modifier provided by this contract will have this effect.
 *
 * TIP: To avoid leaving the proxy in an uninitialized state, the initializer function should be called as early as
 * possible by providing the encoded function call as the `_data` argument to {ERC1967Proxy-constructor}.
 *
 * CAUTION: When used with inheritance, manual care must be taken to not invoke a parent initializer twice, or to ensure
 * that all initializers are idempotent. This is not verified automatically as constructors are by Solidity.
 */

/**
 * @dev This is a base storage for the  initialization function for upgradeable diamond facet contracts
 **/

library ERC721A__InitializableStorage {
    struct Layout {
        /*
         * Indicates that the contract has been initialized.
         */
        bool _initialized;
        /*
         * Indicates that the contract is in the process of being initialized.
         */
        bool _initializing;
    }

    bytes32 internal constant STORAGE_SLOT = keccak256('ERC721A.contracts.storage.initializable.facet');

    function layout() internal pure returns (Layout storage l) {
        bytes32 slot = STORAGE_SLOT;
        assembly {
            l.slot := slot
        }
    }
}

abstract contract ERC721A__Initializable {
    using ERC721A__InitializableStorage for ERC721A__InitializableStorage.Layout;

    /**
     * @dev Modifier to protect an initializer function from being invoked twice.
     */
    modifier initializerERC721A() {
        // If the contract is initializing we ignore whether _initialized is set in order to support multiple
        // inheritance patterns, but we only do this in the context of a constructor, because in other contexts the
        // contract may have been reentered.
        require(
            ERC721A__InitializableStorage.layout()._initializing
                ? _isConstructor()
                : !ERC721A__InitializableStorage.layout()._initialized,
            'ERC721A__Initializable: contract is already initialized'
        );

        bool isTopLevelCall = !ERC721A__InitializableStorage.layout()._initializing;
        if (isTopLevelCall) {
            ERC721A__InitializableStorage.layout()._initializing = true;
            ERC721A__InitializableStorage.layout()._initialized = true;
        }

        _;

        if (isTopLevelCall) {
            ERC721A__InitializableStorage.layout()._initializing = false;
        }
    }

    /**
     * @dev Modifier to protect an initialization function so that it can only be invoked by functions with the
     * {initializer} modifier, directly or indirectly.
     */
    modifier onlyInitializingERC721A() {
        require(
            ERC721A__InitializableStorage.layout()._initializing,
            'ERC721A__Initializable: contract is not initializing'
        );
        _;
    }

    /// @dev Returns true if and only if the function is running in the constructor
    function _isConstructor() private view returns (bool) {
        // extcodesize checks the size of the code stored in an address, and
        // address returns the current address. Since the code is still not
        // deployed when running a constructor, any checks on its code size will
        // yield zero, making it an effective way to detect if a contract is
        // under construction or not.
        address self = address(this);
        uint256 cs;
        assembly {
            cs := extcodesize(self)
        }
        return cs == 0;
    }
}

/**
 * @dev Interface of ERC721 token receiver.
 */
interface ERC721A__IERC721ReceiverUpgradeable {
    function onERC721Received(
        address operator,
        address from,
        uint256 tokenId,
        bytes calldata data
    ) external returns (bytes4);
}

/**
 * @title ERC721A
 *
 * @dev Implementation of the [ERC721](https://eips.ethereum.org/EIPS/eip-721)
 * Non-Fungible Token Standard, including the Metadata extension.
 * Optimized for lower gas during batch mints.
 *
 * Token IDs are minted in sequential order (e.g. 0, 1, 2, 3, ...)
 * starting from `_startTokenId()`.
 *
 * Assumptions:
 *
 * - An owner cannot have more than 2**64 - 1 (max value of uint64) of supply.
 * - The maximum token ID cannot exceed 2**256 - 1 (max value of uint256).
 */
contract ERC721AUpgradeable is ERC721A__Initializable, IERC721AUpgradeable {
    using ERC721AStorage for ERC721AStorage.Layout;

    // =============================================================
    //                           CONSTANTS
    // =============================================================

    // Mask of an entry in packed address data.
    uint256 private constant _BITMASK_ADDRESS_DATA_ENTRY = (1 << 64) - 1;

    // The bit position of `numberMinted` in packed address data.
    uint256 private constant _BITPOS_NUMBER_MINTED = 64;

    // The bit position of `numberBurned` in packed address data.
    uint256 private constant _BITPOS_NUMBER_BURNED = 128;

    // The bit position of `aux` in packed address data.
    uint256 private constant _BITPOS_AUX = 192;

    // Mask of all 256 bits in packed address data except the 64 bits for `aux`.
    uint256 private constant _BITMASK_AUX_COMPLEMENT = (1 << 192) - 1;

    // The bit position of `startTimestamp` in packed ownership.
    uint256 private constant _BITPOS_START_TIMESTAMP = 160;

    // The bit mask of the `burned` bit in packed ownership.
    uint256 private constant _BITMASK_BURNED = 1 << 224;

    // The bit position of the `nextInitialized` bit in packed ownership.
    uint256 private constant _BITPOS_NEXT_INITIALIZED = 225;

    // The bit mask of the `nextInitialized` bit in packed ownership.
    uint256 private constant _BITMASK_NEXT_INITIALIZED = 1 << 225;

    // The bit position of `extraData` in packed ownership.
    uint256 private constant _BITPOS_EXTRA_DATA = 232;

    // Mask of all 256 bits in a packed ownership except the 24 bits for `extraData`.
    uint256 private constant _BITMASK_EXTRA_DATA_COMPLEMENT = (1 << 232) - 1;

    // The mask of the lower 160 bits for addresses.
    uint256 private constant _BITMASK_ADDRESS = (1 << 160) - 1;

    // The maximum `quantity` that can be minted with {_mintERC2309}.
    // This limit is to prevent overflows on the address data entries.
    // For a limit of 5000, a total of 3.689e15 calls to {_mintERC2309}
    // is required to cause an overflow, which is unrealistic.
    uint256 private constant _MAX_MINT_ERC2309_QUANTITY_LIMIT = 5000;

    // The `Transfer` event signature is given by:
    // `keccak256(bytes("Transfer(address,address,uint256)"))`.
    bytes32 private constant _TRANSFER_EVENT_SIGNATURE =
        0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef;

    // =============================================================
    //                          CONSTRUCTOR
    // =============================================================

    function __ERC721A_init(string memory name_, string memory symbol_) internal onlyInitializingERC721A {
        __ERC721A_init_unchained(name_, symbol_);
    }

    function __ERC721A_init_unchained(string memory name_, string memory symbol_) internal onlyInitializingERC721A {
        ERC721AStorage.layout()._name = name_;
        ERC721AStorage.layout()._symbol = symbol_;
        ERC721AStorage.layout()._currentIndex = _startTokenId();
    }

    // =============================================================
    //                   TOKEN COUNTING OPERATIONS
    // =============================================================

    /**
     * @dev Returns the starting token ID.
     * To change the starting token ID, please override this function.
     */
    function _startTokenId() internal view virtual returns (uint256) {
        return 0;
    }

    /**
     * @dev Returns the next token ID to be minted.
     */
    function _nextTokenId() internal view virtual returns (uint256) {
        return ERC721AStorage.layout()._currentIndex;
    }

    /**
     * @dev Returns the total number of tokens in existence.
     * Burned tokens will reduce the count.
     * To get the total number of tokens minted, please see {_totalMinted}.
     */
    function totalSupply() public view virtual override returns (uint256) {
        // Counter underflow is impossible as _burnCounter cannot be incremented
        // more than `_currentIndex - _startTokenId()` times.
        unchecked {
            return ERC721AStorage.layout()._currentIndex - ERC721AStorage.layout()._burnCounter - _startTokenId();
        }
    }

    /**
     * @dev Returns the total amount of tokens minted in the contract.
     */
    function _totalMinted() internal view virtual returns (uint256) {
        // Counter underflow is impossible as `_currentIndex` does not decrement,
        // and it is initialized to `_startTokenId()`.
        unchecked {
            return ERC721AStorage.layout()._currentIndex - _startTokenId();
        }
    }

    /**
     * @dev Returns the total number of tokens burned.
     */
    function _totalBurned() internal view virtual returns (uint256) {
        return ERC721AStorage.layout()._burnCounter;
    }

    // =============================================================
    //                    ADDRESS DATA OPERATIONS
    // =============================================================

    /**
     * @dev Returns the number of tokens in `owner`'s account.
     */
    function balanceOf(address owner) public view virtual override returns (uint256) {
        if (owner == address(0)) _revert(BalanceQueryForZeroAddress.selector);
        return ERC721AStorage.layout()._packedAddressData[owner] & _BITMASK_ADDRESS_DATA_ENTRY;
    }

    /**
     * Returns the number of tokens minted by `owner`.
     */
    function _numberMinted(address owner) internal view returns (uint256) {
        return
            (ERC721AStorage.layout()._packedAddressData[owner] >> _BITPOS_NUMBER_MINTED) & _BITMASK_ADDRESS_DATA_ENTRY;
    }

    /**
     * Returns the number of tokens burned by or on behalf of `owner`.
     */
    function _numberBurned(address owner) internal view returns (uint256) {
        return
            (ERC721AStorage.layout()._packedAddressData[owner] >> _BITPOS_NUMBER_BURNED) & _BITMASK_ADDRESS_DATA_ENTRY;
    }

    /**
     * Returns the auxiliary data for `owner`. (e.g. number of whitelist mint slots used).
     */
    function _getAux(address owner) internal view returns (uint64) {
        return uint64(ERC721AStorage.layout()._packedAddressData[owner] >> _BITPOS_AUX);
    }

    /**
     * Sets the auxiliary data for `owner`. (e.g. number of whitelist mint slots used).
     * If there are multiple variables, please pack them into a uint64.
     */
    function _setAux(address owner, uint64 aux) internal virtual {
        uint256 packed = ERC721AStorage.layout()._packedAddressData[owner];
        uint256 auxCasted;
        // Cast `aux` with assembly to avoid redundant masking.
        assembly {
            auxCasted := aux
        }
        packed = (packed & _BITMASK_AUX_COMPLEMENT) | (auxCasted << _BITPOS_AUX);
        ERC721AStorage.layout()._packedAddressData[owner] = packed;
    }

    // =============================================================
    //                            IERC165
    // =============================================================

    /**
     * @dev Returns true if this contract implements the interface defined by
     * `interfaceId`. See the corresponding
     * [EIP section](https://eips.ethereum.org/EIPS/eip-165#how-interfaces-are-identified)
     * to learn more about how these ids are created.
     *
     * This function call must use less than 30000 gas.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        // The interface IDs are constants representing the first 4 bytes
        // of the XOR of all function selectors in the interface.
        // See: [ERC165](https://eips.ethereum.org/EIPS/eip-165)
        // (e.g. `bytes4(i.functionA.selector ^ i.functionB.selector ^ ...)`)
        return
            interfaceId == 0x01ffc9a7 || // ERC165 interface ID for ERC165.
            interfaceId == 0x80ac58cd || // ERC165 interface ID for ERC721.
            interfaceId == 0x5b5e139f; // ERC165 interface ID for ERC721Metadata.
    }

    // =============================================================
    //                        IERC721Metadata
    // =============================================================

    /**
     * @dev Returns the token collection name.
     */
    function name() public view virtual override returns (string memory) {
        return ERC721AStorage.layout()._name;
    }

    /**
     * @dev Returns the token collection symbol.
     */
    function symbol() public view virtual override returns (string memory) {
        return ERC721AStorage.layout()._symbol;
    }

    /**
     * @dev Returns the Uniform Resource Identifier (URI) for `tokenId` token.
     */
    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
        if (!_exists(tokenId)) _revert(URIQueryForNonexistentToken.selector);

        string memory baseURI = _baseURI();
        return bytes(baseURI).length != 0 ? string(abi.encodePacked(baseURI, _toString(tokenId))) : '';
    }

    /**
     * @dev Base URI for computing {tokenURI}. If set, the resulting URI for each
     * token will be the concatenation of the `baseURI` and the `tokenId`. Empty
     * by default, it can be overridden in child contracts.
     */
    function _baseURI() internal view virtual returns (string memory) {
        return '';
    }

    // =============================================================
    //                     OWNERSHIPS OPERATIONS
    // =============================================================

    /**
     * @dev Returns the owner of the `tokenId` token.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     */
    function ownerOf(uint256 tokenId) public view virtual override returns (address) {
        return address(uint160(_packedOwnershipOf(tokenId)));
    }

    /**
     * @dev Gas spent here starts off proportional to the maximum mint batch size.
     * It gradually moves to O(1) as tokens get transferred around over time.
     */
    function _ownershipOf(uint256 tokenId) internal view virtual returns (TokenOwnership memory) {
        return _unpackedOwnership(_packedOwnershipOf(tokenId));
    }

    /**
     * @dev Returns the unpacked `TokenOwnership` struct at `index`.
     */
    function _ownershipAt(uint256 index) internal view virtual returns (TokenOwnership memory) {
        return _unpackedOwnership(ERC721AStorage.layout()._packedOwnerships[index]);
    }

    /**
     * @dev Returns whether the ownership slot at `index` is initialized.
     * An uninitialized slot does not necessarily mean that the slot has no owner.
     */
    function _ownershipIsInitialized(uint256 index) internal view virtual returns (bool) {
        return ERC721AStorage.layout()._packedOwnerships[index] != 0;
    }

    /**
     * @dev Initializes the ownership slot minted at `index` for efficiency purposes.
     */
    function _initializeOwnershipAt(uint256 index) internal virtual {
        if (ERC721AStorage.layout()._packedOwnerships[index] == 0) {
            ERC721AStorage.layout()._packedOwnerships[index] = _packedOwnershipOf(index);
        }
    }

    /**
     * Returns the packed ownership data of `tokenId`.
     */
    function _packedOwnershipOf(uint256 tokenId) private view returns (uint256 packed) {
        if (_startTokenId() <= tokenId) {
            packed = ERC721AStorage.layout()._packedOwnerships[tokenId];
            // If the data at the starting slot does not exist, start the scan.
            if (packed == 0) {
                if (tokenId >= ERC721AStorage.layout()._currentIndex) _revert(OwnerQueryForNonexistentToken.selector);
                // Invariant:
                // There will always be an initialized ownership slot
                // (i.e. `ownership.addr != address(0) && ownership.burned == false`)
                // before an unintialized ownership slot
                // (i.e. `ownership.addr == address(0) && ownership.burned == false`)
                // Hence, `tokenId` will not underflow.
                //
                // We can directly compare the packed value.
                // If the address is zero, packed will be zero.
                for (;;) {
                    unchecked {
                        packed = ERC721AStorage.layout()._packedOwnerships[--tokenId];
                    }
                    if (packed == 0) continue;
                    if (packed & _BITMASK_BURNED == 0) return packed;
                    // Otherwise, the token is burned, and we must revert.
                    // This handles the case of batch burned tokens, where only the burned bit
                    // of the starting slot is set, and remaining slots are left uninitialized.
                    _revert(OwnerQueryForNonexistentToken.selector);
                }
            }
            // Otherwise, the data exists and we can skip the scan.
            // This is possible because we have already achieved the target condition.
            // This saves 2143 gas on transfers of initialized tokens.
            // If the token is not burned, return `packed`. Otherwise, revert.
            if (packed & _BITMASK_BURNED == 0) return packed;
        }
        _revert(OwnerQueryForNonexistentToken.selector);
    }

    /**
     * @dev Returns the unpacked `TokenOwnership` struct from `packed`.
     */
    function _unpackedOwnership(uint256 packed) private pure returns (TokenOwnership memory ownership) {
        ownership.addr = address(uint160(packed));
        ownership.startTimestamp = uint64(packed >> _BITPOS_START_TIMESTAMP);
        ownership.burned = packed & _BITMASK_BURNED != 0;
        ownership.extraData = uint24(packed >> _BITPOS_EXTRA_DATA);
    }

    /**
     * @dev Packs ownership data into a single uint256.
     */
    function _packOwnershipData(address owner, uint256 flags) private view returns (uint256 result) {
        assembly {
            // Mask `owner` to the lower 160 bits, in case the upper bits somehow aren't clean.
            owner := and(owner, _BITMASK_ADDRESS)
            // `owner | (block.timestamp << _BITPOS_START_TIMESTAMP) | flags`.
            result := or(owner, or(shl(_BITPOS_START_TIMESTAMP, timestamp()), flags))
        }
    }

    /**
     * @dev Returns the `nextInitialized` flag set if `quantity` equals 1.
     */
    function _nextInitializedFlag(uint256 quantity) private pure returns (uint256 result) {
        // For branchless setting of the `nextInitialized` flag.
        assembly {
            // `(quantity == 1) << _BITPOS_NEXT_INITIALIZED`.
            result := shl(_BITPOS_NEXT_INITIALIZED, eq(quantity, 1))
        }
    }

    // =============================================================
    //                      APPROVAL OPERATIONS
    // =============================================================

    /**
     * @dev Gives permission to `to` to transfer `tokenId` token to another account. See {ERC721A-_approve}.
     *
     * Requirements:
     *
     * - The caller must own the token or be an approved operator.
     */
    function approve(address to, uint256 tokenId) public payable virtual override {
        _approve(to, tokenId, true);
    }

    /**
     * @dev Returns the account approved for `tokenId` token.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     */
    function getApproved(uint256 tokenId) public view virtual override returns (address) {
        if (!_exists(tokenId)) _revert(ApprovalQueryForNonexistentToken.selector);

        return ERC721AStorage.layout()._tokenApprovals[tokenId].value;
    }

    /**
     * @dev Approve or remove `operator` as an operator for the caller.
     * Operators can call {transferFrom} or {safeTransferFrom}
     * for any token owned by the caller.
     *
     * Requirements:
     *
     * - The `operator` cannot be the caller.
     *
     * Emits an {ApprovalForAll} event.
     */
    function setApprovalForAll(address operator, bool approved) public virtual override {
        ERC721AStorage.layout()._operatorApprovals[_msgSenderERC721A()][operator] = approved;
        emit ApprovalForAll(_msgSenderERC721A(), operator, approved);
    }

    /**
     * @dev Returns if the `operator` is allowed to manage all of the assets of `owner`.
     *
     * See {setApprovalForAll}.
     */
    function isApprovedForAll(address owner, address operator) public view virtual override returns (bool) {
        return ERC721AStorage.layout()._operatorApprovals[owner][operator];
    }

    /**
     * @dev Returns whether `tokenId` exists.
     *
     * Tokens can be managed by their owner or approved accounts via {approve} or {setApprovalForAll}.
     *
     * Tokens start existing when they are minted. See {_mint}.
     */
    function _exists(uint256 tokenId) internal view virtual returns (bool result) {
        if (_startTokenId() <= tokenId) {
            if (tokenId < ERC721AStorage.layout()._currentIndex) {
                uint256 packed;
                while ((packed = ERC721AStorage.layout()._packedOwnerships[tokenId]) == 0) --tokenId;
                result = packed & _BITMASK_BURNED == 0;
            }
        }
    }

    /**
     * @dev Returns whether `msgSender` is equal to `approvedAddress` or `owner`.
     */
    function _isSenderApprovedOrOwner(
        address approvedAddress,
        address owner,
        address msgSender
    ) private pure returns (bool result) {
        assembly {
            // Mask `owner` to the lower 160 bits, in case the upper bits somehow aren't clean.
            owner := and(owner, _BITMASK_ADDRESS)
            // Mask `msgSender` to the lower 160 bits, in case the upper bits somehow aren't clean.
            msgSender := and(msgSender, _BITMASK_ADDRESS)
            // `msgSender == owner || msgSender == approvedAddress`.
            result := or(eq(msgSender, owner), eq(msgSender, approvedAddress))
        }
    }

    /**
     * @dev Returns the storage slot and value for the approved address of `tokenId`.
     */
    function _getApprovedSlotAndAddress(uint256 tokenId)
        private
        view
        returns (uint256 approvedAddressSlot, address approvedAddress)
    {
        ERC721AStorage.TokenApprovalRef storage tokenApproval = ERC721AStorage.layout()._tokenApprovals[tokenId];
        // The following is equivalent to `approvedAddress = _tokenApprovals[tokenId].value`.
        assembly {
            approvedAddressSlot := tokenApproval.slot
            approvedAddress := sload(approvedAddressSlot)
        }
    }

    // =============================================================
    //                      TRANSFER OPERATIONS
    // =============================================================

    /**
     * @dev Transfers `tokenId` from `from` to `to`.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must be owned by `from`.
     * - If the caller is not `from`, it must be approved to move this token
     * by either {approve} or {setApprovalForAll}.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(
        address from,
        address to,
        uint256 tokenId
    ) public payable virtual override {
        uint256 prevOwnershipPacked = _packedOwnershipOf(tokenId);

        // Mask `from` to the lower 160 bits, in case the upper bits somehow aren't clean.
        from = address(uint160(uint256(uint160(from)) & _BITMASK_ADDRESS));

        if (address(uint160(prevOwnershipPacked)) != from) _revert(TransferFromIncorrectOwner.selector);

        (uint256 approvedAddressSlot, address approvedAddress) = _getApprovedSlotAndAddress(tokenId);

        // The nested ifs save around 20+ gas over a compound boolean condition.
        if (!_isSenderApprovedOrOwner(approvedAddress, from, _msgSenderERC721A()))
            if (!isApprovedForAll(from, _msgSenderERC721A())) _revert(TransferCallerNotOwnerNorApproved.selector);

        _beforeTokenTransfers(from, to, tokenId, 1);

        // Clear approvals from the previous owner.
        assembly {
            if approvedAddress {
                // This is equivalent to `delete _tokenApprovals[tokenId]`.
                sstore(approvedAddressSlot, 0)
            }
        }

        // Underflow of the sender's balance is impossible because we check for
        // ownership above and the recipient's balance can't realistically overflow.
        // Counter overflow is incredibly unrealistic as `tokenId` would have to be 2**256.
        unchecked {
            // We can directly increment and decrement the balances.
            --ERC721AStorage.layout()._packedAddressData[from]; // Updates: `balance -= 1`.
            ++ERC721AStorage.layout()._packedAddressData[to]; // Updates: `balance += 1`.

            // Updates:
            // - `address` to the next owner.
            // - `startTimestamp` to the timestamp of transfering.
            // - `burned` to `false`.
            // - `nextInitialized` to `true`.
            ERC721AStorage.layout()._packedOwnerships[tokenId] = _packOwnershipData(
                to,
                _BITMASK_NEXT_INITIALIZED | _nextExtraData(from, to, prevOwnershipPacked)
            );

            // If the next slot may not have been initialized (i.e. `nextInitialized == false`) .
            if (prevOwnershipPacked & _BITMASK_NEXT_INITIALIZED == 0) {
                uint256 nextTokenId = tokenId + 1;
                // If the next slot's address is zero and not burned (i.e. packed value is zero).
                if (ERC721AStorage.layout()._packedOwnerships[nextTokenId] == 0) {
                    // If the next slot is within bounds.
                    if (nextTokenId != ERC721AStorage.layout()._currentIndex) {
                        // Initialize the next slot to maintain correctness for `ownerOf(tokenId + 1)`.
                        ERC721AStorage.layout()._packedOwnerships[nextTokenId] = prevOwnershipPacked;
                    }
                }
            }
        }

        // Mask `to` to the lower 160 bits, in case the upper bits somehow aren't clean.
        uint256 toMasked = uint256(uint160(to)) & _BITMASK_ADDRESS;
        assembly {
            // Emit the `Transfer` event.
            log4(
                0, // Start of data (0, since no data).
                0, // End of data (0, since no data).
                _TRANSFER_EVENT_SIGNATURE, // Signature.
                from, // `from`.
                toMasked, // `to`.
                tokenId // `tokenId`.
            )
        }
        if (toMasked == 0) _revert(TransferToZeroAddress.selector);

        _afterTokenTransfers(from, to, tokenId, 1);
    }

    /**
     * @dev Equivalent to `safeTransferFrom(from, to, tokenId, '')`.
     */
    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId
    ) public payable virtual override {
        safeTransferFrom(from, to, tokenId, '');
    }

    /**
     * @dev Safely transfers `tokenId` token from `from` to `to`.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must exist and be owned by `from`.
     * - If the caller is not `from`, it must be approved to move this token
     * by either {approve} or {setApprovalForAll}.
     * - If `to` refers to a smart contract, it must implement
     * {IERC721Receiver-onERC721Received}, which is called upon a safe transfer.
     *
     * Emits a {Transfer} event.
     */
    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId,
        bytes memory _data
    ) public payable virtual override {
        transferFrom(from, to, tokenId);
        if (to.code.length != 0)
            if (!_checkContractOnERC721Received(from, to, tokenId, _data)) {
                _revert(TransferToNonERC721ReceiverImplementer.selector);
            }
    }

    /**
     * @dev Hook that is called before a set of serially-ordered token IDs
     * are about to be transferred. This includes minting.
     * And also called before burning one token.
     *
     * `startTokenId` - the first token ID to be transferred.
     * `quantity` - the amount to be transferred.
     *
     * Calling conditions:
     *
     * - When `from` and `to` are both non-zero, `from`'s `tokenId` will be
     * transferred to `to`.
     * - When `from` is zero, `tokenId` will be minted for `to`.
     * - When `to` is zero, `tokenId` will be burned by `from`.
     * - `from` and `to` are never both zero.
     */
    function _beforeTokenTransfers(
        address from,
        address to,
        uint256 startTokenId,
        uint256 quantity
    ) internal virtual {}

    /**
     * @dev Hook that is called after a set of serially-ordered token IDs
     * have been transferred. This includes minting.
     * And also called after one token has been burned.
     *
     * `startTokenId` - the first token ID to be transferred.
     * `quantity` - the amount to be transferred.
     *
     * Calling conditions:
     *
     * - When `from` and `to` are both non-zero, `from`'s `tokenId` has been
     * transferred to `to`.
     * - When `from` is zero, `tokenId` has been minted for `to`.
     * - When `to` is zero, `tokenId` has been burned by `from`.
     * - `from` and `to` are never both zero.
     */
    function _afterTokenTransfers(
        address from,
        address to,
        uint256 startTokenId,
        uint256 quantity
    ) internal virtual {}

    /**
     * @dev Private function to invoke {IERC721Receiver-onERC721Received} on a target contract.
     *
     * `from` - Previous owner of the given token ID.
     * `to` - Target address that will receive the token.
     * `tokenId` - Token ID to be transferred.
     * `_data` - Optional data to send along with the call.
     *
     * Returns whether the call correctly returned the expected magic value.
     */
    function _checkContractOnERC721Received(
        address from,
        address to,
        uint256 tokenId,
        bytes memory _data
    ) private returns (bool) {
        try
            ERC721A__IERC721ReceiverUpgradeable(to).onERC721Received(_msgSenderERC721A(), from, tokenId, _data)
        returns (bytes4 retval) {
            return retval == ERC721A__IERC721ReceiverUpgradeable(to).onERC721Received.selector;
        } catch (bytes memory reason) {
            if (reason.length == 0) {
                _revert(TransferToNonERC721ReceiverImplementer.selector);
            }
            assembly {
                revert(add(32, reason), mload(reason))
            }
        }
    }

    // =============================================================
    //                        MINT OPERATIONS
    // =============================================================

    /**
     * @dev Mints `quantity` tokens and transfers them to `to`.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - `quantity` must be greater than 0.
     *
     * Emits a {Transfer} event for each mint.
     */
    function _mint(address to, uint256 quantity) internal virtual {
        uint256 startTokenId = ERC721AStorage.layout()._currentIndex;
        if (quantity == 0) _revert(MintZeroQuantity.selector);

        _beforeTokenTransfers(address(0), to, startTokenId, quantity);

        // Overflows are incredibly unrealistic.
        // `balance` and `numberMinted` have a maximum limit of 2**64.
        // `tokenId` has a maximum limit of 2**256.
        unchecked {
            // Updates:
            // - `address` to the owner.
            // - `startTimestamp` to the timestamp of minting.
            // - `burned` to `false`.
            // - `nextInitialized` to `quantity == 1`.
            ERC721AStorage.layout()._packedOwnerships[startTokenId] = _packOwnershipData(
                to,
                _nextInitializedFlag(quantity) | _nextExtraData(address(0), to, 0)
            );

            // Updates:
            // - `balance += quantity`.
            // - `numberMinted += quantity`.
            //
            // We can directly add to the `balance` and `numberMinted`.
            ERC721AStorage.layout()._packedAddressData[to] += quantity * ((1 << _BITPOS_NUMBER_MINTED) | 1);

            // Mask `to` to the lower 160 bits, in case the upper bits somehow aren't clean.
            uint256 toMasked = uint256(uint160(to)) & _BITMASK_ADDRESS;

            if (toMasked == 0) _revert(MintToZeroAddress.selector);

            uint256 end = startTokenId + quantity;
            uint256 tokenId = startTokenId;

            do {
                assembly {
                    // Emit the `Transfer` event.
                    log4(
                        0, // Start of data (0, since no data).
                        0, // End of data (0, since no data).
                        _TRANSFER_EVENT_SIGNATURE, // Signature.
                        0, // `address(0)`.
                        toMasked, // `to`.
                        tokenId // `tokenId`.
                    )
                }
                // The `!=` check ensures that large values of `quantity`
                // that overflows uint256 will make the loop run out of gas.
            } while (++tokenId != end);

            ERC721AStorage.layout()._currentIndex = end;
        }
        _afterTokenTransfers(address(0), to, startTokenId, quantity);
    }

    /**
     * @dev Mints `quantity` tokens and transfers them to `to`.
     *
     * This function is intended for efficient minting only during contract creation.
     *
     * It emits only one {ConsecutiveTransfer} as defined in
     * [ERC2309](https://eips.ethereum.org/EIPS/eip-2309),
     * instead of a sequence of {Transfer} event(s).
     *
     * Calling this function outside of contract creation WILL make your contract
     * non-compliant with the ERC721 standard.
     * For full ERC721 compliance, substituting ERC721 {Transfer} event(s) with the ERC2309
     * {ConsecutiveTransfer} event is only permissible during contract creation.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - `quantity` must be greater than 0.
     *
     * Emits a {ConsecutiveTransfer} event.
     */
    function _mintERC2309(address to, uint256 quantity) internal virtual {
        uint256 startTokenId = ERC721AStorage.layout()._currentIndex;
        if (to == address(0)) _revert(MintToZeroAddress.selector);
        if (quantity == 0) _revert(MintZeroQuantity.selector);
        if (quantity > _MAX_MINT_ERC2309_QUANTITY_LIMIT) _revert(MintERC2309QuantityExceedsLimit.selector);

        _beforeTokenTransfers(address(0), to, startTokenId, quantity);

        // Overflows are unrealistic due to the above check for `quantity` to be below the limit.
        unchecked {
            // Updates:
            // - `balance += quantity`.
            // - `numberMinted += quantity`.
            //
            // We can directly add to the `balance` and `numberMinted`.
            ERC721AStorage.layout()._packedAddressData[to] += quantity * ((1 << _BITPOS_NUMBER_MINTED) | 1);

            // Updates:
            // - `address` to the owner.
            // - `startTimestamp` to the timestamp of minting.
            // - `burned` to `false`.
            // - `nextInitialized` to `quantity == 1`.
            ERC721AStorage.layout()._packedOwnerships[startTokenId] = _packOwnershipData(
                to,
                _nextInitializedFlag(quantity) | _nextExtraData(address(0), to, 0)
            );

            emit ConsecutiveTransfer(startTokenId, startTokenId + quantity - 1, address(0), to);

            ERC721AStorage.layout()._currentIndex = startTokenId + quantity;
        }
        _afterTokenTransfers(address(0), to, startTokenId, quantity);
    }

    /**
     * @dev Safely mints `quantity` tokens and transfers them to `to`.
     *
     * Requirements:
     *
     * - If `to` refers to a smart contract, it must implement
     * {IERC721Receiver-onERC721Received}, which is called for each safe transfer.
     * - `quantity` must be greater than 0.
     *
     * See {_mint}.
     *
     * Emits a {Transfer} event for each mint.
     */
    function _safeMint(
        address to,
        uint256 quantity,
        bytes memory _data
    ) internal virtual {
        _mint(to, quantity);

        unchecked {
            if (to.code.length != 0) {
                uint256 end = ERC721AStorage.layout()._currentIndex;
                uint256 index = end - quantity;
                do {
                    if (!_checkContractOnERC721Received(address(0), to, index++, _data)) {
                        _revert(TransferToNonERC721ReceiverImplementer.selector);
                    }
                } while (index < end);
                // Reentrancy protection.
                if (ERC721AStorage.layout()._currentIndex != end) _revert(bytes4(0));
            }
        }
    }

    /**
     * @dev Equivalent to `_safeMint(to, quantity, '')`.
     */
    function _safeMint(address to, uint256 quantity) internal virtual {
        _safeMint(to, quantity, '');
    }

    // =============================================================
    //                       APPROVAL OPERATIONS
    // =============================================================

    /**
     * @dev Equivalent to `_approve(to, tokenId, false)`.
     */
    function _approve(address to, uint256 tokenId) internal virtual {
        _approve(to, tokenId, false);
    }

    /**
     * @dev Gives permission to `to` to transfer `tokenId` token to another account.
     * The approval is cleared when the token is transferred.
     *
     * Only a single account can be approved at a time, so approving the
     * zero address clears previous approvals.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     *
     * Emits an {Approval} event.
     */
    function _approve(
        address to,
        uint256 tokenId,
        bool approvalCheck
    ) internal virtual {
        address owner = ownerOf(tokenId);

        if (approvalCheck && _msgSenderERC721A() != owner)
            if (!isApprovedForAll(owner, _msgSenderERC721A())) {
                _revert(ApprovalCallerNotOwnerNorApproved.selector);
            }

        ERC721AStorage.layout()._tokenApprovals[tokenId].value = to;
        emit Approval(owner, to, tokenId);
    }

    // =============================================================
    //                        BURN OPERATIONS
    // =============================================================

    /**
     * @dev Equivalent to `_burn(tokenId, false)`.
     */
    function _burn(uint256 tokenId) internal virtual {
        _burn(tokenId, false);
    }

    /**
     * @dev Destroys `tokenId`.
     * The approval is cleared when the token is burned.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     *
     * Emits a {Transfer} event.
     */
    function _burn(uint256 tokenId, bool approvalCheck) internal virtual {
        uint256 prevOwnershipPacked = _packedOwnershipOf(tokenId);

        address from = address(uint160(prevOwnershipPacked));

        (uint256 approvedAddressSlot, address approvedAddress) = _getApprovedSlotAndAddress(tokenId);

        if (approvalCheck) {
            // The nested ifs save around 20+ gas over a compound boolean condition.
            if (!_isSenderApprovedOrOwner(approvedAddress, from, _msgSenderERC721A()))
                if (!isApprovedForAll(from, _msgSenderERC721A())) _revert(TransferCallerNotOwnerNorApproved.selector);
        }

        _beforeTokenTransfers(from, address(0), tokenId, 1);

        // Clear approvals from the previous owner.
        assembly {
            if approvedAddress {
                // This is equivalent to `delete _tokenApprovals[tokenId]`.
                sstore(approvedAddressSlot, 0)
            }
        }

        // Underflow of the sender's balance is impossible because we check for
        // ownership above and the recipient's balance can't realistically overflow.
        // Counter overflow is incredibly unrealistic as `tokenId` would have to be 2**256.
        unchecked {
            // Updates:
            // - `balance -= 1`.
            // - `numberBurned += 1`.
            //
            // We can directly decrement the balance, and increment the number burned.
            // This is equivalent to `packed -= 1; packed += 1 << _BITPOS_NUMBER_BURNED;`.
            ERC721AStorage.layout()._packedAddressData[from] += (1 << _BITPOS_NUMBER_BURNED) - 1;

            // Updates:
            // - `address` to the last owner.
            // - `startTimestamp` to the timestamp of burning.
            // - `burned` to `true`.
            // - `nextInitialized` to `true`.
            ERC721AStorage.layout()._packedOwnerships[tokenId] = _packOwnershipData(
                from,
                (_BITMASK_BURNED | _BITMASK_NEXT_INITIALIZED) | _nextExtraData(from, address(0), prevOwnershipPacked)
            );

            // If the next slot may not have been initialized (i.e. `nextInitialized == false`) .
            if (prevOwnershipPacked & _BITMASK_NEXT_INITIALIZED == 0) {
                uint256 nextTokenId = tokenId + 1;
                // If the next slot's address is zero and not burned (i.e. packed value is zero).
                if (ERC721AStorage.layout()._packedOwnerships[nextTokenId] == 0) {
                    // If the next slot is within bounds.
                    if (nextTokenId != ERC721AStorage.layout()._currentIndex) {
                        // Initialize the next slot to maintain correctness for `ownerOf(tokenId + 1)`.
                        ERC721AStorage.layout()._packedOwnerships[nextTokenId] = prevOwnershipPacked;
                    }
                }
            }
        }

        emit Transfer(from, address(0), tokenId);
        _afterTokenTransfers(from, address(0), tokenId, 1);

        // Overflow not possible, as _burnCounter cannot be exceed _currentIndex times.
        unchecked {
            ERC721AStorage.layout()._burnCounter++;
        }
    }

    // =============================================================
    //                     EXTRA DATA OPERATIONS
    // =============================================================

    /**
     * @dev Directly sets the extra data for the ownership data `index`.
     */
    function _setExtraDataAt(uint256 index, uint24 extraData) internal virtual {
        uint256 packed = ERC721AStorage.layout()._packedOwnerships[index];
        if (packed == 0) _revert(OwnershipNotInitializedForExtraData.selector);
        uint256 extraDataCasted;
        // Cast `extraData` with assembly to avoid redundant masking.
        assembly {
            extraDataCasted := extraData
        }
        packed = (packed & _BITMASK_EXTRA_DATA_COMPLEMENT) | (extraDataCasted << _BITPOS_EXTRA_DATA);
        ERC721AStorage.layout()._packedOwnerships[index] = packed;
    }

    /**
     * @dev Called during each token transfer to set the 24bit `extraData` field.
     * Intended to be overridden by the cosumer contract.
     *
     * `previousExtraData` - the value of `extraData` before transfer.
     *
     * Calling conditions:
     *
     * - When `from` and `to` are both non-zero, `from`'s `tokenId` will be
     * transferred to `to`.
     * - When `from` is zero, `tokenId` will be minted for `to`.
     * - When `to` is zero, `tokenId` will be burned by `from`.
     * - `from` and `to` are never both zero.
     */
    function _extraData(
        address from,
        address to,
        uint24 previousExtraData
    ) internal view virtual returns (uint24) {}

    /**
     * @dev Returns the next extra data for the packed ownership data.
     * The returned result is shifted into position.
     */
    function _nextExtraData(
        address from,
        address to,
        uint256 prevOwnershipPacked
    ) private view returns (uint256) {
        uint24 extraData = uint24(prevOwnershipPacked >> _BITPOS_EXTRA_DATA);
        return uint256(_extraData(from, to, extraData)) << _BITPOS_EXTRA_DATA;
    }

    // =============================================================
    //                       OTHER OPERATIONS
    // =============================================================

    /**
     * @dev Returns the message sender (defaults to `msg.sender`).
     *
     * If you are writing GSN compatible contracts, you need to override this function.
     */
    function _msgSenderERC721A() internal view virtual returns (address) {
        return msg.sender;
    }

    /**
     * @dev Converts a uint256 to its ASCII string decimal representation.
     */
    function _toString(uint256 value) internal pure virtual returns (string memory str) {
        assembly {
            // The maximum value of a uint256 contains 78 digits (1 byte per digit), but
            // we allocate 0xa0 bytes to keep the free memory pointer 32-byte word aligned.
            // We will need 1 word for the trailing zeros padding, 1 word for the length,
            // and 3 words for a maximum of 78 digits. Total: 5 * 0x20 = 0xa0.
            let m := add(mload(0x40), 0xa0)
            // Update the free memory pointer to allocate.
            mstore(0x40, m)
            // Assign the `str` to the end.
            str := sub(m, 0x20)
            // Zeroize the slot after the string.
            mstore(str, 0)

            // Cache the end of the memory to calculate the length later.
            let end := str

            // We write the string from rightmost digit to leftmost digit.
            // The following is essentially a do-while loop that also handles the zero case.
            // prettier-ignore
            for { let temp := value } 1 {} {
                str := sub(str, 1)
                // Write the character to the pointer.
                // The ASCII index of the '0' character is 48.
                mstore8(str, add(48, mod(temp, 10)))
                // Keep dividing `temp` until zero.
                temp := div(temp, 10)
                // prettier-ignore
                if iszero(temp) { break }
            }

            let length := sub(end, str)
            // Move the pointer 32 bytes leftwards to make room for the length.
            str := sub(str, 0x20)
            // Store the length.
            mstore(str, length)
        }
    }

    /**
     * @dev For more efficient reverts.
     */
    function _revert(bytes4 errorSelector) internal pure {
        assembly {
            mstore(0x00, errorSelector)
            revert(0x00, 0x04)
        }
    }
}

/**
 * @title ERC721AQueryable.
 *
 * @dev ERC721A subclass with convenience query functions.
 */
abstract contract ERC721AQueryableUpgradeable is
    ERC721A__Initializable,
    ERC721AUpgradeable,
    IERC721AQueryableUpgradeable
{
    function __ERC721AQueryable_init() internal onlyInitializingERC721A {
        __ERC721AQueryable_init_unchained();
    }

    function __ERC721AQueryable_init_unchained() internal onlyInitializingERC721A {}

    /**
     * @dev Returns the `TokenOwnership` struct at `tokenId` without reverting.
     *
     * If the `tokenId` is out of bounds:
     *
     * - `addr = address(0)`
     * - `startTimestamp = 0`
     * - `burned = false`
     * - `extraData = 0`
     *
     * If the `tokenId` is burned:
     *
     * - `addr = <Address of owner before token was burned>`
     * - `startTimestamp = <Timestamp when token was burned>`
     * - `burned = true`
     * - `extraData = <Extra data when token was burned>`
     *
     * Otherwise:
     *
     * - `addr = <Address of owner>`
     * - `startTimestamp = <Timestamp of start of ownership>`
     * - `burned = false`
     * - `extraData = <Extra data at start of ownership>`
     */
    function explicitOwnershipOf(uint256 tokenId)
        public
        view
        virtual
        override
        returns (TokenOwnership memory ownership)
    {
        unchecked {
            if (tokenId >= _startTokenId()) {
                if (tokenId < _nextTokenId()) {
                    // If the `tokenId` is within bounds,
                    // scan backwards for the initialized ownership slot.
                    while (!_ownershipIsInitialized(tokenId)) --tokenId;
                    return _ownershipAt(tokenId);
                }
            }
        }
    }

    /**
     * @dev Returns an array of `TokenOwnership` structs at `tokenIds` in order.
     * See {ERC721AQueryable-explicitOwnershipOf}
     */
    function explicitOwnershipsOf(uint256[] calldata tokenIds)
        external
        view
        virtual
        override
        returns (TokenOwnership[] memory)
    {
        TokenOwnership[] memory ownerships;
        uint256 i = tokenIds.length;
        assembly {
            // Grab the free memory pointer.
            ownerships := mload(0x40)
            // Store the length.
            mstore(ownerships, i)
            // Allocate one word for the length,
            // `tokenIds.length` words for the pointers.
            i := shl(5, i) // Multiply `i` by 32.
            mstore(0x40, add(add(ownerships, 0x20), i))
        }
        while (i != 0) {
            uint256 tokenId;
            assembly {
                i := sub(i, 0x20)
                tokenId := calldataload(add(tokenIds.offset, i))
            }
            TokenOwnership memory ownership = explicitOwnershipOf(tokenId);
            assembly {
                // Store the pointer of `ownership` in the `ownerships` array.
                mstore(add(add(ownerships, 0x20), i), ownership)
            }
        }
        return ownerships;
    }

    /**
     * @dev Returns an array of token IDs owned by `owner`,
     * in the range [`start`, `stop`)
     * (i.e. `start <= tokenId < stop`).
     *
     * This function allows for tokens to be queried if the collection
     * grows too big for a single call of {ERC721AQueryable-tokensOfOwner}.
     *
     * Requirements:
     *
     * - `start < stop`
     */
    function tokensOfOwnerIn(
        address owner,
        uint256 start,
        uint256 stop
    ) external view virtual override returns (uint256[] memory) {
        return _tokensOfOwnerIn(owner, start, stop);
    }

    /**
     * @dev Returns an array of token IDs owned by `owner`.
     *
     * This function scans the ownership mapping and is O(`totalSupply`) in complexity.
     * It is meant to be called off-chain.
     *
     * See {ERC721AQueryable-tokensOfOwnerIn} for splitting the scan into
     * multiple smaller scans if the collection is large enough to cause
     * an out-of-gas error (10K collections should be fine).
     */
    function tokensOfOwner(address owner) external view virtual override returns (uint256[] memory) {
        uint256 start = _startTokenId();
        uint256 stop = _nextTokenId();
        uint256[] memory tokenIds;
        if (start != stop) tokenIds = _tokensOfOwnerIn(owner, start, stop);
        return tokenIds;
    }

    /**
     * @dev Helper function for returning an array of token IDs owned by `owner`.
     *
     * Note that this function is optimized for smaller bytecode size over runtime gas,
     * since it is meant to be called off-chain.
     */
    function _tokensOfOwnerIn(
        address owner,
        uint256 start,
        uint256 stop
    ) private view returns (uint256[] memory) {
        unchecked {
            if (start >= stop) _revert(InvalidQueryRange.selector);
            // Set `start = max(start, _startTokenId())`.
            if (start < _startTokenId()) {
                start = _startTokenId();
            }
            uint256 stopLimit = _nextTokenId();
            // Set `stop = min(stop, stopLimit)`.
            if (stop >= stopLimit) {
                stop = stopLimit;
            }
            uint256[] memory tokenIds;
            uint256 tokenIdsMaxLength = balanceOf(owner);
            bool startLtStop = start < stop;
            assembly {
                // Set `tokenIdsMaxLength` to zero if `start` is less than `stop`.
                tokenIdsMaxLength := mul(tokenIdsMaxLength, startLtStop)
            }
            if (tokenIdsMaxLength != 0) {
                // Set `tokenIdsMaxLength = min(balanceOf(owner), stop - start)`,
                // to cater for cases where `balanceOf(owner)` is too big.
                if (stop - start <= tokenIdsMaxLength) {
                    tokenIdsMaxLength = stop - start;
                }
                assembly {
                    // Grab the free memory pointer.
                    tokenIds := mload(0x40)
                    // Allocate one word for the length, and `tokenIdsMaxLength` words
                    // for the data. `shl(5, x)` is equivalent to `mul(32, x)`.
                    mstore(0x40, add(tokenIds, shl(5, add(tokenIdsMaxLength, 1))))
                }
                // We need to call `explicitOwnershipOf(start)`,
                // because the slot at `start` may not be initialized.
                TokenOwnership memory ownership = explicitOwnershipOf(start);
                address currOwnershipAddr;
                // If the starting slot exists (i.e. not burned),
                // initialize `currOwnershipAddr`.
                // `ownership.address` will not be zero,
                // as `start` is clamped to the valid token ID range.
                if (!ownership.burned) {
                    currOwnershipAddr = ownership.addr;
                }
                uint256 tokenIdsIdx;
                // Use a do-while, which is slightly more efficient for this case,
                // as the array will at least contain one element.
                do {
                    ownership = _ownershipAt(start);
                    assembly {
                        switch mload(add(ownership, 0x40))
                        // if `ownership.burned == false`.
                        case 0 {
                            // if `ownership.addr != address(0)`.
                            // The `addr` already has it's upper 96 bits clearned,
                            // since it is written to memory with regular Solidity.
                            if mload(ownership) {
                                currOwnershipAddr := mload(ownership)
                            }
                            // if `currOwnershipAddr == owner`.
                            // The `shl(96, x)` is to make the comparison agnostic to any
                            // dirty upper 96 bits in `owner`.
                            if iszero(shl(96, xor(currOwnershipAddr, owner))) {
                                tokenIdsIdx := add(tokenIdsIdx, 1)
                                mstore(add(tokenIds, shl(5, tokenIdsIdx)), start)
                            }
                        }
                        // Otherwise, reset `currOwnershipAddr`.
                        // This handles the case of batch burned tokens
                        // (burned bit of first slot set, remaining slots left uninitialized).
                        default {
                            currOwnershipAddr := 0
                        }
                        start := add(start, 1)
                    }
                } while (!(start == stop || tokenIdsIdx == tokenIdsMaxLength));
                // Store the length of the array.
                assembly {
                    mstore(tokenIds, tokenIdsIdx)
                }
            }
            return tokenIds;
        }
    }
}

// OpenZeppelin Contracts (last updated v4.7.0) (access/Ownable.sol)

// OpenZeppelin Contracts v4.4.1 (utils/Context.sol)

// OpenZeppelin Contracts (last updated v4.8.0) (proxy/utils/Initializable.sol)

// OpenZeppelin Contracts (last updated v4.8.0) (utils/Address.sol)

/**
 * @dev Collection of functions related to the address type
 */
library AddressUpgradeable {
    /**
     * @dev Returns true if `account` is a contract.
     *
     * [IMPORTANT]
     * ====
     * It is unsafe to assume that an address for which this function returns
     * false is an externally-owned account (EOA) and not a contract.
     *
     * Among others, `isContract` will return false for the following
     * types of addresses:
     *
     *  - an externally-owned account
     *  - a contract in construction
     *  - an address where a contract will be created
     *  - an address where a contract lived, but was destroyed
     *
     * Furthermore, `isContract` will also return true if the target contract within
     * the same transaction is already scheduled for destruction by `SELFDESTRUCT`,
     * which only has an effect at the end of a transaction.
     * ====
     *
     * [IMPORTANT]
     * ====
     * You shouldn't rely on `isContract` to protect against flash loan attacks!
     *
     * Preventing calls from contracts is highly discouraged. It breaks composability, breaks support for smart wallets
     * like Gnosis Safe, and does not provide security since it can be circumvented by calling from a contract
     * constructor.
     * ====
     */
    function isContract(address account) internal view returns (bool) {
        // This method relies on extcodesize/address.code.length, which returns 0
        // for contracts in construction, since the code is only stored at the end
        // of the constructor execution.

        return account.code.length > 0;
    }

    /**
     * @dev Replacement for Solidity's `transfer`: sends `amount` wei to
     * `recipient`, forwarding all available gas and reverting on errors.
     *
     * https://eips.ethereum.org/EIPS/eip-1884[EIP1884] increases the gas cost
     * of certain opcodes, possibly making contracts go over the 2300 gas limit
     * imposed by `transfer`, making them unable to receive funds via
     * `transfer`. {sendValue} removes this limitation.
     *
     * https://consensys.net/diligence/blog/2019/09/stop-using-soliditys-transfer-now/[Learn more].
     *
     * IMPORTANT: because control is transferred to `recipient`, care must be
     * taken to not create reentrancy vulnerabilities. Consider using
     * {ReentrancyGuard} or the
     * https://solidity.readthedocs.io/en/v0.5.11/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
     */
    function sendValue(address payable recipient, uint256 amount) internal {
        require(address(this).balance >= amount, "Address: insufficient balance");

        (bool success, ) = recipient.call{value: amount}("");
        require(success, "Address: unable to send value, recipient may have reverted");
    }

    /**
     * @dev Performs a Solidity function call using a low level `call`. A
     * plain `call` is an unsafe replacement for a function call: use this
     * function instead.
     *
     * If `target` reverts with a revert reason, it is bubbled up by this
     * function (like regular Solidity function calls).
     *
     * Returns the raw returned data. To convert to the expected return value,
     * use https://solidity.readthedocs.io/en/latest/units-and-global-variables.html?highlight=abi.decode#abi-encoding-and-decoding-functions[`abi.decode`].
     *
     * Requirements:
     *
     * - `target` must be a contract.
     * - calling `target` with `data` must not revert.
     *
     * _Available since v3.1._
     */
    function functionCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0, "Address: low-level call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`], but with
     * `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but also transferring `value` wei to `target`.
     *
     * Requirements:
     *
     * - the calling contract must have an ETH balance of at least `value`.
     * - the called Solidity function must be `payable`.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(address target, bytes memory data, uint256 value) internal returns (bytes memory) {
        return functionCallWithValue(target, data, value, "Address: low-level call with value failed");
    }

    /**
     * @dev Same as {xref-Address-functionCallWithValue-address-bytes-uint256-}[`functionCallWithValue`], but
     * with `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(
        address target,
        bytes memory data,
        uint256 value,
        string memory errorMessage
    ) internal returns (bytes memory) {
        require(address(this).balance >= value, "Address: insufficient balance for call");
        (bool success, bytes memory returndata) = target.call{value: value}(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(address target, bytes memory data) internal view returns (bytes memory) {
        return functionStaticCall(target, data, "Address: low-level static call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal view returns (bytes memory) {
        (bool success, bytes memory returndata) = target.staticcall(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
    }

    /**
     * @dev Tool to verify that a low level call to smart-contract was successful, and revert (either by bubbling
     * the revert reason or using the provided one) in case of unsuccessful call or if target was not a contract.
     *
     * _Available since v4.8._
     */
    function verifyCallResultFromTarget(
        address target,
        bool success,
        bytes memory returndata,
        string memory errorMessage
    ) internal view returns (bytes memory) {
        if (success) {
            if (returndata.length == 0) {
                // only check isContract if the call was successful and the return data is empty
                // otherwise we already know that it was a contract
                require(isContract(target), "Address: call to non-contract");
            }
            return returndata;
        } else {
            _revert(returndata, errorMessage);
        }
    }

    /**
     * @dev Tool to verify that a low level call was successful, and revert if it wasn't, either by bubbling the
     * revert reason or using the provided one.
     *
     * _Available since v4.3._
     */
    function verifyCallResult(
        bool success,
        bytes memory returndata,
        string memory errorMessage
    ) internal pure returns (bytes memory) {
        if (success) {
            return returndata;
        } else {
            _revert(returndata, errorMessage);
        }
    }

    function _revert(bytes memory returndata, string memory errorMessage) private pure {
        // Look for revert reason and bubble it up if present
        if (returndata.length > 0) {
            // The easiest way to bubble the revert reason is using memory via assembly
            /// @solidity memory-safe-assembly
            assembly {
                let returndata_size := mload(returndata)
                revert(add(32, returndata), returndata_size)
            }
        } else {
            revert(errorMessage);
        }
    }
}

/**
 * @dev This is a base contract to aid in writing upgradeable contracts, or any kind of contract that will be deployed
 * behind a proxy. Since proxied contracts do not make use of a constructor, it's common to move constructor logic to an
 * external initializer function, usually called `initialize`. It then becomes necessary to protect this initializer
 * function so it can only be called once. The {initializer} modifier provided by this contract will have this effect.
 *
 * The initialization functions use a version number. Once a version number is used, it is consumed and cannot be
 * reused. This mechanism prevents re-execution of each "step" but allows the creation of new initialization steps in
 * case an upgrade adds a module that needs to be initialized.
 *
 * For example:
 *
 * [.hljs-theme-light.nopadding]
 * ```solidity
 * contract MyToken is ERC20Upgradeable {
 *     function initialize() initializer public {
 *         __ERC20_init("MyToken", "MTK");
 *     }
 * }
 *
 * contract MyTokenV2 is MyToken, ERC20PermitUpgradeable {
 *     function initializeV2() reinitializer(2) public {
 *         __ERC20Permit_init("MyToken");
 *     }
 * }
 * ```
 *
 * TIP: To avoid leaving the proxy in an uninitialized state, the initializer function should be called as early as
 * possible by providing the encoded function call as the `_data` argument to {ERC1967Proxy-constructor}.
 *
 * CAUTION: When used with inheritance, manual care must be taken to not invoke a parent initializer twice, or to ensure
 * that all initializers are idempotent. This is not verified automatically as constructors are by Solidity.
 *
 * [CAUTION]
 * ====
 * Avoid leaving a contract uninitialized.
 *
 * An uninitialized contract can be taken over by an attacker. This applies to both a proxy and its implementation
 * contract, which may impact the proxy. To prevent the implementation contract from being used, you should invoke
 * the {_disableInitializers} function in the constructor to automatically lock it when it is deployed:
 *
 * [.hljs-theme-light.nopadding]
 * ```
 * /// @custom:oz-upgrades-unsafe-allow constructor
 * constructor() {
 *     _disableInitializers();
 * }
 * ```
 * ====
 */
abstract contract Initializable {
    /**
     * @dev Indicates that the contract has been initialized.
     * @custom:oz-retyped-from bool
     */
    uint8 private _initialized;

    /**
     * @dev Indicates that the contract is in the process of being initialized.
     */
    bool private _initializing;

    /**
     * @dev Triggered when the contract has been initialized or reinitialized.
     */
    event Initialized(uint8 version);

    /**
     * @dev A modifier that defines a protected initializer function that can be invoked at most once. In its scope,
     * `onlyInitializing` functions can be used to initialize parent contracts.
     *
     * Similar to `reinitializer(1)`, except that functions marked with `initializer` can be nested in the context of a
     * constructor.
     *
     * Emits an {Initialized} event.
     */
    modifier initializer() {
        bool isTopLevelCall = !_initializing;
        require(
            (isTopLevelCall && _initialized < 1) || (!AddressUpgradeable.isContract(address(this)) && _initialized == 1),
            "Initializable: contract is already initialized"
        );
        _initialized = 1;
        if (isTopLevelCall) {
            _initializing = true;
        }
        _;
        if (isTopLevelCall) {
            _initializing = false;
            emit Initialized(1);
        }
    }

    /**
     * @dev A modifier that defines a protected reinitializer function that can be invoked at most once, and only if the
     * contract hasn't been initialized to a greater version before. In its scope, `onlyInitializing` functions can be
     * used to initialize parent contracts.
     *
     * A reinitializer may be used after the original initialization step. This is essential to configure modules that
     * are added through upgrades and that require initialization.
     *
     * When `version` is 1, this modifier is similar to `initializer`, except that functions marked with `reinitializer`
     * cannot be nested. If one is invoked in the context of another, execution will revert.
     *
     * Note that versions can jump in increments greater than 1; this implies that if multiple reinitializers coexist in
     * a contract, executing them in the right order is up to the developer or operator.
     *
     * WARNING: setting the version to 255 will prevent any future reinitialization.
     *
     * Emits an {Initialized} event.
     */
    modifier reinitializer(uint8 version) {
        require(!_initializing && _initialized < version, "Initializable: contract is already initialized");
        _initialized = version;
        _initializing = true;
        _;
        _initializing = false;
        emit Initialized(version);
    }

    /**
     * @dev Modifier to protect an initialization function so that it can only be invoked by functions with the
     * {initializer} and {reinitializer} modifiers, directly or indirectly.
     */
    modifier onlyInitializing() {
        require(_initializing, "Initializable: contract is not initializing");
        _;
    }

    /**
     * @dev Locks the contract, preventing any future reinitialization. This cannot be part of an initializer call.
     * Calling this in the constructor of a contract will prevent that contract from being initialized or reinitialized
     * to any version. It is recommended to use this to lock implementation contracts that are designed to be called
     * through proxies.
     *
     * Emits an {Initialized} event the first time it is successfully executed.
     */
    function _disableInitializers() internal virtual {
        require(!_initializing, "Initializable: contract is initializing");
        if (_initialized != type(uint8).max) {
            _initialized = type(uint8).max;
            emit Initialized(type(uint8).max);
        }
    }

    /**
     * @dev Returns the highest version that has been initialized. See {reinitializer}.
     */
    function _getInitializedVersion() internal view returns (uint8) {
        return _initialized;
    }

    /**
     * @dev Returns `true` if the contract is currently initializing. See {onlyInitializing}.
     */
    function _isInitializing() internal view returns (bool) {
        return _initializing;
    }
}

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract ContextUpgradeable is Initializable {
    function __Context_init() internal onlyInitializing {
    }

    function __Context_init_unchained() internal onlyInitializing {
    }
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[50] private __gap;
}

/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * By default, the owner account will be the one that deploys the contract. This
 * can later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract OwnableUpgradeable is Initializable, ContextUpgradeable {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    function __Ownable_init() internal onlyInitializing {
        __Ownable_init_unchained();
    }

    function __Ownable_init_unchained() internal onlyInitializing {
        _transferOwnership(_msgSender());
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        _checkOwner();
        _;
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if the sender is not the owner.
     */
    function _checkOwner() internal view virtual {
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions anymore. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby removing any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        _transferOwnership(address(0));
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[49] private __gap;
}

// OpenZeppelin Contracts (last updated v4.8.0) (access/AccessControl.sol)

// OpenZeppelin Contracts v4.4.1 (access/IAccessControl.sol)

/**
 * @dev External interface of AccessControl declared to support ERC165 detection.
 */
interface IAccessControlUpgradeable {
    /**
     * @dev Emitted when `newAdminRole` is set as ``role``'s admin role, replacing `previousAdminRole`
     *
     * `DEFAULT_ADMIN_ROLE` is the starting admin for all roles, despite
     * {RoleAdminChanged} not being emitted signaling this.
     *
     * _Available since v3.1._
     */
    event RoleAdminChanged(bytes32 indexed role, bytes32 indexed previousAdminRole, bytes32 indexed newAdminRole);

    /**
     * @dev Emitted when `account` is granted `role`.
     *
     * `sender` is the account that originated the contract call, an admin role
     * bearer except when using {AccessControl-_setupRole}.
     */
    event RoleGranted(bytes32 indexed role, address indexed account, address indexed sender);

    /**
     * @dev Emitted when `account` is revoked `role`.
     *
     * `sender` is the account that originated the contract call:
     *   - if using `revokeRole`, it is the admin role bearer
     *   - if using `renounceRole`, it is the role bearer (i.e. `account`)
     */
    event RoleRevoked(bytes32 indexed role, address indexed account, address indexed sender);

    /**
     * @dev Returns `true` if `account` has been granted `role`.
     */
    function hasRole(bytes32 role, address account) external view returns (bool);

    /**
     * @dev Returns the admin role that controls `role`. See {grantRole} and
     * {revokeRole}.
     *
     * To change a role's admin, use {AccessControl-_setRoleAdmin}.
     */
    function getRoleAdmin(bytes32 role) external view returns (bytes32);

    /**
     * @dev Grants `role` to `account`.
     *
     * If `account` had not been already granted `role`, emits a {RoleGranted}
     * event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     */
    function grantRole(bytes32 role, address account) external;

    /**
     * @dev Revokes `role` from `account`.
     *
     * If `account` had been granted `role`, emits a {RoleRevoked} event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     */
    function revokeRole(bytes32 role, address account) external;

    /**
     * @dev Revokes `role` from the calling account.
     *
     * Roles are often managed via {grantRole} and {revokeRole}: this function's
     * purpose is to provide a mechanism for accounts to lose their privileges
     * if they are compromised (such as when a trusted device is misplaced).
     *
     * If the calling account had been granted `role`, emits a {RoleRevoked}
     * event.
     *
     * Requirements:
     *
     * - the caller must be `account`.
     */
    function renounceRole(bytes32 role, address account) external;
}

// OpenZeppelin Contracts (last updated v4.8.0) (utils/Strings.sol)

// OpenZeppelin Contracts (last updated v4.8.0) (utils/math/Math.sol)

/**
 * @dev Standard math utilities missing in the Solidity language.
 */
library MathUpgradeable {
    enum Rounding {
        Down, // Toward negative infinity
        Up, // Toward infinity
        Zero // Toward zero
    }

    /**
     * @dev Returns the largest of two numbers.
     */
    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a > b ? a : b;
    }

    /**
     * @dev Returns the smallest of two numbers.
     */
    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? a : b;
    }

    /**
     * @dev Returns the average of two numbers. The result is rounded towards
     * zero.
     */
    function average(uint256 a, uint256 b) internal pure returns (uint256) {
        // (a + b) / 2 can overflow.
        return (a & b) + (a ^ b) / 2;
    }

    /**
     * @dev Returns the ceiling of the division of two numbers.
     *
     * This differs from standard division with `/` in that it rounds up instead
     * of rounding down.
     */
    function ceilDiv(uint256 a, uint256 b) internal pure returns (uint256) {
        // (a + b - 1) / b can overflow on addition, so we distribute.
        return a == 0 ? 0 : (a - 1) / b + 1;
    }

    /**
     * @notice Calculates floor(x * y / denominator) with full precision. Throws if result overflows a uint256 or denominator == 0
     * @dev Original credit to Remco Bloemen under MIT license (https://xn--2-umb.com/21/muldiv)
     * with further edits by Uniswap Labs also under MIT license.
     */
    function mulDiv(uint256 x, uint256 y, uint256 denominator) internal pure returns (uint256 result) {
        unchecked {
            // 512-bit multiply [prod1 prod0] = x * y. Compute the product mod 2^256 and mod 2^256 - 1, then use
            // use the Chinese Remainder Theorem to reconstruct the 512 bit result. The result is stored in two 256
            // variables such that product = prod1 * 2^256 + prod0.
            uint256 prod0; // Least significant 256 bits of the product
            uint256 prod1; // Most significant 256 bits of the product
            assembly {
                let mm := mulmod(x, y, not(0))
                prod0 := mul(x, y)
                prod1 := sub(sub(mm, prod0), lt(mm, prod0))
            }

            // Handle non-overflow cases, 256 by 256 division.
            if (prod1 == 0) {
                return prod0 / denominator;
            }

            // Make sure the result is less than 2^256. Also prevents denominator == 0.
            require(denominator > prod1, "Math: mulDiv overflow");

            ///////////////////////////////////////////////
            // 512 by 256 division.
            ///////////////////////////////////////////////

            // Make division exact by subtracting the remainder from [prod1 prod0].
            uint256 remainder;
            assembly {
                // Compute remainder using mulmod.
                remainder := mulmod(x, y, denominator)

                // Subtract 256 bit number from 512 bit number.
                prod1 := sub(prod1, gt(remainder, prod0))
                prod0 := sub(prod0, remainder)
            }

            // Factor powers of two out of denominator and compute largest power of two divisor of denominator. Always >= 1.
            // See https://cs.stackexchange.com/q/138556/92363.

            // Does not overflow because the denominator cannot be zero at this stage in the function.
            uint256 twos = denominator & (~denominator + 1);
            assembly {
                // Divide denominator by twos.
                denominator := div(denominator, twos)

                // Divide [prod1 prod0] by twos.
                prod0 := div(prod0, twos)

                // Flip twos such that it is 2^256 / twos. If twos is zero, then it becomes one.
                twos := add(div(sub(0, twos), twos), 1)
            }

            // Shift in bits from prod1 into prod0.
            prod0 |= prod1 * twos;

            // Invert denominator mod 2^256. Now that denominator is an odd number, it has an inverse modulo 2^256 such
            // that denominator * inv = 1 mod 2^256. Compute the inverse by starting with a seed that is correct for
            // four bits. That is, denominator * inv = 1 mod 2^4.
            uint256 inverse = (3 * denominator) ^ 2;

            // Use the Newton-Raphson iteration to improve the precision. Thanks to Hensel's lifting lemma, this also works
            // in modular arithmetic, doubling the correct bits in each step.
            inverse *= 2 - denominator * inverse; // inverse mod 2^8
            inverse *= 2 - denominator * inverse; // inverse mod 2^16
            inverse *= 2 - denominator * inverse; // inverse mod 2^32
            inverse *= 2 - denominator * inverse; // inverse mod 2^64
            inverse *= 2 - denominator * inverse; // inverse mod 2^128
            inverse *= 2 - denominator * inverse; // inverse mod 2^256

            // Because the division is now exact we can divide by multiplying with the modular inverse of denominator.
            // This will give us the correct result modulo 2^256. Since the preconditions guarantee that the outcome is
            // less than 2^256, this is the final result. We don't need to compute the high bits of the result and prod1
            // is no longer required.
            result = prod0 * inverse;
            return result;
        }
    }

    /**
     * @notice Calculates x * y / denominator with full precision, following the selected rounding direction.
     */
    function mulDiv(uint256 x, uint256 y, uint256 denominator, Rounding rounding) internal pure returns (uint256) {
        uint256 result = mulDiv(x, y, denominator);
        if (rounding == Rounding.Up && mulmod(x, y, denominator) > 0) {
            result += 1;
        }
        return result;
    }

    /**
     * @dev Returns the square root of a number. If the number is not a perfect square, the value is rounded down.
     *
     * Inspired by Henry S. Warren, Jr.'s "Hacker's Delight" (Chapter 11).
     */
    function sqrt(uint256 a) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        }

        // For our first guess, we get the biggest power of 2 which is smaller than the square root of the target.
        //
        // We know that the "msb" (most significant bit) of our target number `a` is a power of 2 such that we have
        // `msb(a) <= a < 2*msb(a)`. This value can be written `msb(a)=2**k` with `k=log2(a)`.
        //
        // This can be rewritten `2**log2(a) <= a < 2**(log2(a) + 1)`
        // → `sqrt(2**k) <= sqrt(a) < sqrt(2**(k+1))`
        // → `2**(k/2) <= sqrt(a) < 2**((k+1)/2) <= 2**(k/2 + 1)`
        //
        // Consequently, `2**(log2(a) / 2)` is a good first approximation of `sqrt(a)` with at least 1 correct bit.
        uint256 result = 1 << (log2(a) >> 1);

        // At this point `result` is an estimation with one bit of precision. We know the true value is a uint128,
        // since it is the square root of a uint256. Newton's method converges quadratically (precision doubles at
        // every iteration). We thus need at most 7 iteration to turn our partial result with one bit of precision
        // into the expected uint128 result.
        unchecked {
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            return min(result, a / result);
        }
    }

    /**
     * @notice Calculates sqrt(a), following the selected rounding direction.
     */
    function sqrt(uint256 a, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = sqrt(a);
            return result + (rounding == Rounding.Up && result * result < a ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 2, rounded down, of a positive value.
     * Returns 0 if given 0.
     */
    function log2(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >> 128 > 0) {
                value >>= 128;
                result += 128;
            }
            if (value >> 64 > 0) {
                value >>= 64;
                result += 64;
            }
            if (value >> 32 > 0) {
                value >>= 32;
                result += 32;
            }
            if (value >> 16 > 0) {
                value >>= 16;
                result += 16;
            }
            if (value >> 8 > 0) {
                value >>= 8;
                result += 8;
            }
            if (value >> 4 > 0) {
                value >>= 4;
                result += 4;
            }
            if (value >> 2 > 0) {
                value >>= 2;
                result += 2;
            }
            if (value >> 1 > 0) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 2, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log2(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log2(value);
            return result + (rounding == Rounding.Up && 1 << result < value ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 10, rounded down, of a positive value.
     * Returns 0 if given 0.
     */
    function log10(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >= 10 ** 64) {
                value /= 10 ** 64;
                result += 64;
            }
            if (value >= 10 ** 32) {
                value /= 10 ** 32;
                result += 32;
            }
            if (value >= 10 ** 16) {
                value /= 10 ** 16;
                result += 16;
            }
            if (value >= 10 ** 8) {
                value /= 10 ** 8;
                result += 8;
            }
            if (value >= 10 ** 4) {
                value /= 10 ** 4;
                result += 4;
            }
            if (value >= 10 ** 2) {
                value /= 10 ** 2;
                result += 2;
            }
            if (value >= 10 ** 1) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 10, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log10(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log10(value);
            return result + (rounding == Rounding.Up && 10 ** result < value ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 256, rounded down, of a positive value.
     * Returns 0 if given 0.
     *
     * Adding one to the result gives the number of pairs of hex symbols needed to represent `value` as a hex string.
     */
    function log256(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >> 128 > 0) {
                value >>= 128;
                result += 16;
            }
            if (value >> 64 > 0) {
                value >>= 64;
                result += 8;
            }
            if (value >> 32 > 0) {
                value >>= 32;
                result += 4;
            }
            if (value >> 16 > 0) {
                value >>= 16;
                result += 2;
            }
            if (value >> 8 > 0) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 256, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log256(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log256(value);
            return result + (rounding == Rounding.Up && 1 << (result << 3) < value ? 1 : 0);
        }
    }
}

// OpenZeppelin Contracts (last updated v4.8.0) (utils/math/SignedMath.sol)

/**
 * @dev Standard signed math utilities missing in the Solidity language.
 */
library SignedMathUpgradeable {
    /**
     * @dev Returns the largest of two signed numbers.
     */
    function max(int256 a, int256 b) internal pure returns (int256) {
        return a > b ? a : b;
    }

    /**
     * @dev Returns the smallest of two signed numbers.
     */
    function min(int256 a, int256 b) internal pure returns (int256) {
        return a < b ? a : b;
    }

    /**
     * @dev Returns the average of two signed numbers without overflow.
     * The result is rounded towards zero.
     */
    function average(int256 a, int256 b) internal pure returns (int256) {
        // Formula from the book "Hacker's Delight"
        int256 x = (a & b) + ((a ^ b) >> 1);
        return x + (int256(uint256(x) >> 255) & (a ^ b));
    }

    /**
     * @dev Returns the absolute unsigned value of a signed value.
     */
    function abs(int256 n) internal pure returns (uint256) {
        unchecked {
            // must be unchecked in order to support `n = type(int256).min`
            return uint256(n >= 0 ? n : -n);
        }
    }
}

/**
 * @dev String operations.
 */
library StringsUpgradeable {
    bytes16 private constant _SYMBOLS = "0123456789abcdef";
    uint8 private constant _ADDRESS_LENGTH = 20;

    /**
     * @dev Converts a `uint256` to its ASCII `string` decimal representation.
     */
    function toString(uint256 value) internal pure returns (string memory) {
        unchecked {
            uint256 length = MathUpgradeable.log10(value) + 1;
            string memory buffer = new string(length);
            uint256 ptr;
            /// @solidity memory-safe-assembly
            assembly {
                ptr := add(buffer, add(32, length))
            }
            while (true) {
                ptr--;
                /// @solidity memory-safe-assembly
                assembly {
                    mstore8(ptr, byte(mod(value, 10), _SYMBOLS))
                }
                value /= 10;
                if (value == 0) break;
            }
            return buffer;
        }
    }

    /**
     * @dev Converts a `int256` to its ASCII `string` decimal representation.
     */
    function toString(int256 value) internal pure returns (string memory) {
        return string(abi.encodePacked(value < 0 ? "-" : "", toString(SignedMathUpgradeable.abs(value))));
    }

    /**
     * @dev Converts a `uint256` to its ASCII `string` hexadecimal representation.
     */
    function toHexString(uint256 value) internal pure returns (string memory) {
        unchecked {
            return toHexString(value, MathUpgradeable.log256(value) + 1);
        }
    }

    /**
     * @dev Converts a `uint256` to its ASCII `string` hexadecimal representation with fixed length.
     */
    function toHexString(uint256 value, uint256 length) internal pure returns (string memory) {
        bytes memory buffer = new bytes(2 * length + 2);
        buffer[0] = "0";
        buffer[1] = "x";
        for (uint256 i = 2 * length + 1; i > 1; --i) {
            buffer[i] = _SYMBOLS[value & 0xf];
            value >>= 4;
        }
        require(value == 0, "Strings: hex length insufficient");
        return string(buffer);
    }

    /**
     * @dev Converts an `address` with fixed length of 20 bytes to its not checksummed ASCII `string` hexadecimal representation.
     */
    function toHexString(address addr) internal pure returns (string memory) {
        return toHexString(uint256(uint160(addr)), _ADDRESS_LENGTH);
    }

    /**
     * @dev Returns true if the two strings are equal.
     */
    function equal(string memory a, string memory b) internal pure returns (bool) {
        return keccak256(bytes(a)) == keccak256(bytes(b));
    }
}

// OpenZeppelin Contracts v4.4.1 (utils/introspection/ERC165.sol)

// OpenZeppelin Contracts v4.4.1 (utils/introspection/IERC165.sol)

/**
 * @dev Interface of the ERC165 standard, as defined in the
 * https://eips.ethereum.org/EIPS/eip-165[EIP].
 *
 * Implementers can declare support of contract interfaces, which can then be
 * queried by others ({ERC165Checker}).
 *
 * For an implementation, see {ERC165}.
 */
interface IERC165Upgradeable {
    /**
     * @dev Returns true if this contract implements the interface defined by
     * `interfaceId`. See the corresponding
     * https://eips.ethereum.org/EIPS/eip-165#how-interfaces-are-identified[EIP section]
     * to learn more about how these ids are created.
     *
     * This function call must use less than 30 000 gas.
     */
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}

/**
 * @dev Implementation of the {IERC165} interface.
 *
 * Contracts that want to implement ERC165 should inherit from this contract and override {supportsInterface} to check
 * for the additional interface id that will be supported. For example:
 *
 * ```solidity
 * function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
 *     return interfaceId == type(MyInterface).interfaceId || super.supportsInterface(interfaceId);
 * }
 * ```
 *
 * Alternatively, {ERC165Storage} provides an easier to use but more expensive implementation.
 */
abstract contract ERC165Upgradeable is Initializable, IERC165Upgradeable {
    function __ERC165_init() internal onlyInitializing {
    }

    function __ERC165_init_unchained() internal onlyInitializing {
    }
    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IERC165Upgradeable).interfaceId;
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[50] private __gap;
}

/**
 * @dev Contract module that allows children to implement role-based access
 * control mechanisms. This is a lightweight version that doesn't allow enumerating role
 * members except through off-chain means by accessing the contract event logs. Some
 * applications may benefit from on-chain enumerability, for those cases see
 * {AccessControlEnumerable}.
 *
 * Roles are referred to by their `bytes32` identifier. These should be exposed
 * in the external API and be unique. The best way to achieve this is by
 * using `public constant` hash digests:
 *
 * ```solidity
 * bytes32 public constant MY_ROLE = keccak256("MY_ROLE");
 * ```
 *
 * Roles can be used to represent a set of permissions. To restrict access to a
 * function call, use {hasRole}:
 *
 * ```solidity
 * function foo() public {
 *     require(hasRole(MY_ROLE, msg.sender));
 *     ...
 * }
 * ```
 *
 * Roles can be granted and revoked dynamically via the {grantRole} and
 * {revokeRole} functions. Each role has an associated admin role, and only
 * accounts that have a role's admin role can call {grantRole} and {revokeRole}.
 *
 * By default, the admin role for all roles is `DEFAULT_ADMIN_ROLE`, which means
 * that only accounts with this role will be able to grant or revoke other
 * roles. More complex role relationships can be created by using
 * {_setRoleAdmin}.
 *
 * WARNING: The `DEFAULT_ADMIN_ROLE` is also its own admin: it has permission to
 * grant and revoke this role. Extra precautions should be taken to secure
 * accounts that have been granted it.
 */
abstract contract AccessControlUpgradeable is Initializable, ContextUpgradeable, IAccessControlUpgradeable, ERC165Upgradeable {
    function __AccessControl_init() internal onlyInitializing {
    }

    function __AccessControl_init_unchained() internal onlyInitializing {
    }
    struct RoleData {
        mapping(address => bool) members;
        bytes32 adminRole;
    }

    mapping(bytes32 => RoleData) private _roles;

    bytes32 public constant DEFAULT_ADMIN_ROLE = 0x00;

    /**
     * @dev Modifier that checks that an account has a specific role. Reverts
     * with a standardized message including the required role.
     *
     * The format of the revert reason is given by the following regular expression:
     *
     *  /^AccessControl: account (0x[0-9a-f]{40}) is missing role (0x[0-9a-f]{64})$/
     *
     * _Available since v4.1._
     */
    modifier onlyRole(bytes32 role) {
        _checkRole(role);
        _;
    }

    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IAccessControlUpgradeable).interfaceId || super.supportsInterface(interfaceId);
    }

    /**
     * @dev Returns `true` if `account` has been granted `role`.
     */
    function hasRole(bytes32 role, address account) public view virtual override returns (bool) {
        return _roles[role].members[account];
    }

    /**
     * @dev Revert with a standard message if `_msgSender()` is missing `role`.
     * Overriding this function changes the behavior of the {onlyRole} modifier.
     *
     * Format of the revert message is described in {_checkRole}.
     *
     * _Available since v4.6._
     */
    function _checkRole(bytes32 role) internal view virtual {
        _checkRole(role, _msgSender());
    }

    /**
     * @dev Revert with a standard message if `account` is missing `role`.
     *
     * The format of the revert reason is given by the following regular expression:
     *
     *  /^AccessControl: account (0x[0-9a-f]{40}) is missing role (0x[0-9a-f]{64})$/
     */
    function _checkRole(bytes32 role, address account) internal view virtual {
        if (!hasRole(role, account)) {
            revert(
                string(
                    abi.encodePacked(
                        "AccessControl: account ",
                        StringsUpgradeable.toHexString(account),
                        " is missing role ",
                        StringsUpgradeable.toHexString(uint256(role), 32)
                    )
                )
            );
        }
    }

    /**
     * @dev Returns the admin role that controls `role`. See {grantRole} and
     * {revokeRole}.
     *
     * To change a role's admin, use {_setRoleAdmin}.
     */
    function getRoleAdmin(bytes32 role) public view virtual override returns (bytes32) {
        return _roles[role].adminRole;
    }

    /**
     * @dev Grants `role` to `account`.
     *
     * If `account` had not been already granted `role`, emits a {RoleGranted}
     * event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     *
     * May emit a {RoleGranted} event.
     */
    function grantRole(bytes32 role, address account) public virtual override onlyRole(getRoleAdmin(role)) {
        _grantRole(role, account);
    }

    /**
     * @dev Revokes `role` from `account`.
     *
     * If `account` had been granted `role`, emits a {RoleRevoked} event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     *
     * May emit a {RoleRevoked} event.
     */
    function revokeRole(bytes32 role, address account) public virtual override onlyRole(getRoleAdmin(role)) {
        _revokeRole(role, account);
    }

    /**
     * @dev Revokes `role` from the calling account.
     *
     * Roles are often managed via {grantRole} and {revokeRole}: this function's
     * purpose is to provide a mechanism for accounts to lose their privileges
     * if they are compromised (such as when a trusted device is misplaced).
     *
     * If the calling account had been revoked `role`, emits a {RoleRevoked}
     * event.
     *
     * Requirements:
     *
     * - the caller must be `account`.
     *
     * May emit a {RoleRevoked} event.
     */
    function renounceRole(bytes32 role, address account) public virtual override {
        require(account == _msgSender(), "AccessControl: can only renounce roles for self");

        _revokeRole(role, account);
    }

    /**
     * @dev Grants `role` to `account`.
     *
     * If `account` had not been already granted `role`, emits a {RoleGranted}
     * event. Note that unlike {grantRole}, this function doesn't perform any
     * checks on the calling account.
     *
     * May emit a {RoleGranted} event.
     *
     * [WARNING]
     * ====
     * This function should only be called from the constructor when setting
     * up the initial roles for the system.
     *
     * Using this function in any other way is effectively circumventing the admin
     * system imposed by {AccessControl}.
     * ====
     *
     * NOTE: This function is deprecated in favor of {_grantRole}.
     */
    function _setupRole(bytes32 role, address account) internal virtual {
        _grantRole(role, account);
    }

    /**
     * @dev Sets `adminRole` as ``role``'s admin role.
     *
     * Emits a {RoleAdminChanged} event.
     */
    function _setRoleAdmin(bytes32 role, bytes32 adminRole) internal virtual {
        bytes32 previousAdminRole = getRoleAdmin(role);
        _roles[role].adminRole = adminRole;
        emit RoleAdminChanged(role, previousAdminRole, adminRole);
    }

    /**
     * @dev Grants `role` to `account`.
     *
     * Internal function without access restriction.
     *
     * May emit a {RoleGranted} event.
     */
    function _grantRole(bytes32 role, address account) internal virtual {
        if (!hasRole(role, account)) {
            _roles[role].members[account] = true;
            emit RoleGranted(role, account, _msgSender());
        }
    }

    /**
     * @dev Revokes `role` from `account`.
     *
     * Internal function without access restriction.
     *
     * May emit a {RoleRevoked} event.
     */
    function _revokeRole(bytes32 role, address account) internal virtual {
        if (hasRole(role, account)) {
            _roles[role].members[account] = false;
            emit RoleRevoked(role, account, _msgSender());
        }
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[49] private __gap;
}

abstract contract FixinAccessControlUpgradeable is AccessControlUpgradeable, OwnableUpgradeable {

    bytes32 internal constant MINTER_ROLE = keccak256("MINTER_ROLE");
    bytes32 internal constant BURNER_ROLE = keccak256("BURNER_ROLE");
    bytes32 internal constant GOVERNOR_ROLE = keccak256("GOVENOR_ROLE");

    function _setGovernor(address _governor) internal onlyOwner {
        _grantRole(GOVERNOR_ROLE, _governor);
    }

    function isGovernor() internal view returns (bool) {
        return hasRole(GOVERNOR_ROLE, msg.sender) || owner() == msg.sender;
    }

    function setGovernor(address governor) public virtual onlyOwner {
        _setGovernor(governor);
    }
}

// OpenZeppelin Contracts (last updated v4.8.0) (security/ReentrancyGuard.sol)

/**
 * @dev Contract module that helps prevent reentrant calls to a function.
 *
 * Inheriting from `ReentrancyGuard` will make the {nonReentrant} modifier
 * available, which can be applied to functions to make sure there are no nested
 * (reentrant) calls to them.
 *
 * Note that because there is a single `nonReentrant` guard, functions marked as
 * `nonReentrant` may not call one another. This can be worked around by making
 * those functions `private`, and then adding `external` `nonReentrant` entry
 * points to them.
 *
 * TIP: If you would like to learn more about reentrancy and alternative ways
 * to protect against it, check out our blog post
 * https://blog.openzeppelin.com/reentrancy-after-istanbul/[Reentrancy After Istanbul].
 */
abstract contract ReentrancyGuardUpgradeable is Initializable {
    // Booleans are more expensive than uint256 or any type that takes up a full
    // word because each write operation emits an extra SLOAD to first read the
    // slot's contents, replace the bits taken up by the boolean, and then write
    // back. This is the compiler's defense against contract upgrades and
    // pointer aliasing, and it cannot be disabled.

    // The values being non-zero value makes deployment a bit more expensive,
    // but in exchange the refund on every call to nonReentrant will be lower in
    // amount. Since refunds are capped to a percentage of the total
    // transaction's gas, it is best to keep them low in cases like this one, to
    // increase the likelihood of the full refund coming into effect.
    uint256 private constant _NOT_ENTERED = 1;
    uint256 private constant _ENTERED = 2;

    uint256 private _status;

    function __ReentrancyGuard_init() internal onlyInitializing {
        __ReentrancyGuard_init_unchained();
    }

    function __ReentrancyGuard_init_unchained() internal onlyInitializing {
        _status = _NOT_ENTERED;
    }

    /**
     * @dev Prevents a contract from calling itself, directly or indirectly.
     * Calling a `nonReentrant` function from another `nonReentrant`
     * function is not supported. It is possible to prevent this from happening
     * by making the `nonReentrant` function external, and making it call a
     * `private` function that does the actual work.
     */
    modifier nonReentrant() {
        _nonReentrantBefore();
        _;
        _nonReentrantAfter();
    }

    function _nonReentrantBefore() private {
        // On the first call to nonReentrant, _status will be _NOT_ENTERED
        require(_status != _ENTERED, "ReentrancyGuard: reentrant call");

        // Any calls to nonReentrant after this point will fail
        _status = _ENTERED;
    }

    function _nonReentrantAfter() private {
        // By storing the original value once again, a refund is triggered (see
        // https://eips.ethereum.org/EIPS/eip-2200)
        _status = _NOT_ENTERED;
    }

    /**
     * @dev Returns true if the reentrancy guard is currently set to "entered", which indicates there is a
     * `nonReentrant` function in the call stack.
     */
    function _reentrancyGuardEntered() internal view returns (bool) {
        return _status == _ENTERED;
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[49] private __gap;
}

error WithdrawFailed();

abstract contract ERC721ABase is
    Initializable,
    IERC721AUpgradeable,
    ERC721AQueryableUpgradeable,
    FixinAccessControlUpgradeable,
    ReentrancyGuardUpgradeable
{
    //baseURI for the token metadata
    string public _metadataURI;
    string public _contractURI;

    event OwnerWithdrawn(uint256 amount);

    constructor() {
        _disableInitializers();
    }

    function _initialize(
        string memory _name,
        string memory _symbol,
        string memory baseUrl_,
        string memory _contractUri,
        address _owner
    ) internal {
        _metadataURI = baseUrl_;
        _contractURI = _contractUri;
        __ERC721A_init(_name, _symbol);
        __ERC721AQueryable_init();
        _transferOwnership(_owner);
        __ReentrancyGuard_init();
    }

    /**
     * @dev Base URI for computing {tokenURI}. If set, the resulting URI for each
     * token will be the concatenation of the `baseURI` and the `tokenId`. Empty
     * by default, it can be overridden in child contracts.
     */
    function _baseURI() internal view virtual override returns (string memory) {
        return _metadataURI;
    }

    function _startTokenId() internal view virtual override returns (uint256) {
        return 1;
    }

    function _checkOwnership(address owner, uint256[] memory tokens) internal view virtual returns (bool) {
        for (uint256 i = 0; i < tokens.length; ++i) {
            if (ownerOf(tokens[i]) != owner) {
                return false;
            }
        }
        return true;
    }

    function supportsInterface(bytes4 interfaceId)
        public
        view
        virtual
        override(IERC721AUpgradeable, ERC721AUpgradeable, AccessControlUpgradeable)
        returns (bool)
    {
        return interfaceId == 0x01ffc9a7 // ERC165 interface ID for ERC165.
            || interfaceId == 0x80ac58cd // ERC165 interface ID for ERC721.
            || interfaceId == 0x5b5e139f || super.supportsInterface(interfaceId);
    }

    function withdraw() external onlyRole(GOVERNOR_ROLE) nonReentrant {
        uint256 balance = address(this).balance;
        (bool success,) = owner().call{value: balance}("");
        if (!success) revert WithdrawFailed();
        emit OwnerWithdrawn(balance);
    }
}

// OpenZeppelin Contracts (last updated v4.7.0) (utils/cryptography/MerkleProof.sol)

/**
 * @dev These functions deal with verification of Merkle Tree proofs.
 *
 * The proofs can be generated using the JavaScript library
 * https://github.com/miguelmota/merkletreejs[merkletreejs].
 * Note: the hashing algorithm should be keccak256 and pair sorting should be enabled.
 *
 * See `test/utils/cryptography/MerkleProof.test.js` for some examples.
 *
 * WARNING: You should avoid using leaf values that are 64 bytes long prior to
 * hashing, or use a hash function other than keccak256 for hashing leaves.
 * This is because the concatenation of a sorted pair of internal nodes in
 * the merkle tree could be reinterpreted as a leaf value.
 */
library MerkleProof {
    /**
     * @dev Returns true if a `leaf` can be proved to be a part of a Merkle tree
     * defined by `root`. For this, a `proof` must be provided, containing
     * sibling hashes on the branch from the leaf to the root of the tree. Each
     * pair of leaves and each pair of pre-images are assumed to be sorted.
     */
    function verify(
        bytes32[] memory proof,
        bytes32 root,
        bytes32 leaf
    ) internal pure returns (bool) {
        return processProof(proof, leaf) == root;
    }

    /**
     * @dev Calldata version of {verify}
     *
     * _Available since v4.7._
     */
    function verifyCalldata(
        bytes32[] calldata proof,
        bytes32 root,
        bytes32 leaf
    ) internal pure returns (bool) {
        return processProofCalldata(proof, leaf) == root;
    }

    /**
     * @dev Returns the rebuilt hash obtained by traversing a Merkle tree up
     * from `leaf` using `proof`. A `proof` is valid if and only if the rebuilt
     * hash matches the root of the tree. When processing the proof, the pairs
     * of leafs & pre-images are assumed to be sorted.
     *
     * _Available since v4.4._
     */
    function processProof(bytes32[] memory proof, bytes32 leaf) internal pure returns (bytes32) {
        bytes32 computedHash = leaf;
        for (uint256 i = 0; i < proof.length; i++) {
            computedHash = _hashPair(computedHash, proof[i]);
        }
        return computedHash;
    }

    /**
     * @dev Calldata version of {processProof}
     *
     * _Available since v4.7._
     */
    function processProofCalldata(bytes32[] calldata proof, bytes32 leaf) internal pure returns (bytes32) {
        bytes32 computedHash = leaf;
        for (uint256 i = 0; i < proof.length; i++) {
            computedHash = _hashPair(computedHash, proof[i]);
        }
        return computedHash;
    }

    /**
     * @dev Returns true if the `leaves` can be proved to be a part of a Merkle tree defined by
     * `root`, according to `proof` and `proofFlags` as described in {processMultiProof}.
     *
     * _Available since v4.7._
     */
    function multiProofVerify(
        bytes32[] memory proof,
        bool[] memory proofFlags,
        bytes32 root,
        bytes32[] memory leaves
    ) internal pure returns (bool) {
        return processMultiProof(proof, proofFlags, leaves) == root;
    }

    /**
     * @dev Calldata version of {multiProofVerify}
     *
     * _Available since v4.7._
     */
    function multiProofVerifyCalldata(
        bytes32[] calldata proof,
        bool[] calldata proofFlags,
        bytes32 root,
        bytes32[] memory leaves
    ) internal pure returns (bool) {
        return processMultiProofCalldata(proof, proofFlags, leaves) == root;
    }

    /**
     * @dev Returns the root of a tree reconstructed from `leaves` and the sibling nodes in `proof`,
     * consuming from one or the other at each step according to the instructions given by
     * `proofFlags`.
     *
     * _Available since v4.7._
     */
    function processMultiProof(
        bytes32[] memory proof,
        bool[] memory proofFlags,
        bytes32[] memory leaves
    ) internal pure returns (bytes32 merkleRoot) {
        // This function rebuild the root hash by traversing the tree up from the leaves. The root is rebuilt by
        // consuming and producing values on a queue. The queue starts with the `leaves` array, then goes onto the
        // `hashes` array. At the end of the process, the last hash in the `hashes` array should contain the root of
        // the merkle tree.
        uint256 leavesLen = leaves.length;
        uint256 totalHashes = proofFlags.length;

        // Check proof validity.
        require(leavesLen + proof.length - 1 == totalHashes, "MerkleProof: invalid multiproof");

        // The xxxPos values are "pointers" to the next value to consume in each array. All accesses are done using
        // `xxx[xxxPos++]`, which return the current value and increment the pointer, thus mimicking a queue's "pop".
        bytes32[] memory hashes = new bytes32[](totalHashes);
        uint256 leafPos = 0;
        uint256 hashPos = 0;
        uint256 proofPos = 0;
        // At each step, we compute the next hash using two values:
        // - a value from the "main queue". If not all leaves have been consumed, we get the next leaf, otherwise we
        //   get the next hash.
        // - depending on the flag, either another value for the "main queue" (merging branches) or an element from the
        //   `proof` array.
        for (uint256 i = 0; i < totalHashes; i++) {
            bytes32 a = leafPos < leavesLen ? leaves[leafPos++] : hashes[hashPos++];
            bytes32 b = proofFlags[i] ? leafPos < leavesLen ? leaves[leafPos++] : hashes[hashPos++] : proof[proofPos++];
            hashes[i] = _hashPair(a, b);
        }

        if (totalHashes > 0) {
            return hashes[totalHashes - 1];
        } else if (leavesLen > 0) {
            return leaves[0];
        } else {
            return proof[0];
        }
    }

    /**
     * @dev Calldata version of {processMultiProof}
     *
     * _Available since v4.7._
     */
    function processMultiProofCalldata(
        bytes32[] calldata proof,
        bool[] calldata proofFlags,
        bytes32[] memory leaves
    ) internal pure returns (bytes32 merkleRoot) {
        // This function rebuild the root hash by traversing the tree up from the leaves. The root is rebuilt by
        // consuming and producing values on a queue. The queue starts with the `leaves` array, then goes onto the
        // `hashes` array. At the end of the process, the last hash in the `hashes` array should contain the root of
        // the merkle tree.
        uint256 leavesLen = leaves.length;
        uint256 totalHashes = proofFlags.length;

        // Check proof validity.
        require(leavesLen + proof.length - 1 == totalHashes, "MerkleProof: invalid multiproof");

        // The xxxPos values are "pointers" to the next value to consume in each array. All accesses are done using
        // `xxx[xxxPos++]`, which return the current value and increment the pointer, thus mimicking a queue's "pop".
        bytes32[] memory hashes = new bytes32[](totalHashes);
        uint256 leafPos = 0;
        uint256 hashPos = 0;
        uint256 proofPos = 0;
        // At each step, we compute the next hash using two values:
        // - a value from the "main queue". If not all leaves have been consumed, we get the next leaf, otherwise we
        //   get the next hash.
        // - depending on the flag, either another value for the "main queue" (merging branches) or an element from the
        //   `proof` array.
        for (uint256 i = 0; i < totalHashes; i++) {
            bytes32 a = leafPos < leavesLen ? leaves[leafPos++] : hashes[hashPos++];
            bytes32 b = proofFlags[i] ? leafPos < leavesLen ? leaves[leafPos++] : hashes[hashPos++] : proof[proofPos++];
            hashes[i] = _hashPair(a, b);
        }

        if (totalHashes > 0) {
            return hashes[totalHashes - 1];
        } else if (leavesLen > 0) {
            return leaves[0];
        } else {
            return proof[0];
        }
    }

    function _hashPair(bytes32 a, bytes32 b) private pure returns (bytes32) {
        return a < b ? _efficientHash(a, b) : _efficientHash(b, a);
    }

    function _efficientHash(bytes32 a, bytes32 b) private pure returns (bytes32 value) {
        /// @solidity memory-safe-assembly
        assembly {
            mstore(0x00, a)
            mstore(0x20, b)
            value := keccak256(0x00, 0x40)
        }
    }
}

error SupplyOverflow();
error InsuffientPayment();
error MintingNotStarted();
error MintingEnded();
error NonExistingToken();
error TreasuryWithdrawFailed();

contract AttiNFT is ERC721ABase, UUPSUpgradeable, ERC2981, IUpgradeable {
    mapping(address => bool) public goldlist;
    mapping(address => bool) public whitelist;
    mapping(uint256 => string) internal tokenURIs;
    IERC6551Registry private registry;
    address private tbaImpl;
    uint256 private constant MAX_SUPPLY = 9999;
    uint256 private constant P1_SUPPLY = 6666;
    uint256 private constant P2_SUPPLY = 3333;
    uint32 private p1StartTime;
    uint32 private p2StartTime;
    uint256 private constant p1Length = 3600;
    uint256 private constant p2Length = 3600 * 24;
    uint256 private p1Price;
    uint256 private p2Price;
    bytes32 private goldProofRoot;
    bytes32 private whiteProofRoot;
    bool public useMerkleTree;
    bool private ended;
    address constant TREASURY = address(0x885Ddee7DBdD3863a3604D215084796D5fe64B39);

    // authorise upgradeable
    function _authorizeUpgrade(address) internal override onlyRole(GOVERNOR_ROLE) {}

    event AttiMinted(address indexed wallet, uint256 indexed nftId);
    event ERC6551Created(address indexed nft, uint256 indexed nftId, address wallet, address account);
    event GovenorMinting(uint256 quantity);
    event NFTPassPurchased(address indexed buyer, uint256 indexed quantity, uint256 price);

    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _owner,
        string memory _name,
        string memory _symbol,
        string memory _uri,
        string memory _contractUri,
        address _registry,
        address _accountImpl
    ) public initializerERC721A initializer {
        super._initialize(_name, _symbol, _uri, _contractUri, _owner);
        if (_registry != address(0)) {
            registry = IERC6551Registry(_registry);
        }
        if (_accountImpl != address(0)) {
            tbaImpl = _accountImpl;
        }
        p1Price = 39000000000000000; // for gold list holders, 0.
        p2Price = 49000000000000000;
        p1StartTime = 1698152400; // Sydney time 24th Oct 24:00pm
        p2StartTime = 1698156000; // Sydney time 25th Oct 1:00am
        goldProofRoot = 0x59bb3184ad4ddbdac637b8488acdfca6a9253d511fe3f0ee7e9a07729449f65f;
        whiteProofRoot = 0xdc21b73a924dbf7a9fc041127af9b7721ca89414c433b34bbe65a8e0eb819d75;
        useMerkleTree = true;
    }

    //========================================================================================================
    // PreMinting Admin Tasks
    // enable merkle tree white/gold list verification
    function setMerkleTree(bool _useMerkleTree) external onlyRole(GOVERNOR_ROLE) {
        useMerkleTree = _useMerkleTree;
    }

    /**
     * @notice Preminting - Change merkle root hash for gold list
     */
    function setGoldProofRoot(bytes32 _merkleRootHash) external onlyRole(GOVERNOR_ROLE) {
        goldProofRoot = _merkleRootHash;
    }

    /**
     * @notice Preminting - Change merkle root hash for white list
     */
    function setWhiteProofRoot(bytes32 _merkleRootHash) external onlyRole(GOVERNOR_ROLE) {
        whiteProofRoot = _merkleRootHash;
    }

    // configure the minting phase by epoch time in secs
    function setMintingPhase(uint32 _p1StartTime, uint32 _p2StartTime) external onlyRole(GOVERNOR_ROLE) {
        require((_p2StartTime - _p1StartTime == 3600), "there is an one hour window for Phase 1");
        p1StartTime = _p1StartTime;
        p2StartTime = _p2StartTime;
    }

    // configure the ERC6551 account registry and implementation contracts
    function setErc6551(address _registry, address _accountImpl) external onlyRole(GOVERNOR_ROLE) {
        if (_registry != address(0)) {
            registry = IERC6551Registry(_registry);
        }
        if (_accountImpl != address(0)) {
            tbaImpl = _accountImpl;
        }
    }

    // End minting - minting will be ended 1 week after public sale starts, govenor can manually end it
    function setEnded(bool _ended) external onlyRole(GOVERNOR_ROLE) {
        ended = _ended;
    }

    // change metadata base URI
    function setBaseURI(string memory uri) external onlyRole(GOVERNOR_ROLE) {
        _metadataURI = uri;
    }

    function setDefaultRoyalty(address receiver, uint96 feeNumerator) external onlyRole(GOVERNOR_ROLE) {
        _setDefaultRoyalty(receiver, feeNumerator);
    }

    function setTokenRoyalty(uint256 tokenId, address receiver, uint96 feeNumerator) external onlyRole(GOVERNOR_ROLE) {
        _setTokenRoyalty(tokenId, receiver, feeNumerator);
    }

    // override parent withdraw function
    function withdrawTreasury() external onlyRole(GOVERNOR_ROLE) nonReentrant {
        uint256 balance = address(this).balance;
        (bool success,) = TREASURY.call{value: balance}("");
        if (!success) revert TreasuryWithdrawFailed();
        emit OwnerWithdrawn(balance);
    }
    //========================================================================================================
    /**
     * @notice Verify merkle proof of the address in gold list
     */

    function verifyGoldHolder(address _wallet, bytes32[] calldata _merkleProof) private view returns (bool) {
        bytes32 leaf = keccak256(abi.encodePacked(_wallet));
        return MerkleProof.verify(_merkleProof, goldProofRoot, leaf);
    }

    /**
     * @notice Verify merkle proof of the address in white list
     */
    function verifyWhiteHolder(address _wallet, bytes32[] calldata _merkleProof) private view returns (bool) {
        bytes32 leaf = keccak256(abi.encodePacked(_wallet));
        return MerkleProof.verify(_merkleProof, whiteProofRoot, leaf);
    }

    // deploy ERC6551 account for the NFT with tokenId
    function deploy6551Account(address wallet, uint256 tokenId) private returns (address acc) {
        acc = registry.createAccount(tbaImpl, block.chainid, address(this), tokenId, 0, "");
        emit ERC6551Created(address(this), tokenId, wallet, acc);
    }
    //==========================================================================================================================
    // On chain gold/white list configuration functions

    function addGoldHolder(address wallet, bool status) public onlyRole(GOVERNOR_ROLE) {
        goldlist[wallet] = status;
    }

    function addGoldList(address[] memory wallets, bool status) public onlyRole(GOVERNOR_ROLE) {
        for (uint256 i = 0; i < wallets.length; i++) {
            goldlist[wallets[i]] = status;
        }
    }

    function addWhiteHolder(address wallet, bool status) public onlyRole(GOVERNOR_ROLE) {
        goldlist[wallet] = status;
    }

    function addWhiteList(address[] memory wallets, bool status) public onlyRole(GOVERNOR_ROLE) {
        for (uint256 i = 0; i < wallets.length; i++) {
            whitelist[wallets[i]] = status;
        }
    }
    //==========================================================================================================================
    // Read Functions

    function tokenURI(uint256 tokenId)
        public
        view
        override(IERC721AUpgradeable, ERC721AUpgradeable)
        returns (string memory)
    {
        if (bytes(tokenURIs[tokenId]).length > 0) {
            return tokenURIs[tokenId];
        }
        if (!_exists(tokenId)) revert NonExistingToken();
        string memory baseURI = _baseURI();
        return bytes(baseURI).length != 0 ? string(abi.encodePacked(baseURI, _toString(tokenId), ".json")) : "";
    }

    function contractURI() public view returns (string memory) {
        return _contractURI;
    }

    function isPhase1() public view returns (bool) {
        return p1StartTime > 0 && currentTime() >= p1StartTime && currentTime() < p2StartTime;
    }

    function isPhase2() public view returns (bool) {
        return p2StartTime > 0 && currentTime() >= p2StartTime && currentTime() <= (p2StartTime + p2Length);
    }

    function isPublicSale() public view returns (bool) {
        return p2StartTime > 0 && currentTime() > (p2StartTime + p2Length);
    }

    function phase1Start() external view returns (uint256) {
        return p1StartTime;
    }

    function phase2Start() external view returns (uint256) {
        return p2StartTime;
    }

    function isGoldHolder(address _wallet, bytes32[] calldata _merkleProof) public view returns (bool) {
        if (useMerkleTree) {
            return verifyGoldHolder(_wallet, _merkleProof);
        } else {
            return goldlist[_wallet];
        }
    }

    function isWhiteHolder(address _wallet, bytes32[] calldata _merkleProof) public view returns (bool) {
        if (useMerkleTree) {
            return verifyWhiteHolder(_wallet, _merkleProof);
        } else {
            return whitelist[_wallet];
        }
    }

    function isEligible(address _wallet, bytes32[] calldata _merkleProof) external view returns (bool) {
        if (ended) {
            return false; // minting ended already
        }
        if (currentTime() < p1StartTime) {
            return false; // minting is not started yet
        } else if (isPhase1()) {
            return isGoldHolder(_wallet, _merkleProof);
        } else if (isPhase2()) {
            return isGoldHolder(_wallet, _merkleProof) || isWhiteHolder(_wallet, _merkleProof);
        }
        return true;
    }

    function price() public view returns (uint256) {
        return p1Price; // Atticc team decide to lower the price to 0.039 for all minting.
            // if (totalSupply() < 6666) {
            //     return p1Price;
            // }
            // return p2Price;
    }

    function currentTime() public view returns (uint256) {
        return block.timestamp;
    }

    function isTradable() public view returns (bool) {
        // trading is allowed when all NFTs are minted or 1 week after public sale.
        return (p2StartTime > 0 && currentTime() > (p2StartTime + 604800)) || totalSupply() == MAX_SUPPLY;
    }

    function isMintingEnded() external view returns (bool) {
        return ended;
    }

    //==========================================================================================================================
    // main minting function
    function mint(address _wallet, uint256 quantity, bytes32[] calldata _merkleProof) external payable {
        if (totalSupply() + quantity > 9999) {
            revert SupplyOverflow();
        }
        // minting starts from Phase 1 (Gold List only)
        if (currentTime() < p1StartTime) {
            revert MintingNotStarted();
        }

        bool isGovenor_ = isGovernor();
        // After Public sale, only Governor account can still mint
        if (ended && !isGovenor_) {
            revert MintingEnded();
        }

        if (isPhase1()) {
            require(isGovenor_ || isGoldHolder(_wallet, _merkleProof), "User must be in Atticc's goldlist");
        }
        if (isPhase2()) {
            require(
                isGovenor_ || isWhiteHolder(_wallet, _merkleProof) || isGoldHolder(_wallet, _merkleProof),
                "User must be in Atticc's whitelist"
            );
        }
        if (isGovenor_) {
            emit GovenorMinting(quantity);
        } else if (msg.value > 0) {
            // Atticc team decided to lower the price to 0.039E
            require(msg.value >= price() * quantity, "InsuffientPayment");
            //uint256 p1Remaining = P1_SUPPLY - totalSupply();
            // still in phase 1 minting
            // if (p1Remaining <= 0 || p1Remaining >= quantity) {
            //     require(msg.value >= price() * quantity, "InsuffientPayment");
            // } else {
            //     // mixed p1 and p2 minting
            //     require(msg.value >= p1Price * p1Remaining + p2Price * (quantity - p1Remaining), "InsuffientPayment");
            // }
            emit NFTPassPurchased(msg.sender, quantity, msg.value);
        } else {
            revert InsuffientPayment();
        }
        _mint(_wallet, quantity);
        emit AttiMinted(_wallet, quantity);
    }

    /// @dev The following functions are overrides required by Solidity.
    function _beforeTokenTransfers(address from, address to, uint256 tokenId, uint256 quantity)
        internal
        override(ERC721AUpgradeable)
    {
        super._beforeTokenTransfers(from, to, tokenId, quantity);
        if (from != address(0) && to != address(0) && from != owner() && !isTradable()) {
            revert("NFT token is not transferrable!");
        }
    }
    //==========================================================================================================================
    // Interface compatibility

    function supportsInterface(bytes4 interfaceId) public view virtual override(ERC721ABase, ERC2981) returns (bool) {
        return ERC2981.supportsInterface(interfaceId) || type(IERC721).interfaceId == interfaceId
            || super.supportsInterface(interfaceId);
    }

    // version control
    function version() external pure returns (uint256) {
        return 26;
    }
}
