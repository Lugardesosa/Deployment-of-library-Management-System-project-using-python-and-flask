# Use an official python runtime as a parent image 
FROM python:3.10-slim 

# Set up the working Directory
WORKDIR /usr/src/app

# Copy the current directory content into the container at /usr/src/app
COPY . .

# Install any required packages specified in requirement.txt
RUN pip Install--no-cache-dir -r requirements.txt

# Make port 5000 port available to the world outside this container
EXPOSE 5OOO

#Define environment variables 
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Run Flask application
CMD [ "flask" "run" ]

