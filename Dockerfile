FROM jeanphix/ghost.py:2.0.0-dev
MAINTAINER yanshu.usc@gmail.com

#Install vim
#RUN apt-get update
#RUN apt-get -y install vim

# Add scraper files in the scraper directory
ADD ./crawlbot /crawlbot

# Install packages
RUN pip3 install -r /crawlbot/requirements.txt

# Execute job_scheduler
# CMD ["python3","/crawlbot/job_scheduler.py"]
