myPath="examples/_temp"
if [ ! -d "$myPath" ];
then
	mkdir "$myPath"
fi

#find /data/jixin/tianchi/resized_10k -type f -exec echo {} \; > $myPath/temp.txt
#sed "s/$/ 0/" $myPath/temp.txt > $myPath/file_list.txt
./build/tools/extract_features.bin models/bvlc_reference_caffenet/bvlc_reference_caffenet.caffemodel examples/_temp/tianchi_val.prototxt fc7 examples/_temp/features_tc 10 lmdb
