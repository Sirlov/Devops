FROM python:3.8
RUN pip3 install paramiko psycopg2 python-telegram-bot==13.7
COPY botnemo.py .
EXPOSE 5000
CMD ["python3", "botnemo.py"]
