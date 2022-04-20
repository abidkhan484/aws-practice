## Usage
Use the `flask-deployment` script to the `user data` while launching an EC2 instance in AWS.

Note: Change the gitlab repository URL [line 23](https://github.com/abidkhan484/aws-practice/blob/main/flask-deployement/flask-deployment.sh#L23) and directory name [line 24](https://github.com/abidkhan484/aws-practice/blob/main/flask-deployement/flask-deployment.sh#L24) accordingly.

## Concept
The concept behind the deployment, a couple of tools like `Pip`, `Pipenv`, `Git`, `Nginx` are installed.

The request forward settings from `Nginx` to `Flask` is implemented using `proxy_pass`. Then `Nginx` is enabled and started.

Afterward, Flask application is deployed using Pipenv with the required commands.
