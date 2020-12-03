# Use Debian buster base
FROM python:3.8.3-slim-buster

# Create user 
RUN adduser --disabled-password --gecos '' pyuser

# Update packages and install graphviz
RUN apt-get update

RUN apt-get install graphviz -y --no-install-recommends

# Create directory and switch users
RUN mkdir -p /home/pyuser/diagrams

USER pyuser

# Install diagrams with pip
RUN pip install diagrams==0.18.0

# Change directory
WORKDIR /home/pyuser/diagrams

# Run diagrams on all files if there are any .py files
CMD if [ "$(ls -A *.py 2>/dev/null | wc -l)" != "0" ] ; then for i in $(ls -A *.py); do echo "Processing file $i" && python "$i" && echo "File $i processed" ; done else echo "Nothing to do"; fi
