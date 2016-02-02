# RPi WebCam docker

This is a image that include fswebcam command to take picture.

## Run

When running the container, you need to mount the /dev/video0 (that is the usb webcam device file) and give the instance the privileged to access the host device. 

Easy run:

```
docker run -d -v /dev/video0:/dev/video0 \
  -v `pwd`:/data1 \
  --privileged webcam /data1/image1.jpg
```

* /data1 folder is the image output path that depend on the path after "webcam"
* /data1/image1.jpg is the file that will create after shoot
