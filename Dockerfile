FROM rust:1.61

RUN apt update && apt install -y git

RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.2/zsh-in-docker.sh)" -- \
    -t cloud \
    -p aliases \
    -p colorize \
    -p common-aliases \
    -p rust \
    -p zsh-autosuggestions \
    -p zsh-syntax-highlighting

RUN git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

RUN git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

WORKDIR /usr/app
COPY ./app .

RUN cargo install --path .

CMD tail -f /dev/null
