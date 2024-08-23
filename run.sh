#!/bin/zsh

# setting up the project
echo "Setting up the project 🚀"
echo "V1 1️⃣"
# Store the current path in a variable
current_path=$PWD

# Print the current path
echo "The current working directory is: $current_path"

# cd backend
#creating virtual environment
echo "Creating virtual environment 📦"
virtualenv $current_path/the_minimalist/backend/env
echo "Virtual environment created successfully"
echo ""

#activating virtual environment
echo "Activating virtual environment 📦"
source $current_path/the_minimalist/backend/env/bin/activate
echo "Virtual environment activated successfully"
echo ""

#installing requirements
echo "Installing requirements 📦"
cd ..
pip3 install -r $current_path/the_minimalist/requirements.txt
echo "Requirements installed successfully"
echo ""

#running the server
echo "Running the server 🚀"
python3 $current_path/the_minimalist/backend/app.py
