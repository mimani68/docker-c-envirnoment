# Clang development envirnoment

## Create image

```bash
docker build -t c-builder:latest .
```

## Usage
```bash
export cb="docker run --name builder --rm -it -w /app -v ${PWD}:/app c-builder:latest"
```
or
```bash
$cb bash
```
or 
```bash
$cb make
```