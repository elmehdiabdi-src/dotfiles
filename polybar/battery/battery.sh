#!/bin/bash

# Function to get battery status
get_battery_status() {
    # Using upower to get battery info (you can also use acpi)
    battery_status=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0)
    percent=$(echo "$battery_status" | grep -i percentage | awk '{print $2}' | tr -d '%')
    plugged=$(echo "$battery_status" | grep -i state | awk '{print $2}')
}

# Battery icon sets (charged and charging states)
charged_icons=(
    "100% 󰁹 100%"
    "90% 󰂂 90%"
    "80% 󰂁 80%"
    "70% 󰂀 70%"
    "60% 󰁿 60%"
    "50% 󰁾 50%"
    "40% 󰁽 40%"
    "30% 󰁼 30%"
    "20% 󰂃 20%"
    "10% 󰂃 10%"
    "0% 󰂃 0%"
)

charging_icons=(
    "100% 󰂋 100%"
    "90% 󰂋 90%"
    "80% 󰂊 80%"
    "70% 󰢞 70%"
    "60% 󰂉 60%"
    "50% 󰢝 50%"
    "40% 󰂈 40%"
    "30% 󰂇 30%"
    "20% 󰂆 20%"
    "10% 󰢜 10%"
    "0% 󰢜 0%"
)

# Round the percentage value to an integer
round_percentage() {
    # Round the number to the nearest integer
    printf "%.0f" "$1"
}

# Main function
display_battery_status() {
    get_battery_status

    # Round the percentage value before using it
    percent=$(round_percentage "$percent")

    if [[ "$plugged" == "charging" ]]; then

        # Display charging icon with percentage
        for icon in "${charging_icons[@]}"; do
            icon_percent=$(echo "$icon" | awk '{print $1}' | tr -d '%')
            icon_symbol=$(echo "$icon" | awk '{print $2}')
            if [[ "$percent" -ge "$icon_percent" ]]; then
                echo "$icon_symbol $percent%"
                break
            fi
        done
    else
        # Display charged icon with percentage
        for icon in "${charged_icons[@]}"; do
            icon_percent=$(echo "$icon" | awk '{print $1}' | tr -d '%')
            icon_symbol=$(echo "$icon" | awk '{print $2}')
            if [[ "$percent" -ge "$icon_percent" ]]; then
                echo "$icon_symbol $percent%"
                break
            fi
        done
    fi
}

display_battery_status
