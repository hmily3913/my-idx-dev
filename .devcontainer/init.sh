#!/bin/bash

echo "[INIT] Running post-start setup..."

# 示例：如果存在 frp 文件，就自动运行
if [ -f "/home/user/frp_0.62.1_linux_amd64/frpc" ]; then
  chmod +x /home/user/frp_0.62.1_linux_amd64/frp/frpc
  chmod +x /home/user/frp_0.62.1_linux_amd64/frp/run-frpc.sh
  nohup /home/user/frp_0.62.1_linux_amd64/run-frpc.sh > /home/user/frp_0.62.1_linux_amd64/frpc.log 2>&1 &
  echo "[INIT] frp client started"
else
  echo "[INIT] frpc not found, skipping..."
fi

# 你也可以添加更多初始化逻辑，如自动安装某些工具

