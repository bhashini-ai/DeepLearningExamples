DATASET_NAME=kn_nplt_sg_fastpitch
FASTPITCH_CHECKPOINT_NUMBER=2910
SYMBOL_SET=kannada
NUM_SPEAKERS=3

FASTPITCH="output/${DATASET_NAME}/FastPitch_checkpoint_${FASTPITCH_CHECKPOINT_NUMBER}.pt"
TORCHSCRIPT="output/torchscript/${DATASET_NAME}_FastPitch_${FASTPITCH_CHECKPOINT_NUMBER}.pt"

python export_torchscript.py --generator-name "FastPitch" --generator-checkpoint ${FASTPITCH} --output ${TORCHSCRIPT} --symbol-set $SYMBOL_SET --n-speakers $NUM_SPEAKERS --energy-conditioning
