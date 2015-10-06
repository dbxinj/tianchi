EXAMPLE=examples/tianchi
DATA=data/tianchi
TOOLS=build/tools

$TOOLS/compute_image_mean $EXAMPLE/tianchi_train_lmdb $DATA/tianchi_mean.binaryproto

echo "done."
