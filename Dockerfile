# Use a lightweight Nginx image
FROM nginx:alpine

# Remove default Nginx files
RUN rm -rf /usr/share/nginx/html/*

# Copy all your project files into Nginx folder
COPY . /usr/share/nginx/html

# Expose web port
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
