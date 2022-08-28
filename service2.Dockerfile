FROM python:3.10-slim

ENV POETRY_VIRTUALENVS_CREATE false
RUN pip install --upgrade pip && pip install poetry
COPY src/service2 /app/service2
COPY src/common /app/common

WORKDIR /app/service2
RUN poetry install

#CMD ["poetry", "run", "python", "service2/main.py"]
CMD ["python", "service2/main.py"]

