# matrix-demo
Live demonstration of [weechat-matrix](https://github.com/poljar/weechat-matrix) script.

## Building
```
git clone https://github.com/nogaems/matrix-demo.git && cd matrix-demo
docker build -t weechat-matrix:demo .
```

## Run
`docker run -it weechat-matrix:demo`

or if you don't want to build this yourself, just use a built one from the registry:

`docker run -it nogaems/weechat-matrix:demo`

After all you will get something like this:

![screenshot](https://raw.githubusercontent.com/nogaems/matrix-demo/master/screenshot.png)

This image is based on `stage3-amd64-hardened` gentoo image and takes ~500 MB to download.
