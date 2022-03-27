bright="$(cat /sys/class/backlight/amdgpu_bl0/brightness)"

if [ $bright -gt 21 ]
then
	sudo echo "15" > /sys/class/backlight/amdgpu_bl0/brightness
fi
