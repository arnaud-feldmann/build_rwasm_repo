FROM ghcr.io/r-wasm/webr:v0.5.8

RUN git clone --depth 1 --branch apache-arrow-23.0.0 https://github.com/apache/arrow.git /tmp/arrow && \
    cd /tmp/arrow/cpp && \
    emcmake cmake --preset "ninja-release-emscripten" \
      -DCMAKE_CXX_STANDARD=20 \
      -DCMAKE_CXX_STANDARD_REQUIRED=ON \
      -DCMAKE_CXX_EXTENSIONS=ON && \
    ninja install && \
    rm -rf /tmp/arrow
