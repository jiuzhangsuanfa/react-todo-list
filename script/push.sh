#!/bin/bash
if [ ! -n "$registry" ]; then
  registry='docker.io'
fi

cd build
tee >./Dockerfile <<-'EOF'
FROM iinfinity/nginx
COPY ["./", "/app/"]
EOF

docker build -t $registry/$PUBLIC_URL .
docker push $registry/$PUBLIC_URL
