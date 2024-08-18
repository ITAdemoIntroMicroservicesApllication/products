FROM python:3.9-alpine
WORKDIR /app
COPY requirements.txt ./
RUN pip install -r requirements.txt
COPY . .
EXPOSE 5000
CMD ["python", "./services/products.py"]

## Use an official Python runtime as a parent image
#FROM python:3.9-slim
#
## Set the working directory in the container
#WORKDIR /app
#
## Copy the current directory contents into the container at /app
#ADD . /app
#
## Install any needed packages specified in requirements.txt
#RUN pip install --no-cache-dir -r requirements.txt
#
## Make port 5000 available to the world outside this container
#EXPOSE 5000
#
## Run Gunicorn with specified arguments
#CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:5000", "services.products:app"]
