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

