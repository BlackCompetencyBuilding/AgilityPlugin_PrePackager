cd C:\ap-packager-1.5-stable\ap-packager-1.5\

python ./ap-pkgr configure -o add --env <Sandbox_Name> --ip <Sandbox_IP> -u <Username>

python C:\ap-packager-1.5-stable\ap-packager-1.5\ap-pkgr list -s <Sandbox_Name> -t Stack --output Stack.json --name "<StackName>"

python C:\ap-packager-1.5-stable\ap-packager-1.5\ap-pkgr export -s <Sandbox_Name> --input Stack.json --dir Stack_export

python C:\ap-packager-1.5-stable\ap-packager-1.5\ap-pkgr configure -o add --env <New_server_Name> --ip <New_server_IP> -u <Username>

python C:\ap-packager-1.5-stable\ap-packager-1.5\ap-pkgr import -d <New_server_Name> --dir Stack_export --name "<StackName>"

rd /s /q "C:\ap-packager-1.5-stable\ap-packager-1.5\Stack_export\asset\stack"