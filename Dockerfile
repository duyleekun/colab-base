FROM python:3.8
RUN mkdir /app/
WORKDIR /app/
RUN pip install pipenv
COPY Pipfile* /app/
RUN cd /app
RUN pipenv install
COPY . /app/
RUN pipenv run enable_ws
ENTRYPOINT pipenv run start --allow-root --port=$PORT --ip=0.0.0.0 --NotebookApp.token=$NOTEBOOK_TOKEN