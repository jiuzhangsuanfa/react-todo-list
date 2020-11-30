#!/bin/bash
# react-scripts build
if [ "$TARGET" = "DEMO" ];
then
  export PUBLIC_URL=$npm_package_name
fi

react-scripts build

if [ "$TARGET" = "DEMO" ];
then
  cd build
  sed -i "s/$npm_package_name\//BASE_HREF/" index.html
  sed -i "s/$npm_package_name\///g" index.html
  sed -i "s/BASE_HREF/\/$npm_package_name\//g" index.html
fi
