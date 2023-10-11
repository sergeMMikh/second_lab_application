FROM python:3.9-alpine
WORKDIR /code

RUN python -m pip install --upgrade pip

COPY ./requirements.txt /src/requirements.txt
COPY ./.env /src/.env
COPY . /code/

RUN pip install --no-cache-dir --upgrade -r /src/requirements.txt
RUN python manage.py migrate

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]