#!/bin/bash

unset CDPATH
cd "$( dirname "${BASH_SOURCE[0]}" )"

source ../../bashbooster.sh

bb-event-fire event
bb-event-on event 'echo "Event processed"'
bb-event-fire event
