setup:
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
	hadolint Dockerfile
	pylint --disable=R,C,W0613 hello/