while true; do
     xsetroot -name "$(date +"%I:%M %p - %A %d %Y")"
     sleep 1m
done &

xhost +
exec dwm
