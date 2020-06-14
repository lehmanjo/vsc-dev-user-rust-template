# vsc-dev-user-rust-template 
Visual Studio Codespace for Rust Development on Ubuntu

![Create Codespace](/README_image_01.png)

Visit https://online.visualstudio.com/environments and create a new codespace as shown above.

## Contents
* Ubuntu 20.04 LTS
* git
* gcc
* python
* rust 

```
C:\github\vsc-dev-user-rust-template\.devcontainer>docker build --tag test .
...
...
...
C:\github\vsc-dev-user-rust-template\.devcontainer>docker images test
REPOSITORY          TAG                 IMAGE ID            CREATED              SIZE
test                latest                                  About a minute ago   1.19GB
```

## Customization

You can lookup valid linux timezones [here](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones).  Ubuntu country mirrors are described [here](https://wiki.ubuntu.com/Mirrors#Country_mirror_requirements).

### Example: Default
```
ARG REPO="archive"
ENV TZ="America/New_York"
```

### Example: Hong Kong
```
ARG REPO="hk.archive"
ENV TZ="Asia/Hong_Kong"
```
