#!/bin/bash

echo "#fbf0c9"

# # Get the battery status (charging, discharging)
# status=$(cat /sys/class/power_supply/BAT0/status)
# # Get the battery percentage
# percentage=$(cat /sys/class/power_supply/BAT0/capacity)
#
# # Logic to set the foreground color
# if [[ "$status" == "Charging" ]]; then
#     echo "#ffa74e"  # Yellow for charging
# elif [[ "$status" == "Discharging" && "$percentage" -gt 20 ]]; then
#     echo "#ffa74e"  # Green for battery above 20% when discharging
# else
#     echo "#ffa74e"  # Red for battery below 20% when discharging
# fi

