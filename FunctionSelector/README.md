# 函数选择器
1. 当一个函数被调用时，calldata的前4个字节指定要调用哪个函数。
2. 这4个字节被称为函数选择器。
3. 以下面这段代码为例。它使用call来执行地址为addr的合约上的transfer
`addr.call(abi.encodeWithSignature("transfer(address,uint256)", 0xSomeAddress, 123))`
从`abi.encodeWithSignature(....)`返回的前4个字节是函数选择器。
# 转换
string：`"transfer(address,uint256)"`
bytes：`74 72 61 6e 73 66 65 72 28 61 64 64 72 65 73 73 2c 75 69 6e 74 32 35 36 29`
[keccek256（bytes)](https://profitplane.com/keccak256)：`0x a9 05 9c bb 2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b`
bytes4：`0x a9 05 9c bb`