#!/bin/bash

# Activate the tensorflow_env Conda environment
source activate tensorflow_env

# Check if the JAR file exists in the ~/lib directory
if [ -f ~/lib/gcs-connector-hadoop3-2.1.6-shaded.jar ]; then
    echo "BigQuery connector JAR file exists."
else
    read -p "BigQuery connector JAR file does not exist locally. Do you want to download it now? (Y/N) " response
    if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]; then
        echo "Downloading BigQuery connector JAR file..."
        mkdir -p ~/lib
        wget https://repo1.maven.org/maven2/com/google/cloud/bigdataoss/gcs-connector/hadoop3-2.1.6/gcs-connector-hadoop3-2.1.6-shaded.jar -P ~/lib
        echo "Download complete."
    else
        echo "Please download the BigQuery connector JAR file and rerun the script."
        exit 1
    fi
fi

# Create the lib/ directory if it doesn't exist
mkdir -p lib

# Move the BigQuery connector JAR file to the lib/ directory
mv ~/lib/gcs-connector-hadoop3-2.1.6-shaded.jar lib/

# Update Spark session configuration to use the JAR file in the lib/ directory
pyspark --jars lib/gcs-connector-hadoop3-2.1.6-shaded.jar

