#!/bin/sh

set -e

export VENDOR=pantech
export DEVICE=ef63s
./../../pantech/msm8974-common/extract-files.sh $@
