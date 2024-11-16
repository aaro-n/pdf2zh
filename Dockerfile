# 使用轻量的基础镜像
FROM debian:latest

# 设置工作目录
WORKDIR /home/www

# 安装 Python 和相关依赖
RUN apt-get update && \
    apt-get install -y --no-install-recommends python3 python3-venv python3-pip libgl1 libglib2.0-0 && \
    python3 -m venv pdf2zh && \
    ./pdf2zh/bin/pip install pdf2zh && \
    rm -rf /var/lib/apt/lists/*

# 将虚拟环境的 bin 目录添加到 PATH
ENV PATH="/home/www/pdf2zh/bin:$PATH"

# 添加一个命令，使容器保持运行
CMD ["tail", "-f", "/dev/null"]

