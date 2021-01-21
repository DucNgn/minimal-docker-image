FROM rust:1.43 as builder

RUN USER=root cargo new --bin rust-hello-world
WORKDIR ./rust-hello-world
COPY ./Cargo.toml ./Cargo.toml
RUN cargo build --release
RUN rm src/*.rs