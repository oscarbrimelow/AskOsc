# Use nginx as the base image
FROM nginx:alpine

# Copy the entire Frontend directory to nginx's default serving directory
# This includes index.html, Headshot.jpg, and background images
COPY Frontend/ /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"] 