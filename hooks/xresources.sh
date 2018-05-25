#!/usr/bin/env bash
xresources_config_dir=$HOME
xresources_themes_dir=$HOME/.config/base16-xresources/xresources

if [ -f $xresources_themes_dir/base16-$BASE16_THEME-256.Xresources ]; then
  cat $xresources_config_dir/.Xresources.base $xresources_themes_dir/base16-$BASE16_THEME-256.Xresources > $xresources_config_dir/.Xresources
  xrdb -load $xresources_config_dir/.Xresources
  echo 'xresources theme updated'
fi
