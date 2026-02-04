FROM ghcr.io/r-wasm/webr:v0.5.6

RUN git clone --depth 1 --branch apache-arrow-23.0.0 https://github.com/apache/arrow.git /tmp/arrow && \
    cd /tmp/arrow/cpp && \
    emcmake cmake --preset "ninja-release-emscripten" && \
    ninja install && \
    rm -rf /tmp/arrow
