FROM python:3.13.1-alpine3.21

WORKDIR /usr/src/app

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONBUFFERED=1

RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r requirements.txt

# COPY ./entrypoint.sh .
# RUN sed -i 's/\r$//g' ./entrypoint.sh
# RUN chmod +x ./entrypoint.sh

COPY . .

# ENTRYPOINT [ "./entrypoint.sh" ]
