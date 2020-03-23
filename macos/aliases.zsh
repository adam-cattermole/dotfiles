alias ifcopy="ifconfig en0 | awk '\$1 == \"inet\" {printf \$2}' | pbcopy | echo '=> IP address copied to pasteboard.'"
