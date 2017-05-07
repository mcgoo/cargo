#!/bin/bash

# c.f.
# https://ci.appveyor.com/project/rust-lang-libs/cargo/build/1.0.1715/job/27uuclr522xnv88c
#

set -x -e 

# rm -rf ~/.cargo
/c/Users/jim/Downloads/rustup-init.exe --version
/c/Users/jim/Downloads/rustup-init.exe -y --default-host x86_64-pc-windows-msvc --default-toolchain nightly-2017-03-03 
git checkout -qf 7cfeec1aaac3d1909af8476f66c547619eceb640
git log -n1
rm -rf target
git status
/c/Users/jim/.cargo/bin/rustc -V
/c/Users/jim/.cargo/bin/cargo --version
/c/Users/jim/.cargo/bin/cargo build --target x86_64-pc-windows-msvc --manifest-path /c/Users/jim/src/cargo//Cargo.toml --release
CFG_DISABLE_CROSS_TESTS=1 /c/Users/jim/.cargo/bin/cargo test --target x86_64-pc-windows-msvc --manifest-path /c/Users/jim/src/cargo//Cargo.toml --release    -- --quiet || true

# also
CFG_DISABLE_CROSS_TESTS=1 /c/Users/jim/.cargo/bin/cargo test --target x86_64-pc-windows-msvc --manifest-path /c/Users/jim/src/cargo//Cargo.toml --release --test plugins   -- --quiet
