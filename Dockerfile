FROM ontresearch/dorado:mr661_shae423e761540b9d08b526a1eb32faf498f32e8f22
ENV VERSION 1.1.1

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update --allow-releaseinfo-change && apt install -y procps curl wget gzip pigz ruby bc && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*



