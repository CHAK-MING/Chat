#########################################################################
# File Name: autobuild.sh
# Author: CHAKMING
# mail: 1766069334@qq.com
# Created Time: 2023年03月01日 星期日 12时15分28秒
#########################################################################
#!/bin/bash

set -x

rm -rf `pwd`/build/*
cd `pwd`/build &&
	cmake .. &&
	make