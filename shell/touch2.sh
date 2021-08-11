#!/bin/bash
read -p "输入你要创建的文件名：" name
echo "$name" |grep -v "[a-zA-Z]" &>/dev/null && echo "$name" |grep -v "[0-9]" &>/dev/null
if [ $? -eq 0 ]
  then
  echo "$name 不符合名称规则，无法创建"

else
  touch /root/$name
  ##file /root/$name |awk '{$1="";print}'
  echo 文件创建成功，文件类型为：`file /root/$name |awk '{$1="";print}'`
fi
