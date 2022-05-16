#!/bin/bash
apassword=$(cat /config/Secret/apassword)
rpassword=$(cat /config/Secret/rpassword)

groupadd alice
useradd -g alice -G users -G sudo alice
chsh -s /bin/zsh alice
chown alice:alice -R /home/alice/
echo "alice:$apassword" | chpasswd

groupadd r2r0m0c0
useradd -g r2r0m0c0 -G users -G sudo r2r0m0c0
chsh -s /bin/zsh r2r0m0c0
chown r2r0m0c0:r2r0m0c0 -R /home/r2r0m0c0/
echo "r2r0m0c0:$rpassword" | chpasswd

