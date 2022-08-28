FROM python:3.10-slim

ENV POETRY_VIRTUALENVS_CREATE false
RUN pip install --upgrade pip && pip install poetry
COPY src/service1 /app/service1
COPY src/common /app/common

WORKDIR /app/service1
RUN poetry install

#CMD ["poetry", "run", "python", "service1/main.py"]
CMD ["python", "service1/main.py"]

