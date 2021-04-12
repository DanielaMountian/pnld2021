#!/bin/bash
for url in $(cat links.txt) 
do 
  if curl --output /dev/null --silent --head --fail "$url"; then
    echo "URL exists: $url"
  else
    echo "URL does not exist: $url"
    echo "URL does not exist: $url" >> checklinks_logs.txt
  fi 
done