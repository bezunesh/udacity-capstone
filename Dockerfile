FROM python:3

WORKDIR /app

COPY . /app/

# hadolint ignore=DL3013
RUN pip install --no-cache-dir --upgrade pip &&\
    pip install --no-cache-dir --trusted-host pypi.python.org -r requirements.txt

EXPOSE 8000

CMD [ "python", "./manage.py", "runserver", "0.0.0.0:8000"]