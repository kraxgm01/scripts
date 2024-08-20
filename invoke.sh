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
    /bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
echo ""


#checking python version
echo "Checking Python version 🐍"
if which python3 > /dev/null 2>&1
then
    echo "Python version: $(python --version 2>&1)"
    echo "Python is installed"
else
    echo "Python is not installed"
    #install python
fi
echo ""

#checking pip version
echo "Checking Pip version 📦"
if which pip > /dev/null 2>&1
then
    echo "Pip version: $(pip --version 2>&1)"
    echo "Pip is installed"
else
    echo "Pip is not installed"
fi
echo ""



