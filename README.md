# proxmox-10gb-network-card-fix
Bash script to fix Proxmox Network fix

1. Go to Proxmox UI - PVE > shell
   
2. Create script file but running `touch proxmox-update-network-driver.sh` or download file by `wget`
   
3. Copy eveything in proxmox-update-network-driver.sh or skip this if you had dowloaded script file.

4. Give the script executable permissions by running the follow `chmod +x proxmox-update-network-driver.sh`

5. Make sure you update Network device name (ens8191f0,ens8191f1) this is mine, but you can find yours in Proxmox UI - PVE > System > Network

6. Final just run script in shell/
