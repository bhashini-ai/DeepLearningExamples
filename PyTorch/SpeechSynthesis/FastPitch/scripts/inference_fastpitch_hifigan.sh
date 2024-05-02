FASTPITCH=pretrained_models/kn_nplt_fastpitch/FastPitch_checkpoint_2500.pt
HIFIGAN=pretrained_models/kn_nplt_hifigan/g_01110000
HIFIGAN_CONFIG=pretrained_models/kn_nplt_hifigan/config.json
SYMBOL_SET=kannada
NUM_SPEAKERS=2
FILELIST=phrases/kan.tsv
TORCHSCRIPT=false
PHONE=false
OUTPUT_PREFIX=kn_nplt
for (( SPEAKER=0; SPEAKER<${NUM_SPEAKERS}; SPEAKER++ ))
do
	OUTPUT_DIR=output/${OUTPUT_PREFIX}_${SPEAKER}
	. ./scripts/inference_example.sh --hifigan-config $HIFIGAN_CONFIG
done

