Homebrew Repo to install some useful library

### Supported library
###### Install BRPC
Parent Project => https://github.com/apache/incubator-brpc.git (Commit - 5f7e048)
```
brew install harishb2k/repo/incubator-brpc
```

###### Install AWS CPP SDK (S3)
Parent Project => https://github.com/aws/aws-sdk-cpp.git (Tag 1.7.150)
```
brew install harishb2k/repo/aws-sdk-cpp
```

###### Install RocksDB Cloud With S3
Parent Project => https://github.com/harishb2k/rocksdb-cloud.git (Tag 0.0.2)
```
brew install harishb2k/repo/rocksdb-cloud-s3
```

## Using brew in docker build - Ubuntu
Given below is the Dockerfile content if you want to use brew in you docker build:
```
FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install build-essential curl file git ruby-full locales --no-install-recommends -y && \
    rm -rf /var/lib/apt/lists/*

RUN localedef -i en_US -f UTF-8 en_US.UTF-8

RUN useradd -m -s /bin/bash linuxbrew && \
    echo 'linuxbrew ALL=(ALL) NOPASSWD:ALL' >>/etc/sudoers

USER linuxbrew
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"

USER root
ENV PATH="/home/linuxbrew/.linuxbrew/bin:${PATH}"
```
**NOTE**

brew will build and install in "brew --prefix" location:
```
/home/linuxbrew/.linuxbrew/lib
/home/linuxbrew/.linuxbrew/include
```
