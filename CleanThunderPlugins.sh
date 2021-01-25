#!/bin/bash

THUNDER_PATH="/Applications/Thunder.app/Contents/PlugIns"

plugins=(
  activitycenter.xlplugin # 活动中心
  advertising.xlplugin # 广告
  bbassistant.xlplugin # 宽带助手
  featuredpage.xlplugin # 精选
  feedback.xlplugin # 反馈
  iOSThunder.xlplugin # 手雷
  livestream.xlplugin # 直播
  onethingcloud.xlplugin # 云
  softmanager.xlplugin # 应用卸载
  viptips.xlplugin # 会员提示
  webgame.xlplugin # 游戏
)

function trim() {
    if [ -z "$1" ]; then # $1 is unset
        sed -e 's/^ *//' -e 's/ *$//'
    else
        # echo "=== $1 ==="
        sed -e 's/^ *//' -e 's/ *$//' -e "s/^$1//" -e "s/$1$//"
    fi
}

for plugin in ${plugins[*]}; do
  plugin="$THUNDER_PATH/$plugin"
  rm -rf "$plugin" | trim " "
done

echo "Cleaned."
