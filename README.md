# R Docker template

A minimal template for using R with renv inside a Docker image.

## Description

This template uses the base Docker image `vigenere23/renv-dev` for using R with `renv`. It also sets up some sweat volumes for hot reloading and cache.

## Known problems

- Figures are outputed as pdf files instead of interactive windows
- Files created by the Docker image require root privileges, meaning you can't modifiy or remove them without "sudo-ing"

## Usage

### Build image

This will build the R image and sets up volumes, install dependencies, and create `renv` related files.

```shell
docker-compose up --build
```

### Launch interactive R shell

```shell
docker-compose run r
```

### Launch a R script

```shell
docker-compose run r Rscript test.r
```

### Execute a R command

```shell
docker-compose run r Rscript -e 'renv:::renv_paths_cache()'
```
