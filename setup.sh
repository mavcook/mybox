# Setup an ubuntu box

sudo apt-get install curl

# Add chrome repo
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

# VS Code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

# numix
sudo add-apt-repository ppa:numix/ppa #TODO: need to press enter after this

# Can now install all da packages
sudo apt-get update
sudo apt-get install $(cat ./packages/ubuntu.txt)

# rename the default directories
ln -f ~/mybox/user-dirs.dirs ~/.config/user-dirs.dirs

pip install -r pipreqs.txt --user

dconf write /org/gnome/gnome-session/auto-save-session true


# TODO: #######################################
# install vs code extensions and config

# PLANK:
	#set plank as startup app ln -f ~/mconfig/autostart/ ~/.config/autostart

	# set plank items /home/mav/.config/plank/dock1/launchers/firefox.dockitem 		#dont know how to order

	# switch to transparent theme

# Pull any relevant git repos


## UI TWEAKS
# set numix as icon

#sudo nano /usr/share/applications/code.desktop # replace Icon=code to Icon=vscode

# enable  user-themes extension

# enable night shade

# set terminal transparency

# set filesystem to sort folders first

# add ctrl-d shortcuts to dirs

# remove programs
	# gnome-mahjongg gnome-mines libreoffice-draw libreoffice-math

# install fonts

# ignore file mode changes for git (all files show changed after transfer)
