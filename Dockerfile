FROM nginx

# Install git
RUN apt-get update && apt-get install -y git

# Remove default contents in /usr/share/nginx/html
RUN rm -rf /usr/share/nginx/html/*

# Clone repository from GitHub
RUN git clone https://github.com/setrasariputra/HelloWorld-HTML.git /usr/share/nginx/html

# Expose port 80
EXPOSE 80
