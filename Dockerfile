FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt
RUN pip install --nocache-dir -r requirements.txt

COPY . .

EXPOSE 80

ENV NAME World

CMD ["python", "./run.py"]