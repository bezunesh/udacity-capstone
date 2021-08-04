setup:
	# Create python virtualenv & source it
	# source ~/.devops/bin/activate
	python3 -m venv .venv
	source .venv/bin/activate

install:
	# This should be run from inside a virtualenv
	pip install --upgrade pip &&\
		pip install -r requirements.txt
migrate:
	# Run database migrations
	python manage.py migrate
	
lint:
	# See local hadolint install instructions:   https://github.com/hadolint/hadolint
	# This is linter for Dockerfiles
	# hadolint Dockerfile
	# This is a linter for Python source code linter: https://www.pylint.org/
	# This should be run from inside a virtualenv
	pylint --disable=R,C,W1203,W0611,W013 hello/