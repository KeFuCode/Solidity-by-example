// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.13;

contract Gas {
    uint public i = 0;

    // 用光所有发送的 gas 之后，交易会执行失败
    // 状态改变被撤销
    // 已经消耗的 gas 不会被退还
    function forever() public {
        while (true) {
            i += 1;
        }
    }
}