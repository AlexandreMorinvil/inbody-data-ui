FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN inbody_data_ui create-db
RUN inbody_data_ui populate-db
RUN inbody_data_ui add-user -u admin -p admin
EXPOSE 5000
CMD ["inbody_data_ui", "run"]
