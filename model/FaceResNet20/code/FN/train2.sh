#!/bin/bash
# Usage:
# ./code/train.sh GPU
#
# Example:
# ./code/train.sh 0,1,2,3
GPU_ID=$1
$CAFFE_HOME/build/tools/caffe train -solver code/FN/FaceResNet20_ms_step2_2_solver.prototxt -weights result/FN/FaceResNet20_ms_step1_iter_30000.caffemodel -gpu ${GPU_ID}
$CAFFE_HOME/build/tools/caffe train -solver code/FN/FaceResNet20_ms_step3_2_solver.prototxt -weights result/FN/FaceResNet20_ms_step2_2_iter_50000.caffemodel -gpu ${GPU_ID}
