#!/bin/bash

# Installing the prerequisites
sudo yum update
sudo yum install python3-pip -y
pip3 install pipenv
sudo yum install git -y
sudo yum install mesa-libGL -y
sudo amazon-linux-extras install nginx1 -y

# Adding proxy_pass to forward request to flask application
sed -i '46 i\
\
        location / {\
                proxy_pass http://127.0.0.1:5000;\
        }\
' /etc/nginx/nginx.conf

sudo systemctl enable nginx
sudo systemctl start nginx

## Flask project setup
git clone https://<token-name>:<token>@gitlab_flask_repo_url
cd flask_project_directory/
# change the above lines accordingly
pipenv install
pipenv shell
pipenv run python3 -m flask run

