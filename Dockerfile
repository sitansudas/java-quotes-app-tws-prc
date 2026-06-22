# 1 Base image (OS)

FROM eclipse-temurin:21-jdk

# 2 working directory for the app
WORKDIR /app

# 3 copy the code from your host to the container (working directory)
COPY src/Main.java /app/
COPY quotes.txt quotes.txt

# 4 Run the command to install libs or packages or to compile the code
RUN javac Main.java

# 5 Expose the port no listed on the README or instructed by the developer
EXPOSE 8000

# 6 Serve the app and keep it running
CMD ["java","Main"]


