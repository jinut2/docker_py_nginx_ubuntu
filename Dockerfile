FROM ubuntu:14.04.3

# Install Nginx.
RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:nginx/stable
RUN apt-get update
RUN apt-get install -y nginx

# Install Python tools
RUN apt-get install -y python-software-properties
RUN apt-get install -y python python-dev
RUN apt-get install -y build-essential python-pip
RUN apt-get install -y python-setuptools nginx

# update pip
RUN pip install --upgrade pip

# Copy app & declare work dir
COPY ./ /app/
WORKDIR /app
