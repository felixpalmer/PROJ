#!/bin/sh
# Render all polyhedral net projections.
# Usage: sh test/render_nets.sh

set -e

SCRIPT_DIR=`dirname "$0"`
RENDER="python3 $SCRIPT_DIR/render_net.py"

$RENDER --proj="+proj=dsea +R=1" \
    --title="DSEA: Dodecahedral Snyder Equal Area" \
    -o dsea_net.png

$RENDER --proj="+proj=dsea +R=1 +net=a5" \
    --title="DSEA: Dodecahedral Snyder Equal Area (a5 net)" \
    -o dsea_a5_net.png

$RENDER --proj="+proj=dsea +R=1 +net=crescent" \
    --title="DSEA: Dodecahedral Snyder Equal Area (crescent net)" \
    -o dsea_crescent_net.png

$RENDER --proj="+proj=dsea +R=1 +net=two_flower" \
    --title="DSEA: Dodecahedral Snyder Equal Area (two-flower net)" \
    -o dsea_two_flower_net.png

$RENDER --proj="+proj=dsea +R=1 +net=icosahedron" \
    --title="DSEA: Dodecahedral Snyder Equal Area (icosahedron net)" \
    -o dsea_icosahedron.png

$RENDER --proj="+proj=isea2 +R=1" \
    --title="ISEA: Icosahedral Snyder Equal Area" \
    -o isea_net.png

$RENDER --proj="+proj=ivea +R=1" \
    --title="IVEA: DSEA unfolded onto icosahedral net" \
    -o ivea_net.png

$RENDER --proj="+proj=tsea +R=1" \
    --title="TSEA: Tetrahedral Snyder Equal Area" \
    -o tsea_net.png
