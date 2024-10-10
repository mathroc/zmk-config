editor:
    echo https://nickcoutsos.github.io/keymap-editor/

unzip:
    cd firmware; unzip -o ~/Downloads/firmware.zip

flash part device:
    sudo umount -q /media/tmp || /bin/true
    sudo mount /dev/{{device}} /media/tmp
    sudo cp firmware/cradio_{{part}}-nice_nano_v2-zmk.uf2 /media/tmp
    sudo umount -l /media/tmp
    dmesg -W
