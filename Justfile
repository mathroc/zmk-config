editor:
    echo https://nickcoutsos.github.io/keymap-editor/

unzip:
    mkdir -p firmware && cd firmware && unzip -o ~/Downloads/firmware.zip

flash part device:
    sudo umount -q /media/tmp || /bin/true
    sudo mount /dev/{{device}} /media/tmp
    sudo cp firmware/cradio_{{part}}-nice_nano_v2-zmk.uf2 /media/tmp
    sudo umount -l /media/tmp
    dmesg -W

reset device:
    sudo umount -q /media/tmp || /bin/true
    sudo mount /dev/{{device}} /media/tmp
    sudo cp firmware/settings_reset-nice_nano_v2-zmk.uf2 /media/tmp
    sudo umount -l /media/tmp
    dmesg -W
