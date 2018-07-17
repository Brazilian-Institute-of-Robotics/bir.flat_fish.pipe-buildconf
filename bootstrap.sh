#!/bin/sh

set -e

test -f "autoproj_install" || wget -nv https://raw.githubusercontent.com/rock-core/autoproj/master/bin/autoproj_install

export AUTOPROJ_OSDEPS_MODE=all
export AUTOPROJ_BOOTSTRAP_IGNORE_NONEMPTY_DIR=1

ruby autoproj_install
. ./env.sh
autoproj bootstrap git git@github.com:Brazilian-Institute-of-Robotics/bir.flat_fish.pipe-buildconf.git
aup
amake
