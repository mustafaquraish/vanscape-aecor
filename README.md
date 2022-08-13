# VanScape (rewritten in aecor)

[Original game located here](https://github.com/gamingbuddhist/VanScape)

This is a rewrite of the original game in aecor, so that it can be compiled to WASM and deployed to the web using [emscripten](https://emscripten.org/).

[Live demo](https://mustafaquraish.github.io/vanscape-aecor/)

## Building

This game is implemented in [aecor](https://github.com/mustafaquraish/aecor/), so you'll need to have a working version of it on your system. The `aecor` repository provides information on how to set it up.

_Note: You will have to provide the `aecor` compiler a path to the `aecor` repository on your system with the `-l` flag to be able to load the libraries._

### Native

You will need to have SDL2 and SDL2_image installed and configured on your system.

```bash
$ aecor -l path/to/aecor/repo sdl_main.ae
$ ./out
```

### WASM

You will need to have the emscripten SDK available on your PATH for this to work.

```bash
# Compile aecor to intermediate `out.c` file
$ aecor -l path/to/aecor/repo wasm_main.ae -n
$ ./build_wasm.sh   # expects `out.c` as source
```

Alternatively, the last step can be done in a docker container if you don't want to install emscripten on your system:

```bash
$ docker run --rm -v $(pwd):/mnt -w /mnt/ emscripten/emsdk ./build_wasm.sh
```

After this, the generated HTML+JS+WASM files can be found in `build/`, and can be tested with a local webserver.