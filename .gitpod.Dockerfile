FROM gitpod/workspace-full

WORKDIR /workspace
RUN sudo apt-get install ffmpeg && \
    git clone https://github.com/hybridgroup/gocv.git && \
    cd gocv && make install