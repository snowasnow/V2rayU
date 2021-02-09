#!/bin/sh

#  install.sh
#  V2rayU
#
#  Created by yanue on 2021/01/30.
#  Copyright © 2021 yanue. All rights reserved.

# remove old file
rm -fr ~/.V2rayU/v2ray-core
rm -fr ~/.V2rayU/pac

# mkdir
mkdir -p ~/.V2rayU/
mkdir -p ~/.V2rayU/pac
mkdir -p ~/.V2rayU/v2ray-core
mkdir -p ~/.V2rayU/config

# copy
\cp -rv ./V2rayUHelper  ~/.V2rayU/
\cp -rf ./V2rayUTool  ~/.V2rayU/
\cp -rv ./cmd.sh  ~/.V2rayU/
\cp -rf ./pac  ~/.V2rayU/
\cp -rf ./unzip.sh  ~/.V2rayU/
\cp -rf ./v2ray-core  ~/.V2rayU/

# permission
chmod -R 755 ~/.V2rayU/

# root permission
cd  ~/.V2rayU/
cmd="./unzip.sh"
sudo chown root:admin ${cmd}
sudo chmod a+rx ${cmd}
sudo chmod +s ${cmd}

cmd="./V2rayUTool"
sudo chown root:admin ${cmd}
sudo chmod a+rx ${cmd}
sudo chmod +s ${cmd}

cmd="./V2rayUHelper"
sudo chown root:admin ${cmd}
sudo chmod a+rx ${cmd}
sudo chmod +s ${cmd}

echo 'done'

