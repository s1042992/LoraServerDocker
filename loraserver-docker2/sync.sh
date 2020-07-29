#!/bin/bash
cd /home/engineer/rclone-v1.45-linux-amd64
./rclone sync -v /home/engineer/loraserver-docker ncuhscclora:/loraserver-docker
