#!/bin/bash
spotifyd $(cat /etc/spotifyd-config)
spt
killall spotifyd
