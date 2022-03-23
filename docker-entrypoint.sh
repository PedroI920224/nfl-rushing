#!/usr/bin/dumb-init /bin/bash

mix deps.get
PORT=4000
exec mix phx.server
