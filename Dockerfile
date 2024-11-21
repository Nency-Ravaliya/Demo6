# Use the NGINX base image
FROM nginx:alpine

# Remove the default NGINX configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy your custom NGINX configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Copy your static website files to the NGINX directory
COPY . /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
