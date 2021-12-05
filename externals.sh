# install ffmpeg
sudo apt-get install ffmpeg

# build gocv (OpenCV)
git clone https://github.com/hybridgroup/gocv.git
cd gocv
make install

# get go dependencies
go get .