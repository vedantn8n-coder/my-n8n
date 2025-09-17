# Use the official n8n image
FROM n8nio/n8n:latest

# Set working directory
WORKDIR /data

# Copy your workflow JSON into the container
COPY temp.json /data/temp.json

# Expose the default n8n port
EXPOSE 5678

# Import workflow, then start n8n (wrapped in sh -c to allow &&)
CMD ["sh", "-c", "n8n import:workflow --input=/data/temp.json && n8n start"]
