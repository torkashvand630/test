#!/usr/bin/env bash
set -euxo pipefail
echo "start alpinr test 1"
rm -rf /var/run/pulse /var/lib/pulse /root/.config/pulse
pulseaudio -D --verbose --exit-idle-time=-1 --system --disallow-exit 
cd api
ls
 
echo "start alpine test recorder node api : v 1.02"
 
#xvfb-run --server-args="-screen 0 1920x1080x30" node app.js
node app.js