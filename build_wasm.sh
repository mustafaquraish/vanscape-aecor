#!/bin/bash

set -e

mkdir -p build
emcc out.c -o build/index.html -sUSE_SDL_IMAGE=2 -sUSE_SDL_TTF=2 -sUSE_SDL=2 -sUSE_SDL_MIXER=2 -sALLOW_MEMORY_GROWTH=1 --preload-file assets --use-preload-plugins