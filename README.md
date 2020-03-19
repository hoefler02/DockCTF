# Docktf
CTF docker image complete with `gdb`, `gdb-peda`, `gdb-pwndbg`, `gdb-gef`, Run gdb with `gdb`, peda with `gdb-peda`, pwndgb with `gdb-pwndbg`, and gef with `gdb-gef`.

# Usage
To build the image, run `docker build . -t docktf` in the same directory as the dockerfile.
To run a shell within the image, execute the following command...
```
docker run -it -v $(pwd):/pwn --privileged docktf /usr/bin/fish
```

# Tools
- [gdb-peda-pwndbg-gef](https://github.com/apogiatzis/gdb-peda-pwndbg-gef)
- [radare2](https://github.com/radareorg/radare2)
- [pwntools](https://github.com/Gallopsled/pwntools) 
