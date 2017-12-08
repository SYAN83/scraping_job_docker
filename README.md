# Scrapeing Jobs Scheduler

A docker image to schedule scraping jobs for websites.

## Setting Up Docker Environment (AMI: Ubuntu 16.04)

- Update system
  ```
  sudo apt-get update
  sudo apt-get -y upgrade
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
  sudo apt-get -y install docker-ce

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
  docker run -d -it \
    --mount type=bind,source="$(pwd)"/crawlbot,target=/crawlbot \
    scraping_scheduler:latest
  ```

- Run the following command to check log in docker container

  ```sh
  cat crawlbot/scheduler.log
  ```

