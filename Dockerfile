# Use the official Nginx image
FROM nginx:1.25.3

# Remove the default Nginx index.html and replace it with our own
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to allow web traffic
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
