FROM ubuntu:latest
RUN apt update -y && apt install curl -y
RUN curl https://get.docker.com | sh
RUN docker --version
RUN docker compose --version
RUN curl -sSL instl.vercel.app/teldrive | bash
RUN teldrive version
RUN apt install postgresql -y
EXPOSE 8080
CMD teldrive run
