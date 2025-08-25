FROM ontresearch/dorado:shae423e761540b9d08b526a1eb32faf498f32e8f22

# Avoid interactive prompts
ARG DEBIAN_FRONTEND=noninteractive

# Install curl
RUN apt update --allow-releaseinfo-change && \
    apt install -y curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
