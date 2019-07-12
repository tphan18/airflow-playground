FROM python:3.6-stretch

WORKDIR /airflow
ENV AIRFLOW_HOME=/airflow
RUN pip install Werkzeug apache-airflow

# Keep container running
COPY entrypoint.sh /airflow/entrypoint.sh
RUN chmod a+x /airflow/entrypoint.sh
CMD [ "/airflow/entrypoint.sh" ]
