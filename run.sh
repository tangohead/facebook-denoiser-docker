#!/bin/bash

INPUT_DIR=./data/input/test/
OUTPUT_DIR=./data/output/

docker run -v $INPUT_DIR:/data/input/ -v $OUTPUT_DIR:/data/output/ --shm-size 8G denoiser:0.1 