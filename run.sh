#!/bin/zsh

# setting up the project
echo "Setting up the project 🚀"

# cd the_minimalist
# cd backend
#creating virtual environment
echo "Creating virtual environment 📦"
virtualenv $PWD/the_minimalist/backend/env
echo "Virtual environment created successfully"
echo ""

#activating virtual environment
echo "Activating virtual environment 📦"
source $PWD/the_minimalist/backend/env/bin/activate
echo "Virtual environment activated successfully"
echo ""

#installing requirements
echo "Installing requirements 📦"
cd ..
pip3 install -r $PWD/the_minimalist/requirements.txt
echo "Requirements installed successfully"
echo ""

#running the server
echo "Running the server 🚀"
python3 $PWD/the_minimalist/backend/app.py
