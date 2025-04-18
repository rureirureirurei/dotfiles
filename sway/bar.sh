#!/bin/bash

# Battery
sys_path=/sys/class/power_supply/macsmc-battery
current_battery=$(cat $sys_path/energy_now)
full_battery=$(cat $sys_path/energy_full)
bat=$(( 100 * current_battery / full_battery ))

# Date
date=$( date +'%Y-%m-%d %H:%M')

echo "BAT $bat | $date "

