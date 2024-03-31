#!/bin/bash

ffmpeg -i test.mp4 -filter_complex fftfilt="dc_Y=128:weight_Y='squish(1-(Y+X)/100)' " output-fftfilt.mp4