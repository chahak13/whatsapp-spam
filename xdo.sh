pids=$(xdotool search --class "firefox")
X=292
Y=242
for pid in $pids; do
    name=$(xdotool getwindowname $pid)
    if [[ $name == *"WhatsApp"* ]]; then
	    xdotool windowactivate $pid
	    xdotool mousemove $X $Y
	    xdotool click 1
	    #eval $(xdotool getmouselocation --shell)
	    #xdotool mousemove --sync $X $Y click 1
	    xdotool type "Bakar"
	    sleep 2
	    xdotool key  "Return"
	    sleep 2
	    xdotool type "xdotool works. Thanks, Akshar and Hemil. (Sent this message using that)"
	    xdotool key "Return"
    fi
done
