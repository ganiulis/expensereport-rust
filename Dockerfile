FROM rust:1.61

RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.2/zsh-in-docker.sh)" -- \
    -t cloud \
    -p aliases \
    -p common-aliases \
    -p rust \
    -p https://github.com/zsh-users/zsh-autosuggestions \
    -p https://github.com/zsh-users/zsh-syntax-highlighting

WORKDIR /usr/app
COPY ./app .

RUN cargo install --path .

CMD tail -f /dev/null
