# Use the official n8n image
FROM n8nio/n8n:latest

# Set working directory (default inside n8n image is /home/node/.n8n, but we’ll use /data for clarity)
WORKDIR /data

# Copy your workflow JSON into the container
COPY temp.json /data/temp.json

# Expose the default n8n port
EXPOSE 5678

# Import workflow, then start n8n
CMD n8n import:workflow --input=/data/temp.json && n8n start
