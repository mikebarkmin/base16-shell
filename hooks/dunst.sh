#!/usr/bin/env bash
dunst_config_dir=$HOME/.config/dunst
dunst_themes_dir=$HOME/.config/base16-dunst/themes

if [ -f $dunst_themes_dir/base16-$BASE16_THEME.dunstrc ]; then
  cat $dunst_config_dir/dunstrc.base $dunst_themes_dir/base16-$BASE16_THEME.dunstrc > $dunst_config_dir/dunstrc
  killall /usr/bin/dunst
  echo 'dunst theme updated'
fi
