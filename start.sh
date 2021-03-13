#!/usr/bin/sh
#网站删除检测脚本 by rm -rf /*[3586563103]
#************************************************
#在此输入你虚拟主机的ftp地址和用户名密码
ftp="23.224.53.118"
name="s4947674"
password="ztAM99mhIQ"
#**************************************************
if [ ! -f ./*.web.zip ];then
echo "没有源码！"
exit
else
.
fi
apt install curlftpfs
mkdir work
curlftpfs ftp://$name:$password@$ftp work
cd work
if [ ! -d ./wwwroot/usr ];then
echo "未检测到usr文件夹！正在恢复！"
rm -rf wwwroot
7z x ../*.web.zip -d .
else
echo "已检测到usr文件夹，不进行任何操作。"
fi
#ftp -n $ftp << EOF 
#passive
#user $name $password
#cd /wwwroot
#ls
#bye
#EOF
