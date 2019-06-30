#!/bin/bash
#start時にgoするやつ

# Jetson cloks status
sudo jetson_clocks --show

# Max cloks
sudo jetson_clocks

# Jetson cloks status
sudo jetson_clocks --show

#jetson_clocksを実行した後に nvpmodelを実行すると jetson_clocksの「最高速」が解除されます

# Coolng fan status
cat /sys/devices/pwm-fan/target_pwm

# Start cooling fan
echo 150 | sudo tee /sys/devices/pwm-fan/target_pwm

# Coolng fan status
cat /sys/devices/pwm-fan/target_pwm

# CPU temperature
cat /sys/devices/virtual/thermal/thermal_zone*/temp
