#!/usr/bin/env sh

rm ./*.profraw
export RUSTFLAGS="-C instrument-coverage -C link-dead-code"
export LLVM_PROFILE_FILE="lsp-v2-%p-%m.profraw"
cargo build
cargo test
grcov . -s . --binary-path ./target/debug/ -t html --branch --ignore-not-existing -o ./target/debug/coverage/
