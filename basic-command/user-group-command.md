## NOTE
Multi-user system: systems that support multiple users
There are 3 types of user:
1. **Root user**: 
- UID=0, highest priviledge
2. **System user**:
- create for running system service
- no home directory like normal user
3. **Normal user / Regular user**:
- normal user that use in system normally
```bash
cat /etc/passwd # Read user info the system
id # check id, gid, group

# Create new user but some command and doesn't have /home, /bin/bash => /bin/sh
sudo useradd <name of user>
# Command after customize to create /home, and shell to bash
sudo useradd --create-home --shell /bin/bash <name of user>
# Shortcut
sudo useradd -m -s /bin/bash <name of user>
# Create new user with password
sudo adduser <name of user>
# To check specific user
sudo id <name of user>
# To check last 10 line
tail /etc/passwd
# To check first 10 line
head /etc/passwd
# To change password
sudo passwd <name of user>
# To switch user with required password
su <name of user>
# To switch user without password
sudo su <name of user> # switch user only without change path
sudo su - <name of user> # switch user with fresh login
# To switch to root user
sudo su - root
# Delete user
sudo deluser <name of user>
sudo userdel <name of user>
tldr deluser

# Delete user and do the specific task
sudo deluser --remove-home <name of user>
sudo deluser --backup-to /home/vagrant --remove-home <name of user>
# Force to change password on the first login
sudo chage -d 0 <name of user> # need to change base on the first date of set password
sudo passwd -e <name of user> # set expire password immedately
# To grant access for user with fully docker command
sudo usermod -aG docker <name of user>
# Create new group
sudo groupadd <name of user>
# Add user to the group
sudo usermod -aG <name of group> <name of user>
# Delete user from the group
sudo deluser <name of group> <name of user>
```