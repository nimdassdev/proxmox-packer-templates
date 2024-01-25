# renovate: datasource=custom.debianLinuxRelease
name           = "debian-11-template"
iso_file       = "debian-11.1.0-amd64-netinst.iso"
iso_url        = "https://cdimage.debian.org/mirror/cdimage/archive/11.1.0/amd64/iso-cd/debian-11.1.0-amd64-netinst.iso"
iso_checksum   = ""
http_directory = "./http/debian"
boot_command = [
  "<esc><wait>",
  "install ",
  " preseed/url=http://{{ .HTTPIP }}:{{ .HTTPPort }}/preseed.cfg ",
  "auto ", "locale=en_US.UTF-8 ",
  "kbd-chooser/method=us ",
  "keyboard-configuration/xkb-keymap=us ",
  "netcfg/get_hostname=debian ",
  "netcfg/get_domain=local ",
  "fb=false ",
  "debconf/frontend=noninteractive ",
  "console-setup/ask_detect=false ",
  "console-keymaps-at/keymap=us ",
  "grub-installer/bootdev=/dev/sda ",
  "passwd/username=packer ",
  "passwd/user-fullname=packer ",
  "passwd/user-password=packer ",
  "passwd/user-password-again=packer ",
  "<enter>"
]
provisioner = [
  "userdel --remove --force packer"
]

