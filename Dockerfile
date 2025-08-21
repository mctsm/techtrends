FROM python:3.8
LABEL maintainer="Miguel Machado"

COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt

EXPOSE 7111

#command to initialized  the database with the pre-defined posts in the init_db.py file
CMD [ "python", "app.py" ]
