cd C:\ap-packager-1.5-stable\ap-packager-1.5\

python ./ap-pkgr configure -o add --env <Sandbox_Name> --ip <Sandbox_IP> -u <Username>

python C:\ap-packager-1.5-stable\ap-packager-1.5\ap-pkgr list -s <Sandbox_Name> -t Package --output Package.json --name "<PackageName>"

python C:\ap-packager-1.5-stable\ap-packager-1.5\ap-pkgr export -s <Sandbox_Name> --input Package.json --dir Package_export

python C:\ap-packager-1.5-stable\ap-packager-1.5\ap-pkgr configure -o add --env <New_server_Name> --ip <New_server_IP> -u <Username>

python C:\ap-packager-1.5-stable\ap-packager-1.5\ap-pkgr import -d <New_server_Name> --dir Package_export --name "<PackageName>"

rd /s /q "C:\ap-packager-1.5-stable\ap-packager-1.5\Package_export\asset\package"