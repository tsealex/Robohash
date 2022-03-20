# https://cloud.google.com/run/docs/quickstarts/build-and-deploy/deploy-python-service
FROM python:3.10-slim

# Copy local code to the container image.
ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . ./

RUN pip install --no-cache-dir -r requirements.txt

WORKDIR $APP_HOME/robohash

CMD python webfront.py --port=$PORT
