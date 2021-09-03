rm -rf ./out
mkdir ./out
mkdir ./out/cpp
mkdir ./out/objc
mkdir ./out/go

protoc -I=./source --cpp_out=./out/cpp --go_out=./out/go --objc_out=./out/objc ./**/*.proto

