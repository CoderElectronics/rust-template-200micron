# rust-template-200micron

A Rust cross-compilation template project for the 200micron SBC.This template provides a basic Rust application setup with build configurations for both local development and `armv5te-unknown-linux-gnueabi`

## Prerequisites

- [Rust](https://www.rust-lang.org/tools/install) (stable toolchain)
- [just](https://github.com/casey/just) - A command runner (install via `cargo install just`)

## Setup

Run the setup command to fetch dependencies and install the ARM target:

```bash
just setup
```

This will:
- Fetch all Cargo dependencies
- Install the `armv5te-unknown-linux-gnueabi` target for cross-compilation

## Building

To build for the ARM target (e.g., for embedded devices):

```bash
just build
```

To build for your local machine:

```bash
just build-local
```

These create build exeutables in the build/* folder.

To remove all build artifacts:

```bash
just clean
```

## Project Structure

```
.
├── src/
│   └── main.rs          # Main application entry point
├── build/               # Build output directory (created during build)
├── Cargo.toml           # Project dependencies and metadata
├── justfile             # Build automation recipes
└── README.md            # This file
```

The main application code is located in `src/main.rs`. Modify this file to implement your application logic.
