#!/bin/bash

# edgedetect="low=0.1:high=0.4"

ffmpeg -i test.mp4 -filter_complex exposure="exposure=1.0:black=0.3" output-exposure.mp4