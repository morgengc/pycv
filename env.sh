#################################################
#  一键激活或者关闭conda环境
#  用法：source env.sh
#  gaochao.morgen@gmail.com
#  2017/11/09
#################################################

#!/bin/bash

# 根据需要修改环境名称
MY_CONDA_ENV=pycv

ACTIVE_STATUS=`set | grep "CONDA_DEFAULT_ENV=$MY_CONDA_ENV"`
if [ "$ACTIVE_STATUS"g = ""g ];
then
	source activate $MY_CONDA_ENV
else
	source deactivate
fi

# source会导致ACTIVE_STATUS变量设置到Shell中，所以最后还需要清空
ACTIVE_STATUS=

