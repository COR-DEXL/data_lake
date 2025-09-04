#!/bin/bash

source "config/.env"

start () {
    CMD="docker compose -p $PROJECT_NAME"

    if [[ ! -z "$DOCKER_COMPOSE_FILE" ]]; then
        CMD="$CMD -f $DOCKER_COMPOSE_FILE"
    fi

    CMD="$CMD up --build"

    if [[ "$DETACH_CONTAINER_FROM_TERMINAL" = true ]]; then
        CMD="$CMD -d"
    fi
    eval "$CMD"
}

stop () {
    CMD="docker compose -p $PROJECT_NAME down"
    eval "$CMD"
}

if [[ $1 = "start" ]]; then
    start
elif [[ $1 = "stop" ]]; then
    stop
else
    echo "Usage: $0 <start|stop>"
fi