#!/bin/bash
DIR=$(dirname "$0")
"$DIR/frpc" -c "$DIR/frpc.toml"
