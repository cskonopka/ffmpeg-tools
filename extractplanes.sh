#!/bin/bash

ffmpeg -i test.mp4 -filter_complex 'extractplanes=y+u+v[y][u][v]' -map '[y]' y.mp4 -map '[u]' u.mp4 -map '[v]' v.mp4