#!/usr/bin/env bash
# Copyright (c) 2018 Ultimaker B.V.

git submodule update --init
python3 ./scripts/build_plugin.py CuraDrive
