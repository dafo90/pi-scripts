#! /bin/sh

set -e

echo "Installing shutdown button...\n"
sudo cp shutdown-button/shutdown-button.py /usr/local/bin/
sudo chmod +x /usr/local/bin/shutdown-button.py

echo "Installing fan manager...\n"
sudo cp fan-manager/fan-manager.py /usr/local/bin/
sudo chmod +x /usr/local/bin/fan-manager.py

echo "Starting shutdown button...\n"
sudo cp shutdown-button/shutdown-button.sh /etc/init.d/
sudo chmod +x /etc/init.d/shutdown-button.sh
sudo update-rc.d shutdown-button.sh defaults
sudo /etc/init.d/shutdown-button.sh start

echo "Starting shutdown button...\n"
sudo cp fan-manager/fan-manager.sh /etc/init.d/
sudo chmod +x /etc/init.d/fan-manager.sh
sudo update-rc.d fan-manager.sh defaults
sudo /etc/init.d/fan-manager.sh start

echo "All scripts installed."