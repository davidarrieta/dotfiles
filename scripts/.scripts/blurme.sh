#!/bin/bash

# Error Prevention: Multiple Instances ----------------------------------

if [[ $(pgrep -cl blurme) > 1 ]]; then
    echo 'BLURME: Another instance of blurme me is already running.'
    echo '        Please kill it with fire (pkill blurme) first, then try running me again.'
    exit
fi



# Options ---------------------------------------------------------------

while getopts :a:c:d:t:vh option; do
    case "${option}" in
        a) ADDBLUR=${OPTARG};;
        c) CACHEDIR=${OPTARG};;
        d) WORKINGDIR=${OPTARG};;
        t) TIME=${OPTARG};;
        v) VERBOSE=true;;
        h)
            echo '---------------------------------------'
            echo 'BLURME v1.0 Codename MEH (My Eyes Hurt)'
            echo '---------------------------------------'
            echo "Options:  '-a' adds one additional program, which will start the blur effect (must be process name!)" 1>&2
            echo "          '-c' set custom directory for transition images (default: ~/.cache/blurme)" 1>&2
            echo "          '-d' set custom directory (default: ~/.cache/blurme)" 1>&2
            echo "          '-t' set custom transition time in sec (default: 0.01)" 1>&2
            echo "          '-v' set verbose true" 1>&2
            exit
            ;;
        \?)
            echo 'BLURME: Invalid option! Please use as shown below:' 1>&2
            echo "        '-a' adds one additional program, which will start the blur effect (must be process name!)" 1>&2
            echo "        '-c' set custom directory for transition images (default: ~/.cache/blurme)" 1>&2
            echo "        '-d' set custom directory (default: ~/.cache/blurme)" 1>&2
            echo "        '-t' set custom transition time in sec (default: 0.01)" 1>&2
            echo "        '-v' set verbose true" 1>&2
            exit
            ;;
        :) echo "BLURME: '-$OPTARG' requires an argument" 1>&2; exit;;
    esac
done
shift $((OPTIND-1))

if [ "$VERBOSE" = true ]; then
    echo '---------------------------------------'
    echo 'BLURME v1.0 Codename MEH (My Eyes Hurt)'
    echo '---------------------------------------'
fi



# Variables -------------------------------------------------------------

# Working directory contains a copy of the original unblured image,
# and its path.
if [ -z "$WORKINGDIR" ]; then WORKINGDIR=/home/$USER/.local/share/blurme; fi
if ! [ -d $WORKINGDIR ]; then mkdir $WORKINGDIR; fi
if [ "$VERBOSE" = true ]; then echo 'BLURME: Workingdir is set to '$WORKINGDIR; fi

# Cache directory contains all blurry rendered transition images.
if [ -z "$CACHEDIR" ]; then CACHEDIR=/home/$USER/.cache/blurme; fi
if ! [ -d $CACHEDIR ]; then mkdir $CACHEDIR; fi
if [ "$VERBOSE" = true ]; then echo 'BLURME: Cache (contains transition images) is set to '$CACHEDIR; fi


# Error Prevention: Blurry startup
#
# Check if background is set to not blurred on start.
# If for some reason the script wasn't terminated correctly,
# the background might be still blurry, and the logic will go crazy.
# This only fix only works when the workingdir and its containing
# copy of the original not blurred background still exist
# after reboot (no temp directory!).
if [[ $(tail -n1 ~/.fehbg | cut -d "'" -f6) = "$CACHEDIR/trans-9" ]]; then
    # Reset wallpaper to original one
    feh --bg-fill $(cat "$WORKINGDIR/original-bg")
fi


if [ -z "$TIME" ]; then TIME=0.01; fi
#echo "Transition time is set to: "$TIME

CURRWORKSPACE=$(wmctrl -d | grep '*' | cut -d ' ' -f1)
#echo "Current workspace: $CURRWORKSPACE"

OPENWINDOWS=$(wmctrl -l | cut -d ' ' -f3 | grep $CURRWORKSPACE | wc -l)
#echo "Open windows on workspace$CURRWORKSPACE: $WINDOWS"

CURRWALLPAPER=$(tail -n1 ~/.fehbg | cut -d "'" -f6)
#echo "Wallpaper path: $CURRWALLPAPER"

ORIGINAL=$WORKINGDIR/original-bg
echo $CURRWALLPAPER > $ORIGINAL

COPYBG=$WORKINGDIR/copied-bg
cp $(cat $ORIGINAL) $COPYBG






# Functions -------------------------------------------------------------

function create_images {

    if [ "$VERBOSE" = true ]; then echo 'BLURME: Create transition images ...'; fi

    local i="0"

    while [ $i -lt "10" ]; do
        A=$(echo "($i + 1) * 2.4" | bc -l)
        B=$(echo "($i + 1) * 1.2" | bc -l)
        convert $COPYBG -blur $A,$B $CACHEDIR/trans-$i
        local PERC=$(echo "($i+1) * 10" | bc -l)
        if [ "$VERBOSE" = true ]; then echo 'BLURME: '$PERC'%'; fi
        i=$[$i+1]
    done

    if [ "$VERBOSE" = true ]; then echo 'BLURME: Done!'; fi
}

function transinit {

    local REF=$CACHEDIR/trans-0
    local CMP=/tmp/blurme-trans-0.tmp

    if [ "$VERBOSE" = true ]; then
        echo "BLURME: Huh?! Background is not blurred, let's fix that!"
        echo 'BLURME: Unblurred original wallpaper is '$(cat $ORIGINAL)
    fi

    # is it really necessary to render again
    if [ -f $REF ]; then
        convert $(cat $ORIGINAL) -blur 2.4,1.2 $CMP
        # create new transition images if newly created trans-0 and old trans-0 are not the same
        if ! cmp -s $CMP $REF; then
            if [ "$VERBOSE" = true ]; then echo 'BLURME: Seems like we have a new wallpaper which needs to be rendered.'; fi
            rm $CMP
            create_images
        else
            if [ "$VERBOSE" = true ]; then echo 'BLURME: This background seems familiar. No need to render it again! :)'; fi
            rm $CMP
        fi
    else
        # reference file not found inside existing working dir ... better render them, to get things working
        if [ "$VERBOSE" = true ]; then echo "BLURME: Could'nt find transition images in cachedir. Will create them on the fly."; fi
        create_images
    fi
}

function transition {

    if [ "$VERBOSE" = true ]; then echo 'BLURME: Blur wallpaper ...'; fi

    local j="0"

    while [ $j -lt "10" ]; do
        feh --bg-fill $CACHEDIR/trans-$j
        local PERC=$(echo "($j+1) * 10" | bc -l)
        if [ "$VERBOSE" = true ]; then echo 'BLURME: '$PERC'%'; fi
        j=$[$j+1]
        sleep $TIME
    done
    if [ "$VERBOSE" = true ]; then echo 'BLURME: Done!'; fi
}

function transition_rev {

    if [ "$VERBOSE" = true ]; then echo 'BLURME: Unblur wallpaper ...'; fi

    local j="9"

    while [ $j -ge "0" ]; do
        feh --bg-fill $CACHEDIR/trans-$j
        local PERC=$(echo "($j+1) * 10" | bc -l)
        if [ "$VERBOSE" = true ]; then echo 'BLURME: '$PERC'%'; fi
        j=$[$j-1]
        sleep $TIME
    done

    feh --bg-fill $(cat $ORIGINAL)
    if [ "$VERBOSE" = true ]; then echo 'BLURME: Done!'; fi
}

function finish {
    feh --bg-fill $(cat $ORIGINAL)
    exit
}


# Logic ------------------------------------------------------------------

trap finish EXIT
trap finish SIGHUP
trap finish SIGINT
trap finish SIGKILL
trap finish SIGTERM

transinit

while true; do

    CURRWORKSPACE=$(wmctrl -d | grep '*' | cut -d ' ' -f1)
    OPENWINDOWS=$(wmctrl -l | cut -d ' ' -f3 | grep $CURRWORKSPACE | wc -l)
    CURRWALLPAPER=$(tail -n1 ~/.fehbg | cut -d "'" -f6)

    # is any window or rofi open on current workspace
    if [[ $OPENWINDOWS > 0 ]] || [[ $(pgrep -cl rofi) > 0 ]]  || [[ $(pidof $ADDBLUR) > 0 ]]; then
        # is wallpaper not blurred
        if [ "$CURRWALLPAPER" != "$CACHEDIR/trans-9" ]; then
            # has wallpaper been changed
            if [ "$CURRWALLPAPER" != "$(cat $ORIGINAL)" ]; then
                # save current wallpapers path
                echo $CURRWALLPAPER > $ORIGINAL
                # copy current wallpaper as reference
                cp $(cat $ORIGINAL) $COPYBG
                # create transition images
                transinit
            fi
            # set wallpapers to blur
            transition
        fi
    else
        # no windows or rofi open and wallpaper is not the unblurred original
        if [ "$CURRWALLPAPER" != "$(cat $ORIGINAL)" ]; then
            # unblur and set to original wallpaper
            transition_rev
        fi
    fi

    sleep 0.5
done
