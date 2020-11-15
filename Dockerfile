FROM python

EXPOSE 8000-8000

ADD requirements.txt .

RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

ADD . .

CMD [ "gunicorn", "--bind", "0.0.0.0:8000" , "app:app" ]