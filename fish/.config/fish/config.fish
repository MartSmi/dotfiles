if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting
    export EDITOR=neovide

    alias r=ranger
    alias l=la
    alias mk=mkdir
    alias t='swaync-client --dnd-on && termdown -s $argv && swaync-client --dnd-off && notify-send "break"'
    alias nst='termdown -s $argv && notify-send "break"'
    alias yay='yay --noconfirm'
    alias g='ping google.com'

end

function v
    neovide $argv & disown
end
