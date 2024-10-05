# Use the official Neo4j Docker image as the base
FROM neo4j:latest

# Set the default environment variables (adjust as needed)
ENV NEO4J_AUTH=none
# ENV NEO4J_dbms_security_auth__enabled=false

# Copy the CQL file into the container
COPY ./data.cql ./data.cql

# Copy the custom startup script into the container
COPY ./load-data.sh ./load-data.sh

# Make the script executable
RUN chmod +x ./load-data.sh

# Expose ports for Neo4j
EXPOSE 7474 7687
