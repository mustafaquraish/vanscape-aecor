#!/bin/bash

set -e

emcc out.c -o build/index.html -sUSE_SDL_IMAGE=2 -sUSE_SDL=2 --preload-file images --use-preload-plugins