# dir-gen-gif.sh
#!/bin/bash

# Provide a directory containing video files 
echo "Provide a directory please :"
read dir

# Filetype target
# echo "Filetype?"
# read filetype

Loop through files in the target directory
for file in "$dir"/*; do
  if [ -f "$file" ]; then
    # echo "$file"
    echo "${file%.*}.mp4"
    # STR=$file
    ffmpeg -i "$file" "${file%.*}.mp4"
  fi
done



# # Iterate over the directory, look for target filetype
# for f in $dir/*.webm
# do
#     echo "Processing $f"
#     vared="$(ffprobe -i $f -show_format -v quiet | sed -n 's/duration=//p')"
#     # Generate .png analysis file
#     echo $vared
#     echo "${f%.*}.webm"
#     # ffmpeg -y -ss 0 -t $vared -i $f -filter_complex "[0:v] palettegen" "${f%.*}.png"
#     # Create .gif file
#     # ffmpeg -ss 0 -t 27 -i $f -filter_complex "[0:v] fps=30,scale=w=1920:h=-1,split [a][b];[a] palettegen=stats_mode=single [p];[b][p] paletteuse=new=1" "${f%.*}.gif"
#     # ffmpeg -ss 0 -t $vared -i $f -filter_complex "[0:v] fps=24,scale=w=480:h=-1,split [a][b];[a] palettegen=stats_mode=single [p];[b][p] paletteuse=new=1" "${f%.*}.gif"
# done



# # Iterate over the directory, look for target filetype
# for f in $dir
# # for f in $dir/*.$filetype
# do
#     echo "Processing $f"
#     vared="$(ffprobe -i $f -show_format -v quiet | sed -n 's/duration=//p')"
#     # Generate .png analysis file
#     echo $vared
#     echo $f

#     # ffmpeg -i input.mp4 output.webm

#     # ffmpeg -y -ss 0 -t $vared -i $f -filter_complex "[0:v] palettegen" "${f%.*}.png"
#     # Create .gif file
#     # ffmpeg -ss 0 -t 27 -i $f -filter_complex "[0:v] fps=30,scale=w=1920:h=-1,split [a][b];[a] palettegen=stats_mode=single [p];[b][p] paletteuse=new=1" "${f%.*}.gif"
#     # ffmpeg -ss 0 -t $vared -i $f -filter_complex "[0:v] fps=24,scale=w=480:h=-1,split [a][b];[a] palettegen=stats_mode=single [p];[b][p] paletteuse=new=1" "${f%.*}.gif"
# done