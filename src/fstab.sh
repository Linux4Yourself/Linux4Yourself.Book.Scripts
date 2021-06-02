cat > /etc/fstab << "EOF"
# Begin /etc/fstab

# file system  mount-point  type     options             dump  fsck
#                                                              order


/dev/sdX     /              ext4    defaults             1     1 
/dev/sdN     /boot/efi      vfat    umask=0077           0     0
/dev/sdY     swap           swap     pri=1               0     0

# End /etc/fstab
EOF
