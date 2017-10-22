FROM jeanphix/ghost.py:2.0.0-dev
MAINTAINER yanshu.usc@gmail.com

#Install vim
RUN apt-get update
RUN apt -y install vim
RUN apt install git

# Add scraper files in the scraper directory
ADD crawlbot/requirements.txt /

# Install packages
RUN pip3 install -r /requirements.txt

# Execute job_scheduler
CMD cd crawlbot && python3 scheduler.py
