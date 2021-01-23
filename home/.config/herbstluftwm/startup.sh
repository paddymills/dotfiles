
# background
~/.fehbg

# polybar
~/.config/polybar/launch.sh

# load X resources
if [[ -f $HOME/.Xresources ]]; then
    xrdb -load $HOME/.Xresources;
fi
