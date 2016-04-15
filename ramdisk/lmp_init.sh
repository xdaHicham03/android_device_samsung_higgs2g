#lmp_init script

# /system has been mounted as read-only filesystem. Remount it as rw
mount -o remount,rw /system

#set executable permission to the hwtest setup scripts
chmod 755 /system/hwtest/test_common/*
