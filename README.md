# Auto-Reboot
Auto Reboot if connection internet down

Download file

wget https://raw.githubusercontent.com/VdDejavu10/Auto-Reboot/refs/heads/main/auto_reboot.sh

chmod +x auto_reboot.sh

Tambahkan di Schedule

crontab -e

*/5 * * * * bash /root/auto_reboot.sh >> /root/auto_reboot.log 2>&1

Auto delete log setiap jam 00.00

0 0 * * * bash sed -i 'd' /root/auto_reboot.log
