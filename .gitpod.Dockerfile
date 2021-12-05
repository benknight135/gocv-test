FROM gitpod/workspace-full

USER gitpod

RUN sudo apt-get update && \
    sudo apt-get install -y ffmpeg && \
    sudo rm -rf /var/lib/apt/lists/*

RUN sudo mkdir -p /thirdparty && sudo chown -R gitpod:gitpod /thirdparty && \
    cd /thirdparty && git clone https://github.com/hybridgroup/gocv.git && \
    cd gocv && make install

CMD ["/bin/bash"]