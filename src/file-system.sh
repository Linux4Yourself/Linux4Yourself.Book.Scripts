mkdir -pv $LIN/{usr,etc,var}
mkdir -pv $LIN/{boot,home,mnt,opt,srv}

mkdir -pv $LIN/etc/{opt,sysconfig}
mkdir -pv $LIN/lib/firmware
mkdir -pv $LIN/media/{floppy,cdrom}
mkdir -pv $LIN/usr/{,local/}{bin,include,lib,sbin,src,lib32}
mkdir -pv $LIN/usr/{,local/}share/{color,dict,doc,info,locale,man}
mkdir -pv $LIN/usr/{,local/}share/{misc,terminfo,zoneinfo}
mkdir -pv $LIN/usr/{,local/}share/man/man{1..8}
mkdir -pv $LIN/var/{cache,local,log,mail,opt,spool}
mkdir -pv $LIN/var/lib/{color,misc,locate}

ln -sfv usr/bin $LIN/bin
ln -sfv usr/lib $LIN/lib
ln -sfv usr/sbin $LIN/sbin
ln -sfv usr/lib32 $LIN/lib32

ln -sfv /run $LIN/var/run
ln -sfv /run/lock $LIN/var/lock

install -dv -m 0750 $LIN/root
install -dv -m 1777 $LIN/tmp $LIN/var/tmp
