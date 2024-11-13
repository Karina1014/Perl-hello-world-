FROM perl:5.32

RUN cpan install HTTP::Server::Simple

WORKDIR /app

COPY app.pl .

EXPOSE 8001

CMD ["perl", "app.pl"]