FROM python:3.10
FROM tensorflow/tensorflow:latest

WORKDIR /app

COPY requirements.txt .
RUN python3 -m pip install --upgrade pip
RUN pip uninstall blinker Werkzeug
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000

CMD [ "python", "app.py" ]
