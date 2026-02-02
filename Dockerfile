FROM ghcr.io/r-wasm/webr:v0.5.8

RUN git clone --depth 1 --branch apache-arrow-23.0.0 https://github.com/apache/arrow.git /tmp/arrow && \
    cd /tmp/arrow/cpp && \
    emcmake cmake --preset "ninja-release-emscripten" -DARROW_JSON=OFF -DARROW_CSV=OFF -DARROW_SUBSTRAIT=OFF -DARROW_ORC=OFF -DARROW_WITH_BROTLI=OFF -DARROW_WITH_SNAPPY=OFF -DARROW_IPC=OFF && \
    ninja install && \
    rm -rf /tmp/arrow
