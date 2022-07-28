#!/bin/bash

kill $(ps aux | grep 'chisel86' | grep -v 'grep' | grep -v 'tmux' | awk '{print $2}')
