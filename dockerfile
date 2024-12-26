# 使用官方的Ubuntu基础镜像
FROM ubuntu:latest

# 将本地的iniminer-linux-x64复制到容器中
COPY iniminer-linux-x64 /usr/local/bin/iniminer-linux-x64

# 使iniminer可执行
RUN chmod +x /usr/local/bin/iniminer-linux-x64

# 复制启动脚本到容器中
COPY start_miner.sh /start_miner.sh

# 使启动脚本可执行
RUN chmod +x /start_miner.sh

# 设置工作目录为/usr/local/bin
WORKDIR /usr/local/bin

# 运行启动脚本
CMD ["/start_miner.sh"]
