#!/usr/bin/env python

import kidraw
from kidraw import stdlib as std
from kidraw.icbuilder import ICBuilder

l = kidraw.Library()

std.resistor(l)
std.capacitor(l)
std.led(l)
std.vcc(l, '+3.3V')
std.vcc(l, '+5V')
std.vcc(l, '+12V')
std.gnd(l)
std.power_flag(l)
std.test_point(l)

d = l.device('FSM4JSMA').refdes('S').description('Switch SPST SMD').hide_name().hide_pin_text()
d.pin(1).passive()
d.pin(2).passive()
s = d.schematic()
s.line((-50, 0), (50, 50))
s.pin(1).pos(-100, 0).len(50).dir(kidraw.RIGHT)
s.pin(2).pos(100, 0).len(50).dir(kidraw.LEFT)

d = l.device('Si1869DH').description('Load Switch with Level Shift')
d.pin(1).name('Slew').passive()
d.pin(2, 3).name('Vout').power()
d.pin(4).name('Vin').power()
d.pin(5).name('SW').input()
d.pin(6).name('Bias').passive()
b = ICBuilder()
b.dir(kidraw.RIGHT)
b.pin(4)
b.pin(5)
b.dir(kidraw.LEFT)
b.pin(2, 3)
b.pin(6)
b.dir(kidraw.UP)
b.pin(1)
b.build(d.schematic())

d = l.device('AP2120N').description('3.3V LDO Regulator')
d.pin(1).name('GND').power()
d.pin(2).name('Vout').power()
d.pin(3).name('Vin').power()
b = ICBuilder()
b.dir(kidraw.RIGHT).pin(3)
b.dir(kidraw.LEFT).pin(2)
b.dir(kidraw.UP).pin(1)
b.build(d.schematic())

d = l.device('STM32F042K6T6').description('ARM 32-bit MCU with USB')
d.pin(1, 5, 17).name('VDD').power()
d.pin(16, 32).name('VSS').power()
d.pin(4).name('~RST').input()
d.pin(6).name('PWM2_1').output()
d.pin(7).name('PWM2_2').output()
d.pin(8).name('PWM2_3').output()
d.pin(9).name('PWM2_4').output()
d.pin(10).name('PWM14').output()
d.pin(12).name('PWM3_1').output()
d.pin(13).name('PWM3_2').output()
d.pin(14).name('PWM3_3').output()
d.pin(15).name('PWM3_4').output()
d.pin(18).name('PWM1_1').output()
d.pin(19).name('PWM1_2').output()
d.pin(20).name('PWM1_3').output()
d.pin(21).name('USB_D-').bidirectional()
d.pin(22).name('USB_D+').bidirectional()
d.pin(23).name('SWDIO').bidirectional()
d.pin(24).name('SWCLK').bidirectional()
d.pin(31).name('BOOT').input()
b = ICBuilder()
b.dir(kidraw.LEFT)
for n in [6, 7, 8, 9, 10, 12, 13, 14, 15, 18, 19, 20]:
    b.pin(n)
b.dir(kidraw.RIGHT)
b.pin(1, 5, 17)
b.gap(1)
b.pin(4).active_low()
b.pin(31)
b.gap(1)
b.pin(21)
b.pin(22)
b.gap(1)
b.pin(23)
b.pin(24)
b.gap(1)
b.pin(16, 32)
b.build(d.schematic())

d = l.device('12V Conn').refdes('CON').description('12V terminal').hide_name()
d.pin(1).name('+').power()
d.pin(2).name('-').power()
b = ICBuilder().pin_len(100).dir(kidraw.LEFT)
b.pin(1)
b.pin(2)
b.build(d.schematic())

d = l.device('USB Micro').refdes('CON').description('USB Micro Connector')
d.pin(1).name('VBus').power()
d.pin(2).name('D+').bidirectional()
d.pin(3).name('D-').bidirectional()
d.pin(5).name('GND').power()
b = ICBuilder().pin_len(100).dir(kidraw.LEFT)
b.pin(1)
b.pin(2)
b.pin(3)
b.pin(5)
b.build(d.schematic())

l.write('parts')
