###############################################################################
# Terminal & iTerm 2                                                          #
###############################################################################

# Install the DotGov theme for iTerm
open "iterm/themes/DotGov.itermcolors"

# Don’t display the annoying prompt when quitting iTerm
defaults write com.googlecode.iterm2 PromptOnQuit -bool false

FONT_NAME="Roboto Mono for Powerline.ttf"

# Install font
wget "https://github.com/powerline/fonts/blob/master/RobotoMono/Roboto%20Mono%20for%20Powerline.ttf?raw=true" -O "$FONT_NAME"
cp iterm/"$FONT_NAME" ~/Library/Fonts/
