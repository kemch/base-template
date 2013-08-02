## update mediaelement
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )" && echo $DIR

cd src

## Updates a repo if it exists, clones it if it doesn't.
function updateRepo() {
	if [ -d "$1" ]; then
  	echo $1 && cd $1 && git pull &&  cd ..
	else
		git clone $2 $1
	fi
}

updateRepo flexslider https://github.com/woothemes/FlexSlider.git
updateRepo mediaelement https://github.com/johndyer/mediaelement.git
updateRepo isotope https://github.com/desandro/isotope.git
updateRepo breakpoint.js https://github.com/xoxco/breakpoints.git
updateRepo respond.js https://github.com/scottjehl/Respond.git
updateRepo BigVideo https://github.com/dfcb/BigVideo.js.git
updateRepo skrollr https://github.com/Prinzhorn/skrollr.git
updateRepo skrollr-menu https://github.com/Prinzhorn/skrollr-menu
updateRepo skrollr-ie https://github.com/Prinzhorn/skrollr-ie.git
updateRepo skrollr-stylesheets https://github.com/Prinzhorn/skrollr-stylesheets.git
updateRepo instafeed.js https://github.com/stevenschobert/instafeed.js.git

cd ..
