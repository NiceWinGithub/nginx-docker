# Use the official NGINX image as the base
FROM nginx:latest

# Copy your NGINX configuration to the container
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the custom 50x.html error page into the container
COPY 50x.html /usr/share/nginx/html/50x.html

# Expose port 80 for HTTP traffic
EXPOSE 8080

# Start NGINX when the container starts
CMD ["nginx", "-g", "daemon off;"]
