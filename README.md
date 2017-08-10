# rpi-minidlna

## Docker for rpi-minidlna

### Build
```sh
docker build -t rpi-minidlna .
```

### Run
```sh
docker run -d --restart=always -v /home/pi/hd/:/data -p 8200:8200 --name=movies felipeconti/rpi-minidlna
```
