FROM python:3.11.0a2-alpine
RUN apk add --no-cache git && pip install trufflehog
RUN adduser -S truffleHog
USER truffleHog
WORKDIR /proj
ENTRYPOINT [ "trufflehog" ]
CMD [ "-h" ]
