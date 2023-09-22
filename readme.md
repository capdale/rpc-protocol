# RPC collections
Collection of RPC protocol (Remote Procedure Call)  

### Image
[/image](./image/)  
#### description
Image Classify request - reply protocol  

## Protoc
Go
```powershell
protoc --go_out=. --go_opt=paths=source_relative --go-grpc_out=. --go-grpc_opt=paths=source_relative proto/image.proto
```
