GEN_DIR=./gen
PROTO_DIR=./proto


go-dependency:
	go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.28
	go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.2

python-dependency:
	pip install grpcio
	pip install grpcio-tools

dependency: python-dependency go-dependency

go-rpc:
	protoc -I . --proto_path=. --go_out=${GEN_DIR}/go/. --go_opt=paths=source_relative --go-grpc_out=${GEN_DIR}/go/. --go-grpc_opt=paths=source_relative ${PROTO_DIR}/*.proto

python-rpc:
	python -m grpc_tools.protoc -I . --python_out=${GEN_DIR}/python --grpc_python_out=${GEN_DIR}/python --pyi_out=${GEN_DIR}/python ${PROTO_DIR}/*.proto

rpc: go-rpc python-rpc