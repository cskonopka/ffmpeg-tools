#!/bin/bash

# edgedetect="low=0.1:high=0.4"

ffmpeg -i test.mp4 -filter_complex erosion="threshold0=399:threshold1=100:threshold2=19201:threshold3=52222:coordinates=25" output-erosion.mp4