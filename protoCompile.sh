rm -rf ./out
mkdir ./out
mkdir ./out/cpp
mkdir ./out/objc
mkdir ./out/go_hello
mkdir ./out/objcgrpc

protoc -I=./source --cpp_out=./out/cpp --go_out=paths=source_relative:./out/go_hello --go-grpc_out=paths=source_relative:./out/go_hello --objc_out=./out/objc --objcgrpc_out=./out/objcgrpc ./**/*.proto

