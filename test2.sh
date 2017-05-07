#!/bin/bash

set -e
set -x

#export RUSTFLAGS="--cap-lints warn"
#cargo build || exit 125

#export RUST_LOG=error

cargo build
cd foo
../target/debug/cargo.exe test 
../target/debug/cargo.exe test --target x86_64-pc-windows-msvc
../target/debug/cargo.exe test --target x86_64-pc-windows-gnu
../target/debug/cargo.exe test --target i686-pc-windows-msvc
#../target/debug/cargo.exe test --target i686-pc-windows-gnu



