#!/bin/sh

if [ -z "$SORYU_ROOT" ]
then
    SORYU_ROOT="$PWD"
fi

export SORYU_ROOT

CONFIG_FILE="$SORYU_ROOT/config"

if [ ! -f "$CONFIG_FILE" ]
then
    echo >&2 "You need to have a config file at $CONFIG_FILE."
fi

. "$SORYU_ROOT/config"

export TELEGRAM_BOT_TOKEN

while :
do
    ./soryu
    sleep 1
done
