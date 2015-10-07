if [ $# -lt 2 ]; then
	echo "Usage: make_tianchi_mean.sh lmdbfilename meanfilename"
	echo "  e.g., make_tianchi_mean.sh train_lmdb train_mean.binaryproto"
	echo "------------------------------------------------------------------"
	echo "  lmdb file should be placed in folder /data/jixin/tianchi/"
	echo "  mean file will be generated in folder data/tianchi/"
	exit
fi

#EXAMPLE=examples/tianchi
EXAMPLE=/data/jixin/tianchi
DATA=data/tianchi
TOOLS=build/tools

$TOOLS/compute_image_mean $EXAMPLE/$1 $DATA/$2

echo "done."
