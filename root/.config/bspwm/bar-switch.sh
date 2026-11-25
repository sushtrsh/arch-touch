#!/bin/sh
# Quick bar preset switcher for bspwm + polybar.
. "$HOME/.config/bspwm/lib.sh"

choice=$(printf '%s\n' \
  "📱  Phone Launcher (Grid + Top Bar)" \
  "📱  Portrait (Top + Compact Dock)" \
  "📱  Portrait Minimal (Top Bar Only)" \
  "🖥   Dual (Top + Full Dock)" \
  "💊  Pill Floating (Top + Dock)" \
  "▫   Minimal Floating (Top + Dock)" \
  "⬆   Top Bar Only" \
  "⬇   Dock Only" \
  "▬   Attached Dual (Edge-to-edge)" \
  "👁   Hide All Bars" \
  | rofi -dmenu -i -p "Bar Preset" -theme "$HOME/.config/rofi/settings.rasi")

[ -z "$choice" ] && exit 0

case "$choice" in
  *"Phone Launcher"*)
    cfg_set BAR_TOP on
    cfg_set BAR_DOCK off
    cfg_set TOP_LAYOUT phone
    cfg_set BAR_STYLE floating
    bspc desktop -l monocle >/dev/null 2>&1
    ;;
  *"Portrait (Top"*)
    cfg_set BAR_TOP on
    cfg_set BAR_DOCK on
    cfg_set DOCK portrait
    cfg_set BAR_STYLE floating
    ;;
  *"Portrait Minimal"*)
    cfg_set BAR_TOP on
    cfg_set BAR_DOCK off
    cfg_set DOCK portrait
    cfg_set BAR_STYLE floating
    ;;
  *Dual*Full*)
    cfg_set BAR_TOP on
    cfg_set BAR_DOCK on
    cfg_set DOCK full
    cfg_set BAR_STYLE floating
    ;;
  *"Pill Floating"*)
    cfg_set BAR_TOP on
    cfg_set BAR_DOCK on
    cfg_set DOCK auto
    cfg_set BAR_STYLE pill
    ;;
  *"Minimal Floating"*)
    cfg_set BAR_TOP on
    cfg_set BAR_DOCK on
    cfg_set DOCK auto
    cfg_set BAR_STYLE minimal
    ;;
  *"Top Bar Only"*)
    cfg_set BAR_TOP on
    cfg_set BAR_DOCK off
    ;;
  *"Dock Only"*)
    cfg_set BAR_TOP off
    cfg_set BAR_DOCK on
    ;;
  *Attached*)
    cfg_set BAR_TOP on
    cfg_set BAR_DOCK on
    cfg_set BAR_STYLE attached
    ;;
  *"Hide All"*)
    cfg_set BAR_TOP off
    cfg_set BAR_DOCK off
    ;;
esac

"$HOME/.config/bspwm/apply.sh" >/dev/null 2>&1
"$HOME/.config/polybar/launch.sh" >/dev/null 2>&1 &
