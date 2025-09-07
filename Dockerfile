# Use the official n8n image
FROM n8nio/n8n:latest

# Set working directory
WORKDIR /data

# Copy your workflow JSON into the container
COPY temp.json /data/workflows/temp.json

# Expose the default n8n port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]
