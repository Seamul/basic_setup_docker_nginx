FROM registry.access.redhat.com/ubi8/python-39:1-48

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt .

RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

USER 0

RUN mkdir /app/static
RUN chgrp -R 0 /app/static && chmod -R g=u /app/static

RUN mkdir -p /app/media
RUN chgrp -R 0 /app/media && chmod -R g=u /app/media

RUN chmod +x web-init-dev.sh
# RUN chmod +x web-init-prod.sh

USER 1001
