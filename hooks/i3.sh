#!/usr/bin/env bash
i3_config_dir=$HOME/.config/i3
i3_themes_dir=$HOME/.config/base16-i3/colors

if [ -f $i3_themes_dir/base16-$BASE16_THEME.config ]; then
  cat $i3_themes_dir/base16-$BASE16_THEME.config $i3_config_dir/config.host $i3_config_dir/config.base > $i3_config_dir/config
  i3-msg restart
  echo 'i3 theme updated'
fi
