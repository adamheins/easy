# easy
# Allows quick copying of terminal output.
#
# Adam Heins <mail@adamheins.com>
# 2015-11-11

EASY_LOG_FILE=~/.easy.log

_easy_copy() {
  # Get the line with number $1.
  local line=$(sed -n "${1}{p;q;}" $EASY_LOG_FILE)

  # Bail if the line number is invalid.
  if [ -z "$line" ]; then
    echo "Line #$1 does not exist."
    return 1
  fi

  # Copy the line to the clipboard.
  printf "$line" | pbcopy
  echo "Copied '$line' to clipboard."
}

easy() {
  if [ -n "$1" ]; then
    case "$1" in
      "-h"|"--help") echo "Usage: easy [-h] [num]" ;;
      *) _easy_copy $1 ;;
    esac
  else
    # Store input in a file, then print it to stdout with line numbers.
    cat > $EASY_LOG_FILE
    cat $EASY_LOG_FILE | nl
  fi
}
