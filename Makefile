DIR:=$(shell pwd)

.PHONY: all

all: sdl

sdl: sdl_main.ae game.ae utils.ae
	aecor sdl_main.ae -o sdl -e2

wasm: wasm_main.ae game.ae utils.ae
	aecor wasm_main.ae -n -e2
	docker run --rm -v $(DIR):/mnt/ -w /mnt/ emscripten/emsdk ./build_wasm.sh