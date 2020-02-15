# makeviz
This tool combines the work of remake, gprof2dot, and dot into a single place to create visual dependency graphs from your Makefile.

## Usage
Mount your sandbox into `/src` in the container and it will create makeviz.png in your sandbox directory.
```
docker run --rm -it -v $(pwd):/src makeviz
```
