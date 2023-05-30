ARG PORT=8090
FROM halohub/halo:2.5
WORKDIR /
RUN apt-get update && apt-get install -y tzdata && \
    echo "Asia/Shanghai" > /etc/timezone && \ 
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
    
EXPOSE ${PORT}
