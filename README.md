# Expense Report in Rust

ZShell with some plugins is added to the image for ease of use and extra comfort.

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
docker build -t rust-app .
```

3. Start and enter the container

```sh
docker run -it --rm rust-app /bin/zsh
```

4. Run tests

```zsh
make all
```

5. Exit and stop the container

```zsh
bye
```
