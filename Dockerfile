FROM python:3.8
RUN mkdir /app/
WORKDIR /app/
RUN pip install pipenv
COPY Pipfile* /app/
RUN cd /app
RUN pipenv install
COPY . /app/
RUN pipenv run enable_ws
ARG NOTEBOOK_TOKEN
ENV NOTEBOOK_TOKEN=$NOTEBOOK_TOKEN
ENTRYPOINT "pipenv run start"