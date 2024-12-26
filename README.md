# iniverse-image
iniverse的挖矿镜像。

## 自己打包
下载或拉取文件后，在该文件夹内执行 docker build -t iniminer-image . 等待打包完成。

## 运行
docker run -d --name iniminer-container -e ETHEREUM_ADDRESS="{花括号内替换为你自己的ETH地址（替换行为包括花括号）}" iniminer-image

