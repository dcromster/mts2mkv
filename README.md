mts2mkv
=======

Script for convert MTS or M2TS to MKV.

# Dependencies:
ffmpeg 2.8.5 or more. Download static 64bit build of ffmpeg 2.8.5 [here](http://johnvansickle.com/ffmpeg/releases/ffmpeg-release-64bit-static.tar.xz)

#Contact
Contact me: dcromster@gmail.com

#Using
1. Place mts2mkv.sh and ffmpeg v 2.8.5 along with the files to convert.
2. Run mts2mkv.sh
3. Wait...
4. See the result: all files will be ready with the extension mkv

If you want to merge some 'mkv' files use command like this: mkvmerge -o ./out.mkv ./1.mkv +./2.mkv +./3.mkv +./4.mkv
For scale video to 1280x800 add option "-vf scale=1280:800"
For merge some files: ./ffmpeg -f concat -i <(for f in "/path_to_mkv_files/*.mkv"; do echo "file '$f'"; done) -c copy "./out.mkv"\

## History
* 1.3 - 30 Jan 2016
	Fix for filenames with spaces
	Use ffmpeg v2.8.5 
* 1.2 080314 - added '-threads 0' for using all CPU cores

## Licensing
GPL v3

[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/dcromster/mts2mkv/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

