**A simple 3D-printed case for the Adafruit GPS chip with antenna and USB adapters**

**Goals**: simplicity, reliability, undoability

**Non-goals**: minimizing volume


### Printed Parts

<table>
  <tr>
    <td>
      <b>Base</b><br />
      <img width="130" src="https://raw.githubusercontent.com/OpenStreetDetails/gps-case/master/doc/case_base.png">
    </td>
    <td>
      <b>Back</b><br />
      <img width="130" src="https://raw.githubusercontent.com/OpenStreetDetails/gps-case/master/doc/case_back.png">
    </td>
    <td>
      <b>Lid</b><br />
      <img width="130" src="https://raw.githubusercontent.com/OpenStreetDetails/gps-case/master/doc/case_lid.png">
    </td>
    <td>
      <b>Chip Support</b><br />
      <img width="130" src="https://raw.githubusercontent.com/OpenStreetDetails/gps-case/master/doc/chip_support.png">
    </td>
    <td>
      <b>Jumper Grip</b><br />
      <img width="130" src="https://raw.githubusercontent.com/OpenStreetDetails/gps-case/master/doc/jumper_grip.png">
    </td>
  </tr>
</table>


### Commercial Components

<table>
  <tr>
    <td><img width="120" src="http://www.adafruit.com/images/480x360/64-00.jpg"></td>  <!-- breadboard -->
    <td><img width="120" src="http://www.adafruit.com/images/480x360/746-00.jpg"></td> <!-- chip -->
    <td><img width="120" src="http://www.adafruit.com/images/480x360/954-00.jpg"></td> <!-- USB/serial -->
  </tr>
  <tr>
    <td><img width="120" src="http://www.adafruit.com/images/480x360/758-00.jpg"></td><!-- jumpers -->
    <td><img width="120" src="http://www.adafruit.com/images/480x360/851-00.jpg"></td><!-- adapter -->
    <td><img width="120" src="http://www.adafruit.com/images/480x360/960-00.jpg"></td><!-- antenna -->
  </tr>
</table>

<table>
  <tr>
    <td align="right">39.95</td>
    <td>
      <a href="http://www.adafruit.com/products/746">Adafruit Ultimate GPS Breakout - 66 channel w/10 Hz updates</a>
    </td>
  </tr>
  <tr>
    <td align="right">12.95</td>
    <td>
      <a href="http://www.adafruit.com/products/960">GPS Antenna - External Active Antenna - 3-5V 28dB 5 Meter SMA</a>
    </td>
  </tr>
  <tr>
    <td align="right">9.95</td>
    <td>
      <a href="http://www.adafruit.com/products/954">USB to TTL Serial Cable - Debug / Console Cable for Raspberry Pi</a>
    </td>
  </tr>
  <tr>
    <td align="right">5.00</td>
    <td>
      <a href="http://www.adafruit.com/products/64">Half-size breadboard</a>
    </td>
  </tr>
  <tr>
    <td align="right">3.95</td>
    <td>
      <a href="http://www.adafruit.com/products/851">SMA to uFL/u.FL/IPX/IPEX RF Adapter Cable</a>
    </td>
  </tr>
  <tr>
    <td align="right">0.1 * 7.95</td>
    <td>
      <a href="http://www.adafruit.com/products/758">Premium Male/Male Jumper Wires</a>
    </td>
  </tr>
  <tr>
    <!--
39.95 + 12.95 + 9.95 + 5.00 + 3.95 + (7.95 / 10)
    -->
    <td align="right"><b>72.60</b></td>
    <td></td>
  </tr>
</table>


### Assembly

- Break off and/or sand off the thin anti-warp layer from `base` and `lid`
- Rotate the breadboard so there are two "feet" on the left and three on the bottom
- Solder the pins that came with the chip to the chip
- Place `chip support` under the chip's other side
- Plug the chip into the breadboard at the top of column that is two in from the leftmost column (e.g. `c` or `h`, depending on your board)
- Insert the breadboard into `base`

#### USB adapter
- Connect the (red, black, green, white) jumpers to (VIN, GND, RX, TX) via the leftmost column, optionally using `jumper grip` to hold the jumper wire plastic together
- Slip the USB adapter's cables through `back`'s simplest hole one at a time
- Connect the jumper wires to the adapter, securing the connection with electrical tape

#### Antenna adapter
- If this part isn't obvious, you have bigger problems

#### Finishing touches
- Fasten {`base`, `back`, `lid`} together, e.g. with electrical tape


### Can't we omit the breadboard and jumpers?

Absolutely — pull requests welcome!

I only included them because they made it even more trivial to design the case and I didn't care about the volume or the 5.80 USD.


### What about cooling?

There is none. The chip uses very little power (TODO: measure it), so this might not be a problem.


### [License: MIT](LICENSE.txt)
