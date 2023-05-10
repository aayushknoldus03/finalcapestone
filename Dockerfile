FROM python:slim
WORKDIR /application
COPY . /application
RUN pip install Flask Flask-SQLAlchemy
CMD ["python3","app.py"] 
