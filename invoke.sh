#!/bin/zsh
echo "Initializing 🏁"
echo ""
echo ""

#checking if brew is installed
echo "Checking Brew version 🍺"
if which brew > /dev/null 2>&1
then
    echo "Brew version: $(brew --version 2>&1)"
    echo "Brew is installed"
else
    echo "Brew is not installed"
    #install brew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    # add to path
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$(whoami)/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
    echo ""
    echo "Brew installed successfully"
fi
echo ""




#checking python version
echo "Installing python 🐍"
#install python
brew install python
#export path
export PATH="$(brew --prefix python)/libexec/bin:$PATH"
echo ""
#checking python version
echo "Checking Python version 🐍"
echo "Python version: $(python --version 2>&1)"
echo ""
echo "Python installed successfully"
echo ""

#checking pip version
echo "Checking Pip version 📦"
if which pip > /dev/null 2>&1
then
    echo "Pip version: $(pip --version 2>&1)"
    echo "Pip is installed"
else
    echo "Error: Pip is not installed"
    #exit
    exit 1
fi
echo ""

#install pipx
echo "Installing Pipx 📦"
brew install pipx
echo ""
echo "Pipx installed successfully"
echo ""

#checking git version
echo "Checking Git version 📦"
if which git > /dev/null 2>&1
then
    echo "Git version: $(git --version 2>&1)"
    echo "Git is installed"
else
    echo "Git is not installed"
    #install git
    brew install git
    echo ""
    echo "Git installed successfully"
fi
echo ""

#download the file
echo "getting the file 🗂️"
#checking if file already exists
if [ -f the_minimalist.zip ]; then
    echo "File already exists"
else
    echo "File does not exist"
    #download the file
    url="https://rrrandombuck.s3.ap-south-1.amazonaws.com/the_minimalist.zip"
    curl -O "$url"
    echo "File downloaded successfully"
fi
echo ""

#unzip the file
echo "Unzipping the file 🗜️"
unzip the_minimalist.zip
echo "File unzipped successfully"
echo ""

#checking if virtualenv is installed
echo "Checking Virtualenv version 📦"
if which virtualenv > /dev/null 2>&1
then
    echo "Virtualenv version: $(virtualenv --version 2>&1)"
    echo "Virtualenv is installed"
else
    echo "Virtualenv is not installed"
    #install virtualenv
    brew install virtualenv
    echo ""
    echo "Virtualenv installed successfully"
fi
echo ""

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
pip install -r requirements.txt
echo "Requirements installed successfully"
echo ""

#running the server
echo "Running the server 🚀"
python backend/app.py




