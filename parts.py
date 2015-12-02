#!/usr/bin/env python

import kidraw
from kidraw import schematic as sch
from kidraw import footprint as fp
from kidraw import ipc
from kidraw.schematic import library as slib
from kidraw.footprint import library as flib

l = kidraw.Library('parts')
l.devices = [
    kidraw.Device(slib.vcc('+3.3V')),
    kidraw.Device(slib.vcc('+5V')),
    kidraw.Device(slib.vcc('Line')),
    kidraw.Device(slib.gnd()),
    kidraw.Device(slib.power_flag()),
    kidraw.Device(slib.resistor(),
                  [flib.chip(flib.imperial('0805'))]),
    kidraw.Device(slib.capacitor(),
                  [flib.chip(flib.imperial('0805'))]),
    kidraw.Device(slib.led(),
                  [flib.chip(flib.imperial('0805'), polarized=True)]),
    kidraw.Device(slib.test_point(), [flib.test_point(1)]),
]

s = sch.Schematic('Si1869DH', description='Load Switch with Level Shift')
with sch.ICBuilder(s, 6) as ic:
    ic.side(sch.Pin.Left)
    ic.pin(4, name='Vin', type=sch.Pin.Passive)
    ic.pin(5, name='SW', type=sch.Pin.Input)
    ic.side(sch.Pin.Right)
    ic.pin([2, 3], name='Vout', type=sch.Pin.Passive)
    ic.pin(1, name='Slew', type=sch.Pin.Passive)
    ic.side(sch.Pin.Up)
    ic.pin(6, name='Bias', type=sch.Pin.Passive)
l.devices.append(kidraw.Device(s, [flib.SC70(6)]))

s = sch.Schematic('AP2120N', description='3.3V LDO Regulator')
with sch.ICBuilder(s, 3) as ic:
    ic.side(sch.Pin.Left)
    ic.pin(3, name='Vin', type=sch.Pin.Power)
    ic.side(sch.Pin.Right)
    ic.pin(2, name='Vout', type=sch.Pin.Power)
    ic.side(sch.Pin.Down)
    ic.gap(1)
    ic.pin(1, name='GND', type=sch.Pin.Power)
    ic.gap(1)
l.devices.append(kidraw.Device(s, [flib.SOT23(3)]))

s = sch.Schematic('STM32F042K6T6', description='ARM 32-bit MCU with USB')
with sch.ICBuilder(s, 32, pin_len=300, target_aspect_ratio=3) as ic:
    ic.side(sch.Pin.Up)
    ic.gap(1)

    ic.side(sch.Pin.Left)
    ic.pin([1, 5, 17], name='VDD', type=sch.Pin.Power)
    ic.gap(1)
    ic.pin(31, name='BOOT', type=sch.Pin.Input)
    ic.gap(1)
    ic.pin(4, name='~RST', type=sch.Pin.Input)
    ic.gap(2)
    ic.pin(21, name='USB_D-', type=sch.Pin.Bidirectional)
    ic.pin(22, name='USB_D+', type=sch.Pin.Bidirectional)
    ic.gap(2)
    ic.pin(23, name='SWDIO', type=sch.Pin.Bidirectional)
    ic.pin(24, name='SWCLK', type=sch.Pin.Bidirectional)
    ic.gap(2)    
    ic.pin([16, 32], name='VSS', type=sch.Pin.Power)

    # PWM channels
    ic.side(sch.Pin.Right)
    ic.gap(3)
    for pwm, numch, startpin in ((2, 4, 6),
                                 (3, 1, 12)):
        for i in range(numch):
            ic.pin(startpin+i, name='PWM{0}_{1}'.format(pwm, i+1), type=sch.Pin.Output)
            ic.gap(1)
l.devices.append(kidraw.Device(s, [flib.QFP(
    ipc.Dimension(6.8, 7.2),
    ipc.Dimension(8.8, 9.2),
    ipc.Dimension(0.45, 0.75),
    ipc.Dimension(0.3, 0.45),
    pitch=0.8,
    num_pins=32)
]))

s = sch.Schematic('2 Post Terminal', refdes='CON', description='2-post terminal', show_name=False)
with sch.ICBuilder(s, 2) as ic:
    ic.side(sch.Pin.Right)
    ic.pin(1, name='+', type=sch.Pin.Passive)
    ic.pin(2, name='-', type=sch.Pin.Passive)
# http://www.digikey.com/product-detail/en/OSTTE020104/ED2740-ND/2351816
f = fp.Footprint(name='OSTTE020104', description='Interlockable 3.5mm screw terminals')
x = 3.5/2
f.features = [
    fp.ThroughHolePad(name=1, center=(-x, 0), size=(1.7, 1.7), drill_size=1.2),
    fp.ThroughHolePad(name=2, center=(x, 0), size=(1.7, 1.7), drill_size=1.2),
    fp.Line(start=(-3.5, 3.4), end=(-3.5, -3.6)),
    fp.Line(start=(-3.5, -3.6), end=(3.5, -3.6)),
    fp.Line(start=(3.5, -3.6), end=(3.5, 3.4)),
    fp.Line(start=(3.5, 3.4), end=(-3.5, 3.4)),
    fp.Line(start=(-x, -3), end=(-x, -3.6), line_width=0.1),
    fp.Line(start=(x, -3), end=(x, -3.6), line_width=0.1),
]
l.devices.append(kidraw.Device(s, [f]))

s = sch.Schematic('USB Micro', refdes='CON', description='USB Micro Connector')
with sch.ICBuilder(s, 5) as ic:
    ic.side(sch.Pin.Right)
    ic.pin(1, name='VBus', type=sch.Pin.Power)
    ic.pin(2, name='D+', type=sch.Pin.Bidirectional)
    ic.pin(3, name='D-', type=sch.Pin.Bidirectional)
    ic.pin(5, name='GND', type=sch.Pin.Power)
# http://www.digikey.com/product-detail/en/10118194-0001LF/609-4618-1-ND/2785382
f = fp.Footprint(name='SMD RA', description='Micro B right angle SMD')
f.features = [
    # Contacts
    fp.SurfaceMountPad(name=1, center=(-1.3, -2.7), size=(0.4, 1.4)),
    fp.SurfaceMountPad(name=2, center=(-0.65, -2.7), size=(0.4, 1.4)),
    fp.SurfaceMountPad(name=3, center=(0, -2.7), size=(0.4, 1.4)),
    fp.SurfaceMountPad(name=4, center=(0.65, -2.7), size=(0.4, 1.4)),
    fp.SurfaceMountPad(name=5, center=(1.3, -2.7), size=(0.4, 1.4)),

    # Rear strain relief tabs
    # TODO: need support for oval drill holes here.
    fp.ThroughHolePad(name='shell', shape=fp.PadShape.Obround, center=(-2.5, -2.7), size=(1.25, 0.95), drill_size=0.85),
    fp.ThroughHolePad(name='shell', shape=fp.PadShape.Obround, center=(2.5, -2.7), size=(1.25, 0.95), drill_size=0.85),

    # Front strain relief tabs
    fp.ThroughHolePad(name='shell', shape=fp.PadShape.Obround, center=(-3.5, 0), size=(0.9, 1.55), drill_size=1.15),
    fp.ThroughHolePad(name='shell', shape=fp.PadShape.Obround, center=(3.5, 0), size=(0.9, 1.55), drill_size=1.15),

    # Front solder pads (for more mechanical strength)
    fp.SurfaceMountPad(name='shell', center=(-1, 0), size=(1.5, 1.5)),
    fp.SurfaceMountPad(name='shell', center=(1, 0), size=(1.5, 1.5)),

    # PCB edge marker
    fp.Line(start=(-5, 1.45), end=(5, 1.45), layer=fp.Layer.TopAssembly),

    # Outline
    fp.Line(start=(-4, 2.15), end=(4, 2.15), layer=fp.Layer.TopAssembly),
    fp.Line(start=(4, 2.15), end=(4, -2.85), layer=fp.Layer.TopAssembly),
    fp.Line(start=(4, -2.85), end=(-4, -2.85), layer=fp.Layer.TopAssembly),
    fp.Line(start=(-4, -2.85), end=(-4, 2.15), layer=fp.Layer.TopAssembly),
]
l.devices.append(kidraw.Device(s, [f]))

# Switch
A, L, T, W = (
    ipc.Dimension.from_nominal(6, 0.2),
    ipc.Dimension.from_nominal(10, 0.2),
    ipc.Dimension.from_nominal(0.8, 0.1),
    ipc.Dimension.from_nominal(0.7, 0.1))
pitch = 4.5
spec = ipc.LandPatternSize.gullwing_leads(
    ipc.LandPatternSize.Nominal, A, L, T, pitch)
f = fp.Footprint(name='TL3301NF160QG', description='SMT Tactile switch')
f.from_ipc(ipc.in_line_pin_device(A, A, L, L, T, W, pitch, 2, 0, spec))
f.features.append(fp.Circle(radius=3.5/2))
f.features.append(fp.Circle(radius=3.5/2, layer=fp.Layer.TopAssembly))
s = sch.Schematic(name='Switch SPST', refdes='S', show_pin_text=False, show_name=False)
s.features = [
    sch.Pin(numbers=[1, 2], pos=(-100, 0), len=50, dir=sch.Pin.Right, type=sch.Pin.Passive),
    sch.Pin(numbers=[3, 4], pos=(100, 0), len=50, dir=sch.Pin.Left, type=sch.Pin.Passive),
    sch.Line(points=[(-50, 0), (50, 50)]),
]
l.devices.append(kidraw.Device(s, [f]))

l.save()
