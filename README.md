# linux-workspace-setup
This is a repository with the steps needed to configure my linux/max cli workspace setup.


## Steps





1.  Update & Upgrade
```bash
sudo apt update
sudo apt upgrade
```

2.  Install zsh
```bash
sudo apt install zsh
zsh --version
chsh -s $(which zsh) 
```
* exit and relaunch
* In the menu select 2

3.  Install Oh-my-zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
4. configure Zsh
    * Create alias file
     curl -s -o ~/.aliases https://raw.githubusercontent.com/zangrum/linux-workspace-setup/master/.aliases
    * configure Oh-my-zsh
    add the line "source $HOME/.aliases
    find the line ZSH_THEME and change it to "jreese"
    add plugins



5. Create ssh keys
ssh-keygen -t rsa -b 4096
6. Create GPG keys
gpg --full-generate-key
gpg --list-secret-keys --keyid-format=long
gpg --armor --export 3996F5D74A285295

7. make codebase directory

8.  Install Terraform
sudo apt install  software-properties-common gnupg2 curl
curl https://apt.releases.hashicorp.com/gpg | gpg --dearmor > hashicorp.gpg
sudo install -o root -g root -m 644 hashicorp.gpg /etc/apt/trusted.gpg.d/
sudo apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt install terraform
terraform --version

