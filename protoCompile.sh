rm -rf ./out
mkdir ./out
mkdir ./out/cpp
mkdir ./out/objc
mkdir ./out/go
mkdir ./out/objcgrpc

protoc -I=./source --cpp_out=./out/cpp --go_out=paths=source_relative:./out/go --go-grpc_out=paths=source_relative:./out/go --objc_out=./out/objc --objcgrpc_out=./out/objcgrpc ./**/*.proto

