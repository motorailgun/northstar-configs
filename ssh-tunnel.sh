#!/bin/bash

USERNAME=""
KEY_FILE=""
HOST=""

ssh -t -t -i $KEY_FILE $USERNAME@$HOST -R 8081:localhost:8081 -R 37015:localhost:37015
