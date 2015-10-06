#! 

myPath="/data/jixin/tianchi/eval_image"
myBasePath="/data/jixin/tianchi"

fileNum=`ls $myPath/ -l |grep "^-"|wc -l`
if [ $# -eq 0 ]; then
	n=$[$fileNum/10+1]
else
	n=$[$fileNum/$1+1]
fi
echo "batch size is $n"

i=0
group=0
echo "group=$group"
#stop=2
for file in `ls $myPath/`
do
        if [ $i != $n ]; then
		mySavePath="/data/jixin/tianchi/train/batch_$group"
		if [ ! -d "$mySavePath" ]; then
			mkdir "$mySavePath"
		fi
                echo "i=$i"
                echo "cp $myPath/$file $mySavePath/"
                cp $myPath/$file $mySavePath/
        else
		((group++))
		i=$[$i%$n]
		echo "group=$group"
		#if [ $group = $stop ]; then
		#	break
		#fi
        fi
        ((i++))

done

echo "partition done."
echo "total group=$group"
