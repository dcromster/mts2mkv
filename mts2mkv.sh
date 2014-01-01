#!/bin/bash
# v1-010114

time {
	for i in *.MTS; do 
		ffmpeg -i $i -f matroska -r 25 -vcodec libx264 -coder 0 -g 250 -i_qfactor 0.71 -b_strategy 1 -qcomp 0.6 -qmin 0 -qmax 69 -wpredp 2 -vb 9000k -refs 1 -deinterlace -acodec copy -sn -y ./$i.mkv
		echo "Conversion done";
	done
}
exit;