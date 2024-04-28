FROM python:3.12-slim

# Set the working directory
USER root

RUN useradd --create-home --shell /bin/bash app_user


#Copy the src
WORKDIR /home/app_user
COPY requirements.txt /home/app_user/requirements.txt

# Install the dependencies
RUN pip3 install --no-cache-dir -r requirements.txt

USER app_user

COPY test/ /home/app_user/test
COPY csv_reconciler /home/app_user/csv_reconciler

COPY setup.py /home/app_user/setup.py
COPY install.sh /home/app_user/install.sh

# Run the tests
RUN python3 -m unittest

# Install the package
RUN bash install.sh

CMD ["bash"]
