FROM python:3.13.0a1-alpine
RUN apk add --no-cache git && pip install trufflehog
RUN adduser -S truffleHog
USER truffleHog
WORKDIR /proj
ENTRYPOINT [ "trufflehog" ]
CMD [ "-h" ]
