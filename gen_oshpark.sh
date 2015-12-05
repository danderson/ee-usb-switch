#!/bin/bash

cd gerber
rm usb_switch.zip
mv -f usb_switch-B.Cu.gbr      usb_switch.gbl
mv -f usb_switch-B.Mask.gbr    usb_switch.gbs
mv -f usb_switch-B.SilkS.gbr   usb_switch.gbo
mv -f usb_switch.drl           usb_switch.xln
mv -f usb_switch-Edge.Cuts.gbr usb_switch.gko
mv -f usb_switch-F.Cu.gbr      usb_switch.gtl
mv -f usb_switch-F.Mask.gbr    usb_switch.gts
mv -f usb_switch-F.SilkS.gbr   usb_switch.gto
rm -f usb_switch-*.*
zip usb_switch.zip usb_switch.*
