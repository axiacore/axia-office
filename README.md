# Raspberry at AxiaCore

Our current wifi adapter is **TP-Link TL-WN723N**

Our current PI is **Raspberry PI B+ V1.2**

Next are the steps for setting up the raspberry.

1. Download raspbian lite. https://www.raspberrypi.org/downloads/

2. Copy the image file into the SD card. https://www.raspberrypi.org/documentation/installation/installing-images/README.md

3. Log into the raspberry and configure the network and get the IP address.
  ```
  $ sudo vi /etc/wpa_supplicant/wpa_supplicant.conf
  ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
  update_config=1
  network={
    ssid="AxiaCore"
    psk="wifipass"
  }
  ```

4. Run sudo raspi-config and expand the file system.
  - Set the encoding to: en_US.UTF-8
  - Set the overclock to max
  - Reboot

5. Add the IP address to your ansible hosts file /etc/ansible/hosts, like:
  ```
  [raspberry]
  192.168.1.XXX
  ```

6. Run:
  ```sh
  $ ansible-playbook playbook.yml --ask-pass
  ```

7. Dance
