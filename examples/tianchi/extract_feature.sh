if [ $# -lt 5 ]; then
	echo "Usage: ./extract_feature.sh model_path cnn_path blob_name feature_path batch_size"
	echo "  e.g., ./extract_feature.sh models/caffemodel tianchi/tianchi.prototxt fc7 features 10"
	echo "--------------------------------------------------------------------------------------"
	echo "  model_path should be exact where neral net model locates"
	echo "  cnn_path shoulb be exact where cnn layers proto text locates"
	echo "  feature_path is where you want to save the extracted features"
	echo "  blob_name is layer name defined in proto text"
	echo "  batch_size is used to batch the cnn model"
	exit
fi

#find /data/jixin/tianchi/resized_10k -type f -exec echo {} \; > $myPath/temp.txt
#sed "s/$/ 0/" $myPath/temp.txt > $myPath/file_list.txt
./build/tools/extract_features.bin $1 $2 $3 $4 $5 lmdb
