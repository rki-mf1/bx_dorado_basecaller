FROM ontresearch/dorado:shae423e761540b9d08b526a1eb32faf498f32e8f22

# Avoid interactive prompts
ARG DEBIAN_FRONTEND=noninteractive
ENV VERSION=1.1.1

# Install curl
RUN conda install -y -c conda-forge curl && conda clean -a
