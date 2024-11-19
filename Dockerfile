# 使用轻量的基像
FROM python:3.12-slim

# 设置工作目录
WORKDIR /home/www

# 安装 Python 和相关依赖
RUN pip install pdf2zh

# 添加一个命令，使容器保持运行
CMD ["tail", "-f", "/dev/null"]

