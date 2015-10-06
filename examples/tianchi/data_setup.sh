myPath="examples/_temp"
if [ ! -d "$myPath" ];
then
	mkdir "$myPath"
fi

find /data/jixin/tianchi/resized_10k -type f -exec echo {} \; > $myPath/temp.txt
sed "s/$/ 0/" $myPath/temp.txt > $myPath/file_list.txt
