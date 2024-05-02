DATASET_NAME=kn_nplt_sg_hifigan
HIFIGAN_CHECKPOINT_NUMBER=4825

HIFIGAN_MODEL="output/${DATASET_NAME}/g_0${HIFIGAN_CHECKPOINT_NUMBER}000.pt"
TORCHSCRIPT_MODEL="output/torchscript/${DATASET_NAME}_HiFiGAN_${HIFIGAN_CHECKPOINT_NUMBER}.pt"

python export.py model_name "HiFi-GAN" input_ckpt ${HIFIGAN_MODEL} output_ckpt ${TORCHSCRIPT_MODEL} --cuda --load-from "pyt" --convert-to "ts"
