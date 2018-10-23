###############################################################################
# Terminal & iTerm 2                                                          #
###############################################################################

# Install the DotGov theme for iTerm
open "iterm/themes/DotGov.itermcolors"

# Don’t display the annoying prompt when quitting iTerm
defaults write com.googlecode.iterm2 PromptOnQuit -bool false

# Install font
FONT_NAME="Roboto Mono for Powerline.ttf"
FONT_PATH="iterm/$FONT_NAME"
if [ ! -f ~/Library/Fonts/$FONT_NAME ]; then
  wget "https://github.com/powerline/fonts/blob/master/RobotoMono/Roboto%20Mono%20for%20Powerline.ttf?raw=true" -O "$FONT_PATH"
  cp "$FONT_PATH" ~/Library/Fonts/
  rm "$FONT_PATH"
fi
unset FONT_PATH
unset FONT_NAME
