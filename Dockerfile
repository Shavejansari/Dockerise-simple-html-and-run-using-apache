# Use httpd as the base image
FROM httpd

# Set the working directory
WORKDIR /usr/local/apache2/htdocs

# Copy the HTML files and other static assets
COPY . .

# Expose the port that the web server will listen on
EXPOSE 80

# Start the web server
CMD ["httpd", "-D", "FOREGROUND"]

