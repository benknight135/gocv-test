FROM gitpod/workspace-full

USER gitpod

WORKDIR /workspace
RUN sudo apt-get update && \
    sudo apt-get install -y ffmpeg && \
    && sudo rm -rf /var/lib/apt/lists/*
    
RUN git clone https://github.com/hybridgroup/gocv.git && \
    cd gocv && make install
