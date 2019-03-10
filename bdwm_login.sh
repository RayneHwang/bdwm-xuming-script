#! /bin/bash

U=<USERNAME>
P=<PASSWORD>

t=$(echo -n "${P}${U}${P}" | tr '[[:upper:]]' '[[:lower:]]' | md5sum | awk '{print $1}')

curl -s 'https://bbs.pku.edu.cn/v2/ajax/login.php' \
  -H 'Origin: https://bbs.pku.edu.cn' \
  -H 'Accept-Language: zh-CN,zh;q=0.9,en;q=0.8,zh-TW;q=0.7' \
  -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36' \
  -H 'Content-Type: application/x-www-form-urlencoded; charset=UTF-8' \
  -H 'Accept: application/json, text/javascript, */*; q=0.01' \
  -H 'X-Requested-With: XMLHttpRequest' \
  --data "username=${U}&password=${P}&keepalive=0&t=${t}"

