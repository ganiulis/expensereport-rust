# Expense Report in Rust

## Requirements

1. git
2. Docker

## Installation

1. Clone the repository

```sh
git clone git@github.com:ganiulis/expensereport-rust.git
```

or:

```sh
git clone https://github.com/ganiulis/expensereport-rust.git
```

2. Build the image

```sh
docker build -t rust-app-image .
```

3. Start the container

```sh
docker run -d --rm --name rust-app rust-app-image
```

4. Enter the shell

```sh
docker exec -it rust-app zsh
```

5. Run tests

```zsh
make all
```
