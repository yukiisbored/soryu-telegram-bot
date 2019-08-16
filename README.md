# Soryu

A Telegram Bot written fully in POSIX sh

## Requirements

* Standard UNIX utilities: `grep`, `cut`
* `jq`
* `curl`
* *(Optional)* `bash`/`ksh`/`zsh` for the `decide` command

## Known issues

* Messages containing escape characters will crash the bot due to how `jq` is
  being used to handle JSON data.

## Future plans

* Use ksh instead of POSIX sh
