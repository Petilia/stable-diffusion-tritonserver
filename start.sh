#!/bin/bash

docker run --gpus device=0 \
           --ipc=host \
           --ulimit memlock=-1 \
           --ulimit stack=67108864 \
           -v $(pwd)/engine:/workspace/TensorRT/demo/Diffusion/engine \
           -v $(pwd)/onnx:/workspace/TensorRT/demo/Diffusion/onnx \
           -v $(pwd)/output:/workspace/TensorRT/demo/Diffusion/output \
           -it --rm sd_trt