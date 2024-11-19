# 使用轻量的基像
FROM python:3.12

# 设置工作目录
WORKDIR /home/www

# 安装构建工具和其他依赖
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    build-essential \
    libgl1 \
    libglib2.0-0 \
    && rm -rf /var/lib/apt/lists/*

# 安装 Python 包
RUN pip install --no-cache-dir pdf2zh

# 添加一个命令，使容器保持运行
CMD ["tail", "-f", "/dev/null"]

