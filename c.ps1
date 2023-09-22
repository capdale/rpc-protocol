$proto_dir = "./proto"
$gen_dir = "./gen"

# Go
protoc -I . --proto_path=. --go_out=$gen_dir/go/. --go_opt=paths=source_relative --go-grpc_out=$gen_dir/go/. --go-grpc_opt=paths=source_relative $proto_dir/*.proto

# Python
python -m grpc_tools.protoc -I . --python_out=$gen_dir/python --grpc_python_out=$gen_dir/python --pyi_out=$gen_dir/python $proto_dir/*.proto