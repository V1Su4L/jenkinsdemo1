FROM python:3.12.2-alpine3.19docker

WORKDIR /app

COPY .txt .
RUN pip3 install -r requirments.txt

COPY movies.py .

EXPOSE 80

CMD [ "python3", "movies.py" ]