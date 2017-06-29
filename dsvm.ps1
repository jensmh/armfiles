#
# dsvm.ps1
#

# Install Anaconda components
conda create --yes --name anaconda36 python=3.6
activate anaconda36 
conda install --yes django
conda install --yes scikit-learn
conda config --add channels conda-forge
conda install --yes djangorestframework=3.6.3
conda install --yes pandas

# Install chocolatey and additional applications
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
C:\ProgramData\chocolatey\bin\choco.exe install -y pycharm-community
cp "C:\Users\dsvmadmin\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\JetBrains\JetBrains PyCharm Community Edition 2017.1.4.lnk" C:\Users\Public\Desktop\
C:\ProgramData\chocolatey\bin\choco.exe install -y googlechrome
