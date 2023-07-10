#!/bin/bash

# Define the desired Maven version
maven_version=$1

# Define the download URL
download_url="https://apache.osuosl.org/maven/maven-3/${maven_version}/binaries/apache-maven-${maven_version}-bin.tar.gz"

# Download Maven
echo Downloading...$download_url
mkdir tmp
curl -fsSL "$download_url" -o tmp/apache-maven.tar.gz
#wget "$download_url" tmp/apache-maven.tar.gz

# Extract Maven to a temporary directory
tar xf tmp/apache-maven.tar.gz -C tmp

# Set up environment variables
export MAVEN_HOME="tmp/apache-maven-${maven_version}"
export PATH="$MAVEN_HOME/bin:$PATH"
echo export PATH="$PATH" >> env.sh

# Verify the installation
mvn --version
