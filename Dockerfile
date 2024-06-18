#Use an Ubuntu-based image
FROM ubuntu:latest

#Set working directory
WORKDIR /app

#Install necessary packages
RUN apt-get update && \
    apt-get install -y fortune-mod cowsay netcat-openbsd

#Copy the Bash script into the container
COPY wisecow.sh /app/wisecow.sh

#Make the script executable
RUN chmod +x /app/wisecow.sh

#Expose the specified port
EXPOSE 4499

#Run the script
CMD ["/app/wisecow.sh"]
