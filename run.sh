#!/bin/zsh

# setting up the project
echo "Setting up the project 🚀"

cd the_minimalist
cd backend
#creating virtual environment
echo "Creating virtual environment 📦"
python3 -m venv env
echo "Virtual environment created successfully"
echo ""

#activating virtual environment
echo "Activating virtual environment 📦"
source env/bin/activate
echo "Virtual environment activated successfully"
echo ""

#installing requirements
echo "Installing requirements 📦"
cd ..
pip3 install -r requirements.txt
echo "Requirements installed successfully"
echo ""

#running the server
echo "Running the server 🚀"
python backend/app.py
