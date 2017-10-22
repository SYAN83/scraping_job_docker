# glassdoor Scraper

> A docker image to scrape jobs and employees data from www.glassdoor.com and save to mongoDB.

## Setting Up Environment in AWS EC2 (Ubuntu)

- Update system
  ```
  sudo apt-get update
  sudo apt-get upgrade
  ```

- Install git
  ```
  sudo apt install git
  ```
  
- Set Up Docker

  ```
  sudo apt-get install \
      apt-transport-https \
      ca-certificates \
      curl \
      software-properties-common

  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

  sudo add-apt-repository \
     "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
     $(lsb_release -cs) \
     stable"

  sudo apt-get update    
  sudo apt-get install docker-ce

  sudo usermod -aG docker $USER
  ```
  Then logout and login again.

## Installation

- Clone the GitHub repo including the submodule
  ```
  git clone --recursive https://github.com/SYAN83/scraping_job_docker.git
  ```
- Change your working directory into the `scraping_job_docker` directory, create file `params.yml` with mongoDB connection using the template `config_template.yml`, save it under `crawlbot/` directory

- Build the docker image via the following command

```sh
docker build -t scraping_scheduler .
```

## Usage

- Run the following command to start docker container

```sh
docker run -d scraping_scheduler
```

- Run the following command to check log in docker container
  1. Find your container id with command:
  ```sh
  docker container list
  ```
  2. Access the docker container via:
  ```sh
  docker exec -i -t CONTAINER_ID bash
  root# cat /crawlbot/scheduler.log
  ```

