FROM searxng/searxng:latest

USER root

COPY settings.yml /etc/searxng/settings.yml

RUN chown -R searxng:searxng /etc/searxng

USER searxng

EXPOSE 10000

CMD ["/usr/local/searxng/dockerfiles/docker-entrypoint.sh"]
