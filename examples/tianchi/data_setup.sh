if [ $# -lt 3 ]; then
	echo "Usage: data_setup.sh [train|extract_feature]  srcdir_path dst_filename.txt"
        echo "  e.g., data_setup.sh train data/tianchi/train/ train.txt"
        echo "----------------------------------------------------------------"
        echo "  srcdir_path is the directory path that contains imagefiles"
        echo "  data list of (image filename, label) will be stored "
        echo "  in data/tianchi/dst_filename.txt"
        exit
fi

myPath=data/tianchi
if [ ! -d "$myPath" ];
then
	mkdir "$myPath"
fi

if [ $1 == "train" ]; then
	ls $2 > $myPath/temp.txt
elif [ $1 == "extract_feature" ]; then
	find $2 -type f -exec echo {} \; > $myPath/temp.txt
else
	echo "para1 [train|extract_feature] are not defined"
	exit
fi

sed "s/$/ 0/" $myPath/temp.txt > $myPath/$3
