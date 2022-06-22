FROM ghcr.io/rust-lang/crates-build-env/linux

ENV PATH=/root/.cargo/bin:$PATH

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- --default-toolchain=nightly --component=rust-src -y

RUN apt-get update && \
    apt-get install -y time clang lld expect && \
    rm -rf /var/lib/apt/lists/*

RUN cargo install cargo-download

COPY config.toml /root/.cargo/config.toml

COPY run.sh /root/run.sh

ENTRYPOINT ["bash", "/root/run.sh"]
