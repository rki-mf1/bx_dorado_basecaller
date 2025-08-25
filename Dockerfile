FROM ontresearch/dorado:shae423e761540b9d08b526a1eb32faf498f32e8f22

# Avoid interactive prompts
ARG DEBIAN_FRONTEND=noninteractive
ENV VERSION=1.1.1

# Install Miniconda
ENV CONDA\_DIR=/home/epi2meuser/miniconda
ENV PATH=$CONDA\_DIR/bin:$PATH

RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86\_64.sh -O /tmp/miniconda.sh && 
    bash /tmp/miniconda.sh -b -p $CONDA\_DIR && 
    rm /tmp/miniconda.sh

# Accept Conda Terms of Service automatically for main channels
RUN conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/main && 
    conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/r

# Install curl via conda
RUN conda install -y curl && conda clean -a

ENV PATH=$CONDA\_DIR/bin:$PATH
