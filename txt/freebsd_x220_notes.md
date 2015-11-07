## Info

* Battery life: http://www.cyberciti.biz/faq/freebsd-finding-out-battery-life-state-on-laptop/
* https://www.banym.de/freebsd/install-freebsd-11-on-thinkpad-t420
* https://cooltrainer.org/a-freebsd-desktop-howto/
* https://forums.freebsd.org/threads/thinkpad-x220-and-the-upcoming-freebsd-10.42716/
* https://github.com/jfrazelle/dotfiles
* http://www.schmidp.com/2014/01/07/zfs-full-disk-encryption-with-freebsd-10-part-2/

### X220

* http://www.myfixguide.com/manual/lenovo-thinkpad-x220-disassembly/
* https://support.lenovo.com/us/en/docs/MIGR-77127
* http://www.lenovo.com/shop/americas/content/user_guides/x220_x220i_x220tablet_x220itablet_ug_en.pdf

## Install

* Partition drive (laptop) to create UFS root, ZFS partition

## ZFS

* zfsroot on UEFI not supported in 10.x

## Network

```
ifconfig_wlan0="-ht WPA DHCP"
```

The `-ht` is key. Disables 802.11n, which `iwn` has problems with.

## Update system

```
freebsd-update fetch
freebsd-update install
```

## Desktop settings

Mostly follow:

* https://cooltrainer.org/a-freebsd-desktop-howto/
* https://forums.freebsd.org/threads/thinkpad-x220-and-the-upcoming-freebsd-10.42716/

## X11

```
pkg install xorg i3 i3lock i3status dmenu bash sakura slim firefox vim openvpn \
screen smartmontools mutt

pkg install zh-arphicttf ja-font-std zh-font-std iw-culmus iw-elmar-fonts \
ja-font-ipa ja-font-ipa-uigothic ja-font-ipaex ja-font-kochi ja-font-migmix \
ja-font-migu ja-font-mona-ipa ja-font-motoya-al ja-font-mplus-ipa \
ja-font-sazanami ja-font-shinonome ja-font-takao ja-font-ume ja-font-vlgothic \
hanazono-fonts-ttf ko-aleefonts-ttf ko-nanumfonts-ttf ko-unfonts-core \
anonymous-pro artwiz-aleczapka-en dejavu inconsolata-ttf terminus-font \
cantarell-fonts droid-fonts-ttf DoulosSIL ubuntu-font fonts-te isabella-ttf \
ecofont junicode khmeros padauk stixfonts CharisSIL urwfonts-ttf \
cyr-rfx-koi8-o paratype
```

Add font paths to xorg.conf Files section.

### slim

```
echo "slim_enable=yes" >> /etc/rc.conf
```

Pull in dotfiles.git.
