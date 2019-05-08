FROM python:3-alpine

WORKDIR /usr/share/grafana-backup-tool

COPY . .
RUN pip install -r requirements.txt

ENTRYPOINT ["/bin/sh"]

CMD ["backup_grafana.sh"]