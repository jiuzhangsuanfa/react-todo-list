#!/bin/bash
cd build
tee > ./Dockerfile <<-'EOF'
FROM iinfinity/nginx
COPY ["./", "/app/"]
EOF
docker build -t registry.don.red/$npm_package_name .
docker push registry.don.red/$npm_package_name
