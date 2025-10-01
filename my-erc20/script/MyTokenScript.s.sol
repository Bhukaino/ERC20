// SPDX-License-Identifier: MIT

pragma solidity ^0.8.30;

import {MyToken} from "../src/MyToken.sol";
import {Script} from "forge-std/Script.sol";

contract MyTokenScript is Script {
    MyToken public token;
    
    function run() external returns(MyToken) {
        vm.startBroadcast();
        token = new MyToken("Bukola", "BKO");
        vm.stopBroadcast();
        return token;
    }
}
