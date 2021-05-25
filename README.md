# Clang development envirnoment

## Create image

```bash
docker build -t c-builder:latest .
```

## Usage
```bash
alias cb="docker run --name builder --rm -p 3000:3000 -it -w /app -v ${PWD}:/app c-builder:latest"
```
or
```bash
cb bash
```
or 
```bash
cb make
```