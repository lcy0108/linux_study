#!/bin/bash
cat<<eof >1.txt
abcadas
123
4gf
user2
user5
eof
for name in `cat /root/test/1.txt`
do id $name &>/dev/null
if [ $? -ne 0  ];then
useradd $name
echo "123456" |passwd --stdin $name &>/dev/null
echo "user $name created"
else
echo "user $name is exist"
fi
done
