setup:
	cargo fetch
	rustup target add armv5te-unknown-linux-gnueabi

build:
    #!/bin/bash
    mkdir build || true
    cargo build --target=armv5te-unknown-linux-gnueabi --release --target-dir build

build-local:
    #!/bin/bash
    mkdir build || true
    cargo build --release --target-dir build

clean:
    rm -rf target build || true
