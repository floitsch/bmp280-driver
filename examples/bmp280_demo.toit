// Copyright (C) 2021 Toitware ApS. All rights reserved.
// Use of this source code is governed by a MIT-style license that can be found
// in the LICENSE file.

import gpio
import i2c
import bmp280

main:
  bus := i2c.Bus
    --sda=gpio.Pin 21
    --scl=gpio.Pin 22

  device := bus.device bmp280.I2C-ADDRESS

  driver := bmp280.Bmp280 device

  driver.on

  print "$driver.read-temperature C"
  print "$driver.read-pressure Pa"