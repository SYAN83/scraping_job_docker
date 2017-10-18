# glassdoor Scraper

> A docker image to scrape jobs and employees data from www.glassdoor.com and save to mongoDB.

## Installation

- Clone the GitHub repo and change your working directory into the `job_scraper` directory.

- Create a `params.yml` file with mongoDB connection using the template, save it under `scraper/` directory

- Build the docker image via the following command

```sh
docker build -t docker_scraper .
```

## Usage

- Run the following command to start docker container

```sh
docker run -d docker_scraper
```

- Run the following command to check log in docker container

```sh
docker exec -i -t docker_scraper bash
root# cat /scraper/scraper.log
```

