while true; do
     xsetroot -name "$(ip route get 1.2.3.4 | awk '{print $7}') | $(date +"%I:%M %p - %B, %A %d %Y")"
     sleep 1m
done &

xhost +
exec dwm
