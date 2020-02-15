# makeviz
This tool combines the work of remake, gprof2dot, and dot into a single place to create visual dependency graphs from your Makefile.

Docker Hub: https://hub.docker.com/r/cseelye/makeviz  
Github: https://github.com/cseelye/makeviz

## Usage
Mount your sandbox into `/src` in the container and it will create makeviz.png in your sandbox directory.
```
docker run --rm -it -v $(pwd):/src makeviz
```
For convenience, add an alias to your shell profile
```
alias makeviz='docker run --rm -it -v $(pwd):/src makeviz'
```
