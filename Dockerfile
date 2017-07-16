FROM postgres:9.6.3

ADD https://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/4.2.0/flyway-commandline-4.2.0-linux-x64.tar.gz /opt/flyway

RUN ln -s /opt/flyway/flyway-4.2.0/flyway /usr/local/bin/flyway

ADD ./migrations /sql

ADD ./start-and-run-migrations.sh /start.sh
RUN chmod u+x /start.sh

CMD /start.sh

