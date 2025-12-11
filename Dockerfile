# Use nginx alpine for lightweight static file serving
FROM nginx:alpine

# Copy the HTML file to nginx's default public directory
COPY noel.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
