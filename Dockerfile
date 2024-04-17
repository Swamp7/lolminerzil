FROM nvidia/cuda:12.1.0-runtime-ubuntu18.04

RUN rm /etc/apt/sources.list.d/cuda.list

RUN apt update \ 
    && apt -y install wget \
    && wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.87/lolMiner-1.87.ZIL.tar.gz \
    && tar xvzf lolMiner-1.87.ZIL.tar.gz \
    && rm lolMiner-1.87.ZIL.tar.gz

WORKDIR /lolminer

ENTRYPOINT ["./lolzil"]
