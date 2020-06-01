FROM python:3

WORKDIR /opt/hello_world

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

ENV FLASK_APP=hello_world.py

COPY hello_world.py .

EXPOSE 5000

CMD [ "flask", "run", "-h", "0.0.0.0" ]
