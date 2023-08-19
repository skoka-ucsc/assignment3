
FROM ubuntu AS dummyserv_build
WORKDIR /hello_http
RUN ls -lh /hello_http
COPY /hello_http/dummy_serv.c .
RUN apt-get update
RUN apt-get install gcc -y
RUN gcc -o dummyserv -static dummy_serv.c
RUN ls -lh /hello_http

FROM scratch AS dummyserv_scratch
COPY --from=dummyserv_build /hello_http/dummyserv /dummyserv
EXPOSE 8080
CMD ["/dummyserv", "8080"]
