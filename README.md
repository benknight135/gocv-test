# Go OpenCV test

## Build
### Gitpod
To start developing [open this workspace in gitpod](gitpod.io/#https://github.com/benknight135/gocv-test.git).  
External dependencies are pre-built in docker image that is pulled by gitpod on startup.  
Go Apps are built in a task when the gitpod workspace loads.  

### Manual
Download & install latest Go release from [here](https://go.dev/dl/)

Install external dependencies:
```
./externals
```
*This may take a long time as OpenCV is built from source for gocv*

Build Go Apps:
```
./build
```