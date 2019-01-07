FROM egaraev/basecentos:latest
COPY . /usr/local/bin/
WORKDIR /usr/local/bin
RUN mkdir static/images
RUN pip install -r requirements.txt
RUN chmod +x start.sh
EXPOSE 8181
ENTRYPOINT ["/usr/local/bin/start.sh"]
