# Setting up for the care-alliance application.

We will assume that everyone is running either mac or linux ubuntu.  Windows users will run linux ubuntu under vagrant as for the class.

We will use Rails 6.x.  For this version of Rails, you must install a current version of node.js, and you must also install yarn.  We will also have to install the database postgres, which will be our production database.

# Ubuntu setup (including for Ubuntu under vagrant)

sudo apt-get update    
sudo apt-get install npm    
sudo npm install npm@latest -g    
sudo npm cache-clean -f    
sudo npm install -g n    
sudo n stable    

At this point, you will have installed the latest stable version of node.js.  You should exit your command window and start a new one to get the right path statement.  Then, to install yarn, you do the following:

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -    
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list    
sudo apt install yarn 

Now you need to install and configure postgres: 

sudo apt-get install postgresql    
sudo apt-get install postgresql-contrib    
sudo apt-get install libpq-dev    
/usr/lib/postgresql/10/bin/initdb -E UTF8 ~/postgres       

Then do a whoami to know your current linux operating system ID. If you are running vagrant, it will be vagrant.  Then do: 
 
sudo -u postgres createuser <your linux userid> -s    
sudo service postgresql start    

# MacOS setup:

brew install yarn   
brew install postgresql    

Then do a whoami to know your current MacOS operating system ID.  Then do 

/usr/lib/postgresql/10/bin/initdb -E UTF8 ~/postgres      
sudo -u postgres createuser <your MacOS userid> -s    
sudo service postgresql start        

# Git repository setup (both MacOS and Ubuntu) 

Now make a fork of https://github.com/CodeTheDream/care-alliance .  Then clone that fork to your development machine.  Change directories to go inside the care-alliance directory.  Then add a remote: 

git remote add upstream https://github.com/CodeTheDream/care-alliance.git    

Now do: 

bundle install    
bin/rails db:create    
bin/rails db:migrate    

This completes the setup! Ask for help if you have problems with any of these stages.
