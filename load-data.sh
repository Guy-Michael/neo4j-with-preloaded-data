#!/bin/bash

# Wait until Neo4j is ready (cypher-shell is available)
until cypher-shell -u neo4j -p dsa "RETURN 1" >/dev/null 2>&1; do
    echo "Waiting for Neo4j to be ready..."
    sleep 2
done

# Run the Cypher script to load the data
echo "Running the Cypher script..."
cypher-shell -u neo4j -p _ -f ./data.cql

echo "Cypher script executed successfully. Database is ready."