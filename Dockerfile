FROM mrismanaziz/man-userbot:buster

RUN git clone -b main https://github.com/wiki28/WikixCilik /home/wikixcilik/ \
    && chmod 777 /home/wikixcilik \
    && mkdir /home/wikixcilik/bin/

COPY ./sample_config.env ./config.env* /home/wikixcilik/

WORKDIR /home/wikixcilik/

CMD ["python3", "-m", "userbot"]
