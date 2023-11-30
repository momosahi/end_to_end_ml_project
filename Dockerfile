FROM tiangolo/uvicorn-gunicorn:python3.10
WORKDIR /app
COPY requirements.txt /tmp/
RUN pip install --no-cache-dir --upgrade -r /tmp/requirements.txt
COPY app/ /app/

CMD ["uvicorn","main:app", "--port","5000", "--host","127.0.0"]