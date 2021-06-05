FROM python:3.8-slim
COPY requirements.txt .
RUN pip install --user -r requirements.txt
COPY ./main.py /
EXPOSE 5000
CMD [ "python3", "/main.py" ]