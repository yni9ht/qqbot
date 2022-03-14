FROM golang:1.16-alpine

###############################################################################
#                                INSTALLATION
###############################################################################

ENV TZ=Asia/Shanghai
# 设置固定的项目路径
ENV WORKDIR /app

# 添加应用可执行文件，并设置执行权限
ADD ./qqbot   $WORKDIR/qqbot
RUN chmod +x $WORKDIR/qqbot

ADD config.yaml $WORKDIR/config.yaml

###############################################################################
#                                   START
###############################################################################
WORKDIR $WORKDIR
CMD ./qqbot
