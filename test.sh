#!/bin/bash

set -e

export RUSTFLAGS="--cap-lints warn"
cargo build || exit 125
cargo test --test test test_dylib



