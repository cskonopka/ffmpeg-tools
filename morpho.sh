#!/bin/bash

# edgedetect="low=0.1:high=0.4"

ffmpeg -i test.mp4 -filter_complex morpho="mode=erode:planes=filtered:structure=all" output-morpho.mp4