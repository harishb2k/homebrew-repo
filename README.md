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
Parent Project => https://github.com/harishb2k/rocksdb-cloud.git (Tag 0.0.1)
```
brew install harishb2k/repo/rocksdb-cloud-s3
```

### Some additional library which may be required to build 
You mau have to brew install following:
 -> Not everything may be required for indisual builds. If you get an issue please report an issue. I will update the formula to add those dependencies.

```
brew install snappy bz2 z dl curl crypto zstd lz4 jemalloc libbz2-dev zlib laveldb glog gflags zlib1g-dev libleveldb-dev
```
