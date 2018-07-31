# Raspberry at Axiacore door

Our PI is **Raspberry PI B+ V1.2**

Next are the steps for setting up the raspberry.

1. Download raspbian lite. https://www.raspberrypi.org/downloads/raspbian/

2. Copy the image file into the SD card using Etcher

3. Connect the raspberry and set up the wifi using raspi_config and reboot.

4. Add the IP address to your ansible hosts file /etc/ansible/hosts, like:
  ```
  [raspberry]
  192.168.1.XXX
  ```

5. Run:
  ```sh
  $ ansible-playbook playbook.yml --ask-pass
  ```
