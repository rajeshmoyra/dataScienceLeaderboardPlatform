FROM python:3.7-buster

RUN mkdir /app
WORKDIR /app
ADD . /app/

# Install requirements

RUN pip install --upgrade pip
RUN pip install -r /app/requirements.txt

EXPOSE 5000
CMD ["python", "/app/leaderBoardApp.py"]