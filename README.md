# Raspberry at AxiaCore

At this time resin.io is not working with our current wifi adapter. We should
check again later.

Our current wifi adapter is **TP-Link TL-WN723N**

Our current PI is **Raspberry PI B+ V1.2**

Next are the steps for setting up the raspberry.

1. Download raspbian https://www.raspberrypi.org/downloads/:

  If you are on OSX is better to use Pi Filler http://ivanx.com/raspberrypi/
  to manage the SD card copying.

2. Copy the image file into the SD card.

3. Make sure the wifi adapter is **unplugged** from the raspberry.

4. Insert the SD card into the raspberry, plug a LAN cable and turn it on.

  Wait for the instalation process and select the option to expand the file system, then choose to reboot.

5. Check the video output from the raspberry or on your local computer find the raspberry IP address running:
  ```sh
  $ nmap -sn 192.168.1.1/24
  ```

6. Add the IP address to your ansible hosts file /etc/ansible/hosts, like:
  ```
  [raspberry]
  192.168.1.XXX
  ```

7. Run:
  ```sh
  $ ansible-playbook playbook.yml --ask-pass
  ```

8. Connect the wifi adapter to the raspberry

9. Dance
