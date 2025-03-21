FROM python:3.10
WORKDIR /app

COPY app/requirements.txt /app/

RUN pip install --no-cache-dir --upgrade pip && \
    pip install -r /app/requirements.txt

COPY . /app/

EXPOSE 8000

CMD ["python", "app/manage.py", "runserver", "0.0.0.0:8000"]
