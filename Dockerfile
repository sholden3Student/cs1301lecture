FROM python:3.11
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get -y install sudo

#get python

RUN apt-get update && apt-get install -y --no-install-recommends build-essential libpq-dev python3.11 python3-pip python3-setuptools python3-dev

RUN pip3 install --upgrade pip

RUN apt -y install libpng-dev && apt install -y gnupg2

# Install ODBC
# Don't need for class, spin up secondary container with either mysql db or alternative

RUN sudo su

RUN curl -fsSL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor -o /usr/share/keyrings/microsoft-prod.gpg

RUN curl -fsSL https://packages.microsoft.com/config/debian/12/prod.list > /etc/apt/sources.list.d/mssql-release.list

RUN exit

RUN sudo apt-get update && apt install -y apt-utils

RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections

RUN sudo apt-get remove -y libodbc2 libodbcinst2 odbcinst unixodbc-common

RUN sudo ACCEPT_EULA=Y apt-get install -y msodbcsql18

RUN mkdir /app
WORKDIR /app
COPY pyproject.toml .
RUN pip install .

RUN rm -rf pyproject.toml