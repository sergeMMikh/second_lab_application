FROM python:3.10.4-alpine

# Set work directory
WORKDIR /code

RUN python3 -m pip install --upgrade pip

COPY ./requirements.txt /src/requirements.txt
RUN pip3 install --no-cache-dir --upgrade -r /src/requirements.txt

# Copy project
COPY . /code/

# Collect static files
# RUN python manage.py collectstatic --noinput

EXPOSE 8000

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
