#!/bin/bash/
read -p "请输入您的成绩:" cj
if [ $cj -le 100 ] && [ $cj -ge 80 ];then
	echo "您的成绩为优秀"
elif [ $cj -le 79 ] && [ $cj -ge 60 ];then
	echo "您的成绩为良好"
elif [ $cj -lt 60 ] && [ $cj -ge 0 ];then
	echo "您的成绩为不合格"
#else [ $cj -n -a $cj -gt 100 -a $cj -lt 0 ];then
else	echo "输入错误"
fi
