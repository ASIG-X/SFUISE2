#!/bin/bash

src_data_path=/path/to/util_dataset/flight-dataset/rosbag-data/
dst_data_path=/path/to/destination/

rm -rf ${dst_data_path}
mkdir ${dst_data_path}

for constellation in ${src_data_path}*; do
	const_name=$(basename -- "$constellation")
	cd ${dst_data_path}
	mkdir ${const_name}
	cd ${const_name}
	for file in ${constellation}/*; do
		bag_name=$(basename -- "$file")
		sequence="${bag_name::-4}"
		echo "Converting ROS bag for ${sequence} !"
		rosbags-convert --src ${file} --dst ${dst_data_path}${const_name}/${sequence}/
	done

done

