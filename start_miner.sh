#!/bin/bash

# 检查是否提供了以太坊地址参数
if [ -z "$ETHEREUM_ADDRESS" ]; then
    echo "请提供一个以太坊地址作为参数"
    exit 1
fi

# 启动挖矿，并将日志输出到标准输出
./iniminer-linux-x64 --pool stratum+tcp://$ETHEREUM_ADDRESS.Worker001@pool-core-testnet.inichain.com:32672 stratum+tcp://$ETHEREUM_ADDRESS.Worker001@pool-core-testnet.inichain.com:32672 &> /dev/stdout
