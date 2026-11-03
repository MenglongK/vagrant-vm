## PERMISSION (no need to use sudo)
```bash
# To set permission
chmod u+x <file name>
# To set permission by symbolic
chmod u=rwx,g=rw,o=r <file name>
# To set permisson by absolute
chmod 777 <file name>
# To add permission
chmod +x <file name>
# To remove permission
chmod -x <file name>
# To link to other path
ln --symbolic ~/shellscripts/demo.sh ~/demo-link
```
## OWNERSHIP (need to use sudo)
```bash
# To change ownership (user:group)
sudo chown <name of user>:<name of group> <file name>
# shortcut
sudo chown <name of user & group> <file name>
# To change ownership only user
sudo chown <name of user> <file name>
# To change ownership only group
sudo chown :<name of group> <file name>
# To change ownership all file/folder in folder
sudo chown -R <name of user>:<name of group> <directory>
sudo chown --recursive <name of user>:<name of group> <directory>
```
## SUDOER
```bash
# To view config of permission
sudo visudo
# To make user as grant access without password
<name of user> ALL=(ALL:ALL) NOPASSWD:ALL
```