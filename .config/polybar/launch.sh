killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
polybar -q left -c /home/ana/.config/polybar/config &
polybar -q middle -c /home/ana/.config/polybar/config &
polybar -q right -c /home/ana/.config/polybar/config
