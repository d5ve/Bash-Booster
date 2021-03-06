#!/bin/bash

unset CDPATH
cd "$( dirname "${BASH_SOURCE[0]}" )"

source ../../bashbooster.sh

BB_EVENT_MAX_DEPTH=5

event-handler() {
    echo "Event processed"
    bb-event-fire event
}

bb-event-on event event-handler
bb-event-fire event
