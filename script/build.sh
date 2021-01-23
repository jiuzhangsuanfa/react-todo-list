#!/bin/bash
react-scripts build

if [ "$TARGET" = "DEMO" ];
then
  cd build
  sed -i "s/$PUBLIC_URL\//BASE_HREF/" index.html
  sed -i "s/$PUBLIC_URL\///g" index.html
  sed -i "s/BASE_HREF/\/$PUBLIC_URL\//g" index.html
fi
