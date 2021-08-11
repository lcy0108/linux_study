#!/bin/bash
ls -l /etc >/dev/null
filename=`date +%F%M%S`
if [ $? -eq 0 ];then
	tar -cvf /opt/backup/$filename.tar /etc/ &>/dev/null   ##打包
	##判定打包结果							
	if [ $? -eq 0 ];then
		echo "打包完成，文件为/opt/backup/$filename.tar"
	else
		echo "打包出错"
	fi
	##保留最新4份
	cout=`ls /opt/backup/ |wc -l`
	if [ $cout -gt 4 ];then
	rmfile=`ls /opt/backup/ |sort -n|head -1`
	ls /opt/backup/ |sort -n|head -1|xargs rm -f
	##输出删除结果	
		if [ $? -eq 0 ];then
		echo "已删除$rmfile"
		else 
		echo "删除失败"
		fi
	fi
else
	echo "目录不纯在"
fi
