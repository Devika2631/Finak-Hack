FROM python:3.10
RUN mkdir /app
WORKDIR /app
COPY . /app
COPY requirements.txt ./requirements.txt

RUN pip install -r requirements.txt

EXPOSE 8501

ENTRYPOINT ["streamlit","run"]

CMD ["app.py"]


