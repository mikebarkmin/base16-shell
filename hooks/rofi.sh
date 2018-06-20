#!/usr/bin/env bash
rofi_config_file=$HOME/.local/share/rofi/themes/base16.rasi
rofi_themes_dir=$HOME/.config/base16-rofi/themes

rofi_theme_file=$rofi_themes_dir/base16-$BASE16_THEME.rasi
if [ -f $rofi_theme_file ]; then
  cat $rofi_theme_file > $rofi_config_file
  echo 'Rofi theme updated'
fi

