FROM python:3.11-slim
WORKDIR /code/app
COPY app/requirements.txt .
RUN pip install -r requirements.txt
COPY app .
EXPOSE 8080
CMD ["python","app.py"]
