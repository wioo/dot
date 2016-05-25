#########################################
#					#
#		SETTINGS		#
#					#
#########################################


########
# Xrdb #
########
#
xrdb -merge ~/.Xresources

#########################
# Set X keyboard layout #
#########################
#
setxkbmap si

##########################
# Set Wallpaper with Feh #
##########################
#
sh ~/.fehbg &
#~/Downloads/pictures/garfi/garfi.sh &

#################################
# Dunst OSD notification-daemon #
#################################
#
dunst &

############################################
# Bluetooth SytemTray (blueman-systemtray) #
############################################
#
blueman-applet 2&>1 /dev/null &

#######################################
# NetworkManager Applet (system tray) #
#######################################
#
~/.config/start-nm-applet-with-xinitrc.sh

#########################
# PulseAudio SystemTray #
#########################
#
pasystray 2&>1 /dev/null &






#################################
#				#
#	WINDOW MANAGERS (WM)	#
#				#
#################################

###########
# Awesome #
###########
#
#exec awesome

###########
# OpenBox #
###########
#
#exec openbox-session

#######
# DWM #
#######
#
#while true; do
#    # Log stderror to a file 
#    dwm 2> ~/.dwm.log
#    # No error logging
#    #dwm >/dev/null 2>&1
#done

##########
# Xmonad #
##########
#
stalonetray &
xsetroot -cursor_name left_ptr
exec xmonad

######
# i3 #
######
#
#exec i3

