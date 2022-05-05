1. `delegatecall`是类似于`call`的低级函数。
2. 当合约`A`执行对合约`B`的`delegatecall`时，`B`的代码会被执行。
3. `B`的代码使用合约`A`的 `storage` 变量，`msg.sender`和`msg.value`。