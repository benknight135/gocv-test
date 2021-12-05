FROM gitpod/workspace-full

WORKDIR /workspace
RUN sudo apt-get update && sudo apt-get install -y ffmpeg && \
    git clone https://github.com/hybridgroup/gocv.git && \
    cd gocv && make install
