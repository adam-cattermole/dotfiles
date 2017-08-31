# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################
# Apple software: Safari, Updater, iTunes, etc.                               #
###############################################################################

# Check for software updates daily, not just once per week.
defaults write com.assple.SoftwareUpdate ScheduleFrequency -int 1

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false


###############################################################################
# Activity Monitor                                                            #
###############################################################################

# Show all processes in Activity Monitor
defaults write com.apple.ActivityMonitor ShowCategory -int 0

# Sort Activity Monitor results by CPU usage
defaults write com.apple.ActivityMonitor SortColumn -string "CPUUsage"
defaults write com.apple.ActivityMonitor SortDirection -int 0

###############################################################################
# General UI/UIX                                                              #
###############################################################################

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

# Disable automatic capitalization as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Disable smart dashes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Disable automatic period substitution as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

# Disable smart quotes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Require password immediately after sleep or screen saver.
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Save screenshots to desktop and disable the drop-shadow.
defaults write com.apple.screencapture location -string "${HOME}/Desktop/Screenshots"
defaults write com.apple.screencapture type -string "png"
#defaults write com.apple.screencapture disable-shadow -bool true

# Disable and kill Dashboard
# Can be reverted with:
# defaults write com.apple.dashboard mcx-disabled -boolean NO; killall Doc
defaults write com.apple.dashboard mcx-disabled -boolean YES; killall Dock

###############################################################################
# Finder                                                                      #
###############################################################################

# Show the ~/Library folder.
chflags nohidden ~/Library

# Show hidden files and file extensions by default
#defaults write com.apple.finder AppleShowAllFiles -bool true
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Disable the warning before emptying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Always open everything in Finder's column view. This is important.
#   Flwv ▸ Cover Flow View
#   Nlsv ▸ List View
#   clmv ▸ Column View
#   icnv ▸ Icon View
defaults write com.apple.Finder FXPreferredViewStyle clmv

# Hide Safari's bookmark bar.
defaults write com.apple.Safari.plist ShowFavoritesBar -bool false

# Set up Safari for development.
defaults write com.apple.Safari.SandboxBroker ShowDevelopMenu -bool true
defaults write com.apple.Safari.plist IncludeDevelopMenu -bool true
defaults write com.apple.Safari.plist WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari.plist "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true
# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true


# Wait a bit before moving on...
sleep 1

# ...and then.
echo "Success! Defaults are set."
echo "Some changes will not take effect until you reboot your machine."

# See if the user wants to reboot.
# function reboot() {
#   read -p "Do you want to reboot your computer now? (y/N)" choice
#   case "$choice" in
#     y | Yes | yes ) echo "Yes"; exit;; # If y | yes, reboot
#     n | N | No | no) echo "No"; exit;; # If n | no, exit
#     * ) echo "Invalid answer. Enter \"y/yes\" or \"N/no\"" && return;;
#   esac
# }
#
# # Call on the function
# if [[ "Yes" == $(reboot) ]]
# then
#   echo "Rebooting."
#   sudo reboot
#   exit 0
# else
#   exit 1
# fi
