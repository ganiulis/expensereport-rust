FROM rust:1.61

WORKDIR /usr/app
COPY ./app ./usr/app

RUN cargo install --path ./usr/app

CMD tail -f /dev/null
