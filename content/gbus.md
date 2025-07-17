---
Title: G Bus Assembly Guide
Template: manual
---

<div>
  <div class="step-image">
    <a href="https://www.diyrecordingequipment.com/products/g-bus-compressor-kit">
             <img src="https://cdn.shopify.com/s/files/1/0698/2265/products/GBusThreeQuarter_medium.jpg">    	
    </a>
  </div>
  <div class="step-header">Welcome to the G Bus assembly guide.</div>
  <div class="step-description">
      <p>Thank you for purchasing a <a href="https://www.diyrecordingequipment.com/products/g-bus-compressor-kit">G Bus</a>!</p>
      <p>If this is your first DIY project ever, we recommend reading our <a href="http://www.diyrecordingequipment.com/pages/getting-started">Getting Started Guide</a>.</p>
      <p>Because the G Bus is a big, complex project, we recommend setting aside several sessions to complete it. We have gone to great lenghts to make the assembly process clear and precise, but there are hundreds off opportunities for Murphy's Law to creep in, especially if you are in a rush.</p>
      <p>For this reason, we've included test steps at the end of every section, so that you can confirm everything up to that point is working. Please don't skip these tests! If you made a mistake, it will be a lot easier to catch before you've completed the rest of the build.</p>
      <p>This is an advanced project for builders who have experience with PCB soldering and using a multi-meter. The guide assumes you are comfortable with identifying resistors, populating components, soldering, clipping leads, etc. This guide spends less time reminding you to check values and polarity, so as you go make sure to double check the following before soldering:</p>
      <ul>
          <li>Resistor values</li>
          <li>IC orientation</li>
          <li>Diode polarity</li>
          <li>Electrolytic capacitor polarity</li>
          <li>Connector orientation</li>
      </ul>
      <p>The schematic can be found here: <a href="https://cdn.shopify.com/s/files/1/0698/2265/files/G_Bus_1.0_Schematic.pdf?v=1666358399">G Bus VCA Compressor Schematic PDF</a>.</p>
      <p>So, have fun, take your time, and Don't Panic.</p>
  </div>
</div>


<h2>Required Tools</h2>

@[/tools/soldering-iron.html]
@[/tools/solder.html]
@[/tools/wire-cutters.html]
@[/tools/pliers.html]
@[/tools/phillips.html]
@[/tools/flathead.html]
@[/tools/rew.html]
@[/tools/multi-meter.html]

<h2>Optional Tools</h2>

@[/tools/res-calc.html]
@[/tools/desoldering-pump.html]
@[/tools/tape.html]

<h2>Resistor Sorting Sheet</h2>
<div class="manual-step">
    <div class="step-image">
    <a href="%base_url%/assets/gbus/gbus-sorting-1.1.pdf" target="_blank">
    <img src="%base_url%/assets/pdf-download.png" />
    </a>
    </div>
    <div class="step-description">
        <p>To identify and keep track of every part in the kit, download and print the <a href="%base_url%/assets/gbus/gbus-sorting-1.1.pdf" target="_blank">Resistor Sorting Sheet (PDF)</a>.</p>
    </div>
</div>
    
<h2>Interactive Build Map</h2>
<div class="manual-step">
    <div class="step-image">
    <a href="https://maps.diy.re/gbus/" target="_blank">
    <img src="https://cdn.shopify.com/s/files/1/0698/2265/files/IBMicon.png" />
    </a>
    </div>
    <div class="step-description">
        <p>To easily find parts and keep track of which ones you have populated, use the <a href="https://maps.diy.re/gbus/">G Bus Interactive Build Map</a>.</p>
    </div>
</div>

<div id="assembly-guide-content">

<h2>Bypass Capacitors and IC Sockets (Bag 1)</h2>
<p>This is the only section of the guide that does not correspond to a certain circuit block. Since every block contains these parts, we'll save time by populating the entire board with these first.</p>
<p><strong>Note:</strong> If you notice a small red wire soldered to the bottom of your PCB, this is to fix a bug on the v1.0 PCBs. You can ignore the wire, just be careful not to break it during assembly.</p>
<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/gbus/01-sockets.jpg" target="_blank">
        <img src="%base_url%/assets/gbus/01-sockets-600.jpg" />
        </a>
    </div>
<h3 class="step-header">Populate Sockets and Bypass Capacitors</h3>

<div class="step-description">
        <p>Populate the yellow .1u capacitors in the positions marked CB etc. These capacitors give noise in the power rails a path to ground, "bypassing" the rest of the circuit. Hence the designator CB. Every CB part in the build is .1u, so the values are not marked on the PCB. These capacitors are not polarized.</p>
        <p>Insert the IC sockets so that the notches on the sockets align with the markings on the PCB. You may want to secure these with tape before soldering.</p>
</div>
 <div class="step-parts">
        <div class="part">
            <p>CB1-CB20<br>.1u cap (x31)</p>
            <img src="%base_url%/assets/parts/com-c004.png">
        </div>
        <div class="part">
            <p>IC1, IC6, IC7<br>DIP14 IC socket (x4)</p>
            <img src="%base_url%/assets/parts/com-h010.png">
        </div>
        <div class="part">
            <p>IC2-IC5<br>DIP8 IC socket (x8) </p>
            <img src="%base_url%/assets/parts/com-h009.png">
        </div>

    </div>
</div>

<h2>Power Sections (Bag 2)</h2> 
<p>The POWER 16V section receives the +/-16v and +48v power from the external SMPS and conditions it before sending it to the rest of the circuit. The inductors and capacitors form a low-pass filter which removes noise from the power rails. The capacitors also act as reservoirs of current, providing current quickly when the circuit requires it. This prevents the power rails for "sagging" (dipping below the rated voltage) when there is a large demand for current.</p>
<p>The POWER 12V section takes the filtered +/-16V rails and regulates them down to +/-12V. These rails act as DC reference points for several parts of the compressor, but do not power any active stages.</p>

<div class="manual-step">
    <div class="step-image">
    <a href="%base_url%/assets/gbus/02-regulators.jpg" target="_blank">
    <img src="%base_url%/assets/gbus/02-regulators-600.jpg" />
    </a>    
    </div>
    <h3 class="step-header">Populate Regulators</h3>

<div class="step-description">
        <p>There are two important things to note about the regulators. First, one side of the body is flat while the other is round. And second, one is 7812 (black top) while the other is 7912 (silver top).
        </p>
        <p>
                Place the 7812 in U1 and the 7912 in U2. Place both of them so that the shape of the body matches the
                shape on the circuit board. Double check the positions and orientation, then solder and trim.
        </p>
</div>
        <div class="part">
            <p>U1<br>7812 regulator</p>
            <img src="%base_url%/assets/parts/com-u024.png">
        </div>
        <div class="part">
            <p>U2<br>7912 regulator</p>
            <img src="%base_url%/assets/parts/com-u025.png">
        </div>
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/gbus/02-inductors.jpg" target="_blank">
        <img src="%base_url%/assets/gbus/02-inductors-600.jpg" />
        </a>
    </div>
    @[/mods/inductors.html]
        <div class="part">    
            <p>L1, L2<br>470u inductor (x2)</p>
            <img src="%base_url%/assets/parts/com-l008.png">
        </div>
    </div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/gbus/02-caps-large.jpg" target="_blank">
        <img src="%base_url%/assets/gbus/02-caps-large-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Populate Large Capacitors</h3>
<div class="step-description">
        <p>The four 2200u capacitors are polarized, so they must be placed in a certain direction. The positive lead is slightly longer, while the negative lead is marked with a stripe on the body of the capacitor. Place the capacitors with the positive lead in the pad next to the "+" marking on the PCB. The two 4.7u capacitors are not polarized.</p>
</div>
        <div class="part">    
            <p>C1-C4<br>2200u cap (x4)</p>
            <img src="%base_url%/assets/parts/com-c043.png">
   </div>
    <div class="part">    
            <p>C5, C6<br>4.7u cap (x2)</p>
            <img src="%base_url%/assets/parts/com-c021.png">
        </div>
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/gbus/02-xlrs.jpg" target="_blank">
        <img src="%base_url%/assets/gbus/02-xlrs-600.jpg" />
        </a>
    </div>
    @[/mods/xlrs.html]
      <div class="part">
            <p>J1<br>5-pin XLR female jack</p>
            <img src="%base_url%/assets/parts/com-j017.png">
        </div>
        <div class="part">
            <p>J2<br>5-pin XLR male jack</p>
            <img src="%base_url%/assets/parts/com-j016.png">
        </div>
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/gbus/02-test.jpg" target="_blank">
        <img src="%base_url%/assets/gbus/02-test-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Test Power Section</h3>
<div class="step-description">
        <p>For this and all following test steps, connect the power before testing and disconnect the power after.</p>
        <ol>
            <li>Set your multi-meter to read 20V DC.</li>
            <li>Place the black probe on a GND test point. The black probe should go to a GND test point for all future tests.</li>
            <li>Probe the +16V, -16V, +12V, and -12V test points with the red probe. The voltage should be within 0.5V of the rated voltage.</li>
        </ol>
</div>
</div>

<h2>Control Boards (Bag 3)</h2>

<p>In this section you'll build the user interface. There are two main things to watch out for in this section:</p>
    <ol>
        <li>Which side of the board to place the parts on. The control parts (switches and pots) need to go on the front of the control boards (CBs), while the resistors, capacitors, and connectors go on the back.</li>
        <li>The orientation of the rotary switches and the shrouded headers is important, and once you solder them in, they're very difficult to remove. Make sure the orientation matches the drawing on the PCB before soldering.</li>
    </ol>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/gbus/03-passives.jpg" target="_blank">
        <img src="%base_url%/assets/gbus/03-passives-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Populate Resistors and Capacitors</h3>
<div class="step-description">
        <p>Pay close attention to which side the components should be populated on. On the CBs, the resistors and caps go on one side, while the switches and pots go on the other. Remember that the 100u caps are polarized.</p>
        <div class="part">
            <p>C1_CB, C2_CB<br>100u cap (x2)</p>
            <img src="%base_url%/assets/parts/com-c022.png">
        </div>
        <div class="part">
            <p>C3_CB, C6_CB<br>.15u cap (x2)</p>
            <img src="%base_url%/assets/parts/com-c055.png">
            <p>Markings: 2A154J</p>
        </div>
        <div class="part">
            <p>C4_CB, C7_CB<br>.1u cap (x2)</p>
            <img src="%base_url%/assets/parts/com-c005.png">
        </div>
        <div class="part">
            <p>C5_CB, C8_CB<br>68n cap (x2)</p>
            <img src="%base_url%/assets/parts/com-c050.png">
            <p>Markings: 2A683J</p>
        </div>
        <div class="part">
            <p>Resistors<br><a href="%base_url%/assets/gbus/gbus-sorting-1.1.pdf">See sorting sheet</a></p>
        </div>
</div>
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/gbus/03-cons.jpg" target="_blank">
        <img src="%base_url%/assets/gbus/03-cons-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Populate Connectors</h3>
<div class="step-description">
        <p>Populate the various headers that connect the controls to the motherboard (MB). Again, note carefully the side to populate on. Also note that the shrouded headers CON2-CON4 must be inserted in a particular orientation.</p>
        <div class="part">
            <p>CON2_CB<br>16-pin header</p>
            <img src="%base_url%/assets/parts/com-h033.png">
        </div>
        <div class="part">
            <p>CON3_CB<br>12-pin header</p>
            <img src="%base_url%/assets/parts/com-h031.png">
        </div>
        <div class="part">
            <p>CON4_CB<br>26-pin header</p>
            <img src="%base_url%/assets/parts/com-h035.png">
        </div>
</div>
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/gbus/03-potentiometers.jpg" target="_blank">
        <img src="%base_url%/assets/gbus/03-potentiometers-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Populate Potentiometers</h3>
    <div class="step-description">
        <p>Pay close attention to the values marked on the back when placing the potentiometers (pots).</p>
        <div class="part">
            <p>VR1_CB, VR2_CB<br>B50k pot (x2)</p>
            <img src="%base_url%/assets/parts/com-e-pot-vertical.png">
            <p>Markings: B503</p>
        </div>
        <div class="part">
            <p>VR3_CB<br>B10k pot</p>
            <img src="%base_url%/assets/parts/com-e-pot-vertical.png">
            <p>Markings: B103</p>
        </div>
    </div>
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/gbus/03-rotary.jpg" target="_blank">
        <img src="%base_url%/assets/gbus/03-rotary-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Populate Rotary Switches</h3>
<div class="step-description">
        <p>Note that the rotary switches have a small round tab at 9 o'clock (if the logo is 12). This tab will mate with a hole in the mounting bracket, so it's very important that the switch be installed the correct way. Note that there circles on the PCB drawings that correspond to the tabs.</p>
        <p>Insert the switches so that the tabs on the switches match those on the PCB. Then place the switches and board in the U-bracket to double check the orientation before soldering.</p>
        <div class="part">
            <p>SW1_CB-SW3_CB, SW5_CB<br>2x6 switch (x4)</p>
            <img src="%base_url%/assets/parts/com-e-rotary.png">
        </div>
        <div class="part">
            <p>SW9_CB<br>4x3 switch</p>
            <img src="%base_url%/assets/parts/com-e-rotary.png">
        </div>
</div>
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/gbus/03-pushbuttons.jpg" target="_blank">
        <img src="%base_url%/assets/gbus/03-pushbuttons-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Populate Pushbutton Sub-board</h3>
<div class="step-description">
        <p>Install the switch caps before populating the switches on the small sub-board. Place the switches so that the E on the body aligns with the E on the PCB. Note the correct side before soldering. Also populate the 4-pin header on the opposite side of the board from the switches. Orient the header so the plastic posts are flush against the bottom of the sub-board.</p>
        <div class="part">
            <p>SW6_CB-SW8_CB<br>DPDT switch (x3)</p>
            <img src="%base_url%/assets/parts/com-e038.png">
        </div>
        <div class="part">
            <p>CON6B_CB<br>4-pin header</p>
            <img src="%base_url%/assets/parts/com-h021.png">
        </div>
</div>
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/gbus/03-pushbuttons-board.jpg" target="_blank">
        <img src="%base_url%/assets/gbus/03-pushbuttons-board-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Mount Pushbutton Sub-board</h3>
<div class="step-description">
        <p>Fasten the sub-board to CB2 via the screws, standoffs, and nuts. Then solder the 4-pin header to CB2 and trim the excess leads.</p>
        <div class="part">
            <p>4-40 screw 3/8" (x2)</p>
            <img src="%base_url%/assets/parts/hw-s001.png">
        </div>
        <div class="part">
            <p>4-40 nut (x2)</p>
            <img src="%base_url%/assets/parts/hw-n001.png">
        </div>
        <div class="part">
            <p>4-40 standoff 5/32" (x2)<br></p>
            <img src="%base_url%/assets/parts/hw-y022.png">
        </div>
</div>
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/gbus/03-crimp.jpg" target="_blank">
        <img src="%base_url%/assets/gbus/03-crimp-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Attach Terminals to Wires</h3>
<div class="step-description">
    <p>For each wire on the harness, place the wire through the end of the terminal until the insulation runs against the small tab on the terminal. The exposed part of the wire should sit between the tab and the side of the terminal. Then, using a pair of pliers, crimp the part of the terminal that surrounds the insulated part of the wire. After crimping, check that the wire is held securely in the terminal and that you can't pull it out. Then solder the tinned end of the wire to the terminal.</p>
        <div class="part">
            <p>Quick-connect terminal (x4)</p>
            <img src="%base_url%/assets/parts/hw-y023.png">
        </div>
</div>
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/gbus/03-kd2.jpg" target="_blank">
        <img src="%base_url%/assets/gbus/03-kd2-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Attach Wiring Harness to IN Switch</h3>
<div class="step-description">
    <p>The IN switch has three columns of pins: one for each pole of the switch and a third for the LED. The switch columns are labeled "NO" for normally open, "NC" for normally closed, and "C" for common. The LED column is labeled "L(+)" for LED power and "L" for ground. Assuming the switch is viewed from the back with the "IN" label upright, the left column is 1 and the furthest right column is 2.</p>
    <p>On the plastic part of the wiring harness there is a small number to indicate pin 1. Note that for the first batches of kits, the colors of the wires are different from those shown in the photo.</p>
    <p>For the jumper, use a leftover component lead.</p>
        <ul>
            <li>CON5 pin 1: C2</li>
            <li>CON5 pin 2: NO1</li>
            <li>CON5 pin 3: L</li>
            <li>CON5 pin 4: C1</li>
            <li>Jumper NO2 -> L(+)</li>
        </ul>
</div>
</div>

<h2>Relays and Misc (Bag 4)</h2>

<p>Relays are switches that are controlled by a DC voltage; when the voltage is ON they are in one state, and when the voltage is OFF they flip to the other state. Relays help keep important traces short, thus minimizing noise and interference. While the user controls have to be on the front panel, the relays can go right by the signals they are switching. Without a relay, we'd have to run long audio (AC) traces to the controls; with a relay the DC control voltage trace is long, while the audio traces stay short.</p>


<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/gbus/04-passives.jpg" target="_blank">
        <img src="%base_url%/assets/gbus/04-passives-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Populate Components</h3>
<div class="step-description">
        <p>Populate the ICs, headers, resistors, diodes, and capacitors. Place the ICs so that the notch or dot on the body corresponds with the notch on the socket and PCB. Place the headers so they match the orientation shown on the PCB. And note that the diodes and large capacitors are polarized.</p>
        <p>Note that the 10k and 120R resistors have the same color code in opposite directions. Confirm the values for these resistors with a multi-meter before soldering.</p>
        <div class="part">
            <p>C7<br> 100u cap</p>
            <img src="%base_url%/assets/parts/com-c022.png">
        </div>
        <div class="part">
            <p>C8<br>100p cap</p>
            <img src="%base_url%/assets/parts/com-c008.png">
        </div>
       <div class="part">
            <p>C9, C10<br>3.3n cap (x2)</p>
            <img src="%base_url%/assets/parts/com-c013.png">
        </div>
        <div class="part">
            <p>CON1<br>3-pin header</p>
            <img src="%base_url%/assets/parts/com-h038.png">
        </div>
        <div class="part">
            <p>CON2<br>16-pin header</p>
            <img src="%base_url%/assets/parts/com-h033.png">
        </div>
        <div class="part">
            <p>CON3<br>12-pin header</p>
            <img src="%base_url%/assets/parts/com-h031.png">
        </div>
        <div class="part">
            <p>CON4<br>26-pin header</p>
            <img src="%base_url%/assets/parts/com-h035.png">
        </div>
        <div class="part">
            <p>CON5<br>4-pin header</p>
            <img src="%base_url%/assets/parts/com-h039.png">
        </div>
        <div class="part">
            <p>D1-D3, D11<br>1N4004 diode (x5)</p>
            <img src="%base_url%/assets/parts/com-d005.png">
        </div>
        <div class="part">
            <p>IC1, IC7<br>LF347N opamp (x2)</p>
            <img src="%base_url%/assets/parts/com-u-dip14.png">
        </div>
        <div class="part">
            <p>Resistors<br><a href="%base_url%/assets/gbus/gbus-sorting-1.1.pdf">See sorting sheet</a></p>
        </div>
</div>
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/gbus/04-relays.jpg" target="_blank">
        <img src="%base_url%/assets/gbus/04-relays-600.jpg" />
        </a>
    </div>
<h3 class="step-header">Populate Relays</h3>
<div class="step-description">
        <p>You can hold the relays in place for soldering with tape or by bending the leads against the bottom of the PCB.
        </p>
        <div class="part">
            <p>U3-U6<br>24V relays (x5)</p>
            <img src="%base_url%/assets/parts/com-z010.png">
        </div>  
</div>
</div>
    
<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/gbus/04-cb-connect.jpg" target="_blank">
        <img src="%base_url%/assets/gbus/04-cb-connect-600.jpg" />
        </a>
    </div>
<h3 class="step-header">Connect Controls to MB</h3>
<div class="step-description">
        <p>Use the ribbon cable and IN switch wiring harness to connect CB2 and the IN switch to the MB.
        </p>
</div>
        
    
</div>
<div class="manual-step">
    <div class="step-video">
        <iframe src="https://www.youtube.com/embed/6UD_AGk_bdA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen class="video"></iframe>
    </div>
    <h3 class="step-header">Test Relays</h3>
<div class="step-description">
        <ol>
            <li>Connect the power cable to the G Bus.</li>
            <li>Set the multi-meter to read continuity (the "beep mode").</li>
            <li>Place the probes on the test points next to a relay (it doesn't matter which probe goes where).</li>
            <li>Press the button on the CB associated with that relay. The meter should beep when the switches are pressed IN, except for the IN switch. For the IN switch, the meter should beep when the switch is out.</li>
            <li>Repeat for each relay. Note that the two XFMR relays U3_1 and U3_2 are controlled by the same button.</li>
            <li>Disconnect CB2 and the IN switch from the MB.</li>
            <li>Unplug the power cable before proceeding with the assembly.</li>
        </ol>
        <p><strong>Note:</strong> Due to a bug on the v1.0 PCB, the MONO SC relay will not test correctly. You can skip testing this relay. The revision number is in the lower left corner of the main PCB. For v1.0 it says "1.0 2022."</p>
</div>
</div>


<h2>Audio Jacks (Bag 5)</h2>

<div class="manual-step">
    <div class="step-image">
    <a href="%base_url%/assets/gbus/05-trs.jpg" target="_blank">
    <img src="%base_url%/assets/gbus/05-trs-600.jpg" />
    </a>    
    </div>
    @[/mods/trs-jacks.html]
        <div class="step-parts">
        <div class="part">    
            <p>J3<br>TRS jack (x2)</p>
            <img src="%base_url%/assets/parts/com-j010.png">
        </div>
    </div>
</div>

<div class="manual-step">
    <div class="step-image">
    <a href="%base_url%/assets/gbus/05-xlr.jpg" target="_blank">
    <img src="%base_url%/assets/gbus/05-xlr-600.jpg" />
    </a>    
    </div>
    @[/mods/xlrs.html]
        <div class="part">
            <p>J4<br>3-pin XLR male jack (x2)</p>
            <img src="%base_url%/assets/parts/com-j007.png">
        </div>
        <div class="part">
            <p>J5, J6<br>Combo jack (x3)</p>
            <img src="%base_url%/assets/parts/com-j024.png">
        </div>
</div>

<h2>Balanced Input/Output and Unity Trim (Bag 6)</h2>

<p>This section is responsible for interfacing with the "outside world." The opamp IC2.1 receives a balanced signal from the input jacks and converts it to a single-ended (unbalanced) signal for the rest of the circuit. After the signal is processed by the compressor, the balanced output converts it back to balanced and sends it to the output jacks. There are two balanced outputs on the board. IC2.2 and X1 make up the transformer output, while two two opamps in IC1 make up the standard, electronically-balanced output.</p>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/gbus/06-components.jpg" target="_blank">
        <img src="%base_url%/assets/gbus/06-components-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Populate Components</h3>
<div class="step-description">
        <p>Populate the ICs, resistors, and capacitors. Do not populate the transformers yet. Remember that the large caps, ICs, and trimpots are polarized. <strong>Note:</strong> In early 2024 we changed VR1 to 50k and R27 to 10k to increase the range of the unity gain trim. Version 1.0 PCBs show the old values, which you can disgregard.</p>
        <div class="part">
            <p>C11, C12, C20<br>22u cap (x6)</p>
            <img src="%base_url%/assets/parts/com-c060.png">
        </div>
        <div class="part">
            <p>C13, C15, C19<br>100u cap (x6)</p>
            <img src="%base_url%/assets/parts/com-c022.png">
        </div>
        <div class="part">
            <p>C14<br>22p cap (x2)</p>
            <img src="%base_url%/assets/parts/com-c003.png">
            <p>Markings: 22j</p>
        </div>
        <div class="part">
            <p>C16<br>220u cap (x2)</p>
            <img src="%base_url%/assets/parts/com-c002.png">
        </div>
        <div class="part">
            <p>C17, C18<br>100p cap (x4)</p>
            <img src="%base_url%/assets/parts/com-c008.png">
            <p>Markings: bc 101</p>
        </div>
        <div class="part">
            <p>IC2, IC3<br>NE5532 opamp (x4)</p>
            <img src="%base_url%/assets/parts/com-u-dip8.png">
        </div>
        <div class="part">
            <p>RA1, RA2<br>10k array (x4)</p>
            <img src="%base_url%/assets/parts/com-z006.png">
        </div>
        <div class="part">
            <p>VR1<br>50k trimpot (x2)</p>
            <img src="%base_url%/assets/parts/com-e036.png">
            <p>Markings: W503</p>
        </div>
        <div class="part">
            <p>Resistors<br><a href="%base_url%/assets/gbus/gbus-sorting-1.1.pdf">See sorting sheet</a></p>
        </div>
</div>
</div>

<div class="manual-step">
    <div class="step-video">
        <iframe src="https://www.youtube.com/embed/GFxGLbNafWE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen class="video"></iframe>
    </div>
    <h3 class="step-header">Test Balanced Input</h3>
<div class="step-description">
        <ol>
            <li>Calibrate REW with a multi-meter.</li>
                <ol>
                    <li>Connect a TRS cable to the first output of your interface. This output might be called "1" or "L."</li>
                    <li>Open the Generator in REW and send a 60Hz, -10dBFS signal to the plug.</li>
                    <li>Set the multi-meter to read AC volts.</li>
                    <li>Probe the Tip and Ring of the plug and note the value.</li>
                    <li>Press "Calibrate Level" and enter the value.</li>
            </ol>
            <li>Switch the dB unit to dBu. Then set the generator to 60Hz, +4dBu.</li>
            <li>Connect the power cable to the G Bus.</li>
            <li>Connect the TRS plug to J5_1</li>
            <li>On the L channel, place the probes on the BAL in and GND test points. Your meter should read between 1.1-1.3V.</li>
            <li>Repeat steps 3-5 for the R channel.</li>
            <li>Unplug the power cable before proceeding with the assembly.</li>
        </ol>
</div>
</div>


<h2>Audio VCA (Bag 7)</h2>

<p>The audio VCA is the part that performs the main job of the compressor: gain reduction. A VCA (voltage-controlled amplifier) changes the level of an AC audio signal according to a DC control voltage (CV). You can think of a VCA just like a regular amplifier, but instead of a volume knob, the gain is controlled by the CV. Or you can think of the CV as a little gremlin that turns a tiny gain knob inside the VCA. Whatever works for you.</p>

<p>At this point we can zoom out and notice that the compressor consists of two main parts: the audio VCA to perform the gain reduction, and the CV to control the VCA. As we'll see in later sections, most of the circuit's complexity comes from generating and manipulating the CV in the sidechain (SC).</p>

<p>The balanced input stage feeds into three places: the audio VCA, the MIX section, and the SC (which we'll cover in the next section). Signal enters the VCA through the unity gain trim VR1. The VCA compresses the signal according to the CV, and then the opamp IC3.2 provides necessary buffering, gain, and polarity correction. The output of IC3.2 feeds both directly to the MIX switch, and to the mix summing network through R30. The dry signal from the balanced input and the wet signal from IC3.2 are summed at IC3.1 The MIX pot VR3_CB controls the ratio of wet to dry. Then the MIX switch SW6_CB selects whether just the wet or the summed wet/dry signal goes to the balanced outputs.</p>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/gbus/07-components.jpg" target="_blank">
        <img src="%base_url%/assets/gbus/07-components-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Populate Components Except the VCA</h3>
<div class="step-description">
        <p>Populate the ICs, diodes, resistors, capacitors, and trimpots. Remember that the large caps, diodes, ICs, and trimpots are polarized.</p>
        <div class="part">
            <p>C21<br>22p cap (x2)</p>
            <img src="%base_url%/assets/parts/com-c003.png">
            <p>Markings: 22j</p>
        </div>
        <div class="part">
            <p>C22, C24<br>22u cap (x4)</p>
            <img src="%base_url%/assets/parts/com-c060.png">
        </div>
        <div class="part">
            <p>C23<br>100p cap (x2)</p>
            <img src="%base_url%/assets/parts/com-c008.png">
            <p>Markings: bc 101</p>
        </div>
        <div class="part">
            <p>D4, D5<br>1N4148 diode (x4)</p>
            <img src="%base_url%/assets/parts/com-d015.png">
        </div>
        <div class="part">
            <p>IC4<br>NE5532 opamp (x2)</p>
            <img src="%base_url%/assets/parts/com-u-dip8.png">
        </div>
        <div class="part">
            <p>VR2<br>50k trimpot (x2)</p>
            <img src="%base_url%/assets/parts/com-e037.png">
            <p>Markings: W503</p>
        </div>
        <div class="part">
            <p>Resistors<br><a href="%base_url%/assets/gbus/gbus-sorting-1.1.pdf">See sorting sheet</a></p>
        </div>
</div>
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/gbus/07-vca.jpg" target="_blank">
        <img src="%base_url%/assets/gbus/07-vca-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Populate VCA</h3>
<div class="step-description">
        <p>This step assumes you are using the stock VCAs. If you are planning to use your own vintage VCA in the DBX 202 footprint, do not populate these VCAs. Instead follow the instructions for the Vintage VCA Mod.</p>
        <p>Place the right-angle side of the 7-pin connectors through the VCA sub-boards from the front and solder them so that the sides of the black plastic posts sit flush with the PCB. Then install this assembly in the VCA1A positions.</p>
        <div class="part">
            <p>VCA1A<br>2181C VCA PCB (x2)</p>
            <img src="%base_url%/assets/parts/pcb-082.png">
        </div>
        <div class="part">
            <p>VCA1A<br>12-pin header (x2)</p>
            <img src="%base_url%/assets/parts/com-h017.png">
        </div>
</div>
</div>

<div class="manual-step">
    <div class="step-video">
        <iframe src="https://www.youtube.com/embed/tXalEvRoR1w" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen class="video"></iframe>
    </div>
<h3 class="step-header">Test Main Output and Set Unity Gain</h3>
<div class="step-description">
        <ol>
            <li>Connect the power cable to the G Bus.</li>
            <li>Connect your interface to the L channel input and output.</li>
            <li>Send a 1Khz, -10dBFS test signal.</li>
            <li>Open Levels in REW. You should see your -10dBFS test signal on the Out meter and some level coming back in on the In meter.</li>
            <li>Set unity gain by turning VR1 until the In meter matches the Out meter.</li>
            <li>Repeat steps 2-5 with the R channel.</li>
            <li>Unplug the power cable before proceeding with the assembly.</li>
        </ol>
</div>
</div>

<h2>Filter (Bag 8)</h2>
<p>This section is the first place we manipulate the CV by removing or emphasizing certain frequencies. As we know, the CV is a DC voltage, but here at the beginning of the sidechain it is still AC, so we filter it just like audio. The two opamps in IC4 are buffers that isolate the passive filters from the rest of the circuit. All of the resistors and capacitors between the two opamps are simple filters which are selected by SW5_CB. This is also where the signal from the EXT SC jack enters the SC if the switch is in the last position.</p>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/gbus/08-components.jpg" target="_blank">
        <img src="%base_url%/assets/gbus/08-components-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Populate Components</h3>
<div class="step-description">
        <p>Populate the ICs, resistors, and capacitors. Remember that the large caps and ICs are polarized.</p>
        <div class="part">
            <p>C25, C28<br>22p cap (x4)</p>
            <img src="%base_url%/assets/parts/com-c003.png">
            <p>Markings: 22j</p>
        </div>
        <div class="part">
            <p>C26<br>82n cap (x2)</p>
            <img src="%base_url%/assets/parts/com-c057.png">
            <p>Markings: 82nJ63</p>
        </div>
        <div class="part">
            <p>C27<br>3.3n cap (x2)</p>
            <img src="%base_url%/assets/parts/com-c013.png">
            <p>Markings: 3n3j100</p>
        </div>
        <div class="part">
            <p>C29<br>22u cap (x2)</p>
            <img src="%base_url%/assets/parts/com-c060.png">
        </div>
        <div class="part">
            <p>IC5<br>NE552 opamp (x2)</p>
            <img src="%base_url%/assets/parts/com-u-dip8.png">
        </div>
        <div class="part">
            <p>Resistors<br><a href="%base_url%/assets/gbus/gbus-sorting-1.1.pdf">See sorting sheet</a></p>
        </div>
</div>
</div>

<div class="manual-step">
    <div class="step-video">
        <iframe src="https://www.youtube.com/embed/gR18hdYsmCg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen class="video"></iframe>
    </div>
    <h3 class="step-header">Test Filter</h3>
<div class="step-description">
        <ol>
            <li>Connect the power cable to the G Bus.</li>
            <li>Connect CB2 to the MB. Connect your interface to the L channel input. You do not need to connect to the output.</li>
            <li>Send 60Hz, +4dBu test signal.</li>
            <li>Set the meter to AC volts and probe the FILTER and GND test points on the L channel.</li>
            <li>Turn the FILTER knob to positions 1-6 (later you will set the stop so that this is the furthest the switch can be turned). The value should start around 1v at OFF, then go down, then back up, then finally end at 0V in the Ext. SC position.</li>
            <li>Repeat steps 2-6 with the R channel.</li>
            <li>Disconnect CB2 from the MB.</li>
            <li>Unplug the power cable before proceeding with the assembly.</li>
        </ol>
</div>
</div>

<h2>SC VCA (Bag 9)</h2>
<p>This compressor has a very unique, even peculiar topology: it is a feed-forward compressor with a VCA in the SC. Most compressors are feed-back, where the signal splits to the SC after the compression. This makes for smoother compression with gain reduction elements like FETs and optos which do not have a strict gain law like VCAs do. In compressors that are feed-forward, there is usually an RMS detector in the SC, which can provide a precise CV to the VCA based on a smoothed (RMS) version of the signal.</p>

<p>This bus compressor, on the other hand, employs a SC VCA to create a hybrid feed-back/feed-forward circuit. The SC VCA mirrors the behavior of the audio VCA, giving the SC a reference that is similar to if the SC signal were tapped after the audio VCA (feed-back). Why this unique topology? Most likely to save cost and space. So it seems the world's favorite bus compressor was a collaboration between the engineering and finance departments.</p>

<p>The signal from the Filter section feeds to VCA2, which compresses the signal according to it's own CV. IC5.3 fills the same purpose for the SC CV as IC3.2 does for the audio VCA: buffering, gain, and polarity. The signal is finally rectified from AC to DC by IC5.1, IC5.2, and the surrounding diodes. D10 sets the threshold for the compressor; any voltage above -1VDC will not pass through to the rest of the SC and therefore will not affect the CV.</p>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/gbus/09-components.jpg" target="_blank">
        <img src="%base_url%/assets/gbus/09-components-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Populate Components</h3>
<div class="step-description">
        <p>Populate the ICs, diodes, resistors, capacitors, and VCA. Note that C30, the diodes, ICs, and VCAs are polarized.</p>
        <div class="part">
            <p>C30<br>6.8u cap (x2)</p>
            <img src="%base_url%/assets/parts/com-c059.png">
        </div>
        <div class="part">
            <p>C31<br>22p cap (x2)</p>
            <img src="%base_url%/assets/parts/com-c003.png">
            <p>Markings: 22j</p>
        </div>
        <div class="part">
            <p>C32<br>100p cap (x2)</p>
            <img src="%base_url%/assets/parts/com-c008.png">
            <p>Markings: bc 101</p>
        </div>
        <div class="part">
            <p>D6-D10<br>1N4148 diode (x10)</p>
            <img src="%base_url%/assets/parts/com-d015.png">
        </div>
        <div class="part">
            <p>IC6<br>LF347 opamp (x2)</p>
            <img src="%base_url%/assets/parts/com-u-dip14.png">
        </div>
        <div class="part">
            <p>VCA2<br>2181C VCA PCB (x2)</p>
            <img src="%base_url%/assets/parts/pcb-082.png">
        </div>
        <div class="part">
            <p>VCA2<br>12-pin header (x2)</p>
            <img src="%base_url%/assets/parts/com-h017.png">
        </div>
        <div class="part">
            <p>Resistors<br><a href="%base_url%/assets/gbus/gbus-sorting-1.1.pdf">See sorting sheet</a></p>
        </div>
</div>
</div>

<h2>Meter, Attack, Release, and Ratio (Bag 10)</h2>
<p>The ratio of a compressor is equal to the amount of gain in the SC. So the RATIO switch sets the gain of IC5.2 by selecting between R72-R74. The other resistors in this section adjust the threshold by adding different amounts of offset to the CV. This prevents big jumps in level as the ratios change.</p>

<p>After the ratio has been set, the CV passes through a network of resistors and capacitors which control the compressor's response times. The ATTACK switch selects which resistor the CV will pass through before charging the release capacitors. The RELEASE switch then selects which resistor/capacitor pair will be charged. These passive networks control how quickly the CV can change and thus how quickly the VCA can respond to changes in the audio level. Larger values will slow down the response more. If there were no attack/release circuitry at all (that is 0 resistance and 0 capacitance), the compressor would track the audio level instantaneously. If the resistor and capacitor values were very large, the CV would not change at all and the compressor would just become a fader controlled by the THRESH and MAKE-UP knobs.</p>

<p>After the attack/release section, the CV is sent to three places: the audio VCAs, the SC VCAs, and the meter. So, since the CV is the same in all three places, the compression (audio VCA), feed-back "mirror" of the compression (SC VCA), and the meter are all harmonized.</p>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/gbus/10-components.jpg" target="_blank">
        <img src="%base_url%/assets/gbus/10-components-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Populate Meter, Attack, and Release Components (Sub bags 1 and 2)</h3>
<div class="step-description">
        <p>Populate the diodes, resistors, capacitors, and trimpots. The tantalum capacitors in the Release section are polarized. The positive lead is longer and is marked with a "+". Note that C37 is a different value from the rest of the tantalums.</p>
        <div class="part">
            <p>C33-C36, C38<br>.47u cap (x5)</p>
            <img src="%base_url%/assets/parts/com-c061.png">
            <p>Markings: 474L</p>
        </div>
        <div class="part">
            <p>C37<br>6.8u cap</p>
            <img src="%base_url%/assets/parts/com-c059.png">
            <p>Markings: 685H</p>
        </div>
        <div class="part">
            <p>VR3<br>5k trimpot</p>
            <img src="%base_url%/assets/parts/com-e036.png">
            <p>Markings: W502</p>
        </div>
        <div class="part">
            <p>Resistors<br><a href="%base_url%/assets/gbus/gbus-sorting-1.1.pdf">See sorting sheet</a></p>
        </div>
</div>
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/gbus/10-ratio.jpg" target="_blank">
        <img src="%base_url%/assets/gbus/10-ratio-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Populate Ratio Components</h3>
<div class="step-description">
        <p>Populate the diodes, resistors, capacitors, and trimpot. Note that the 10u NP capacitors are not polarized.</p>
        <div class="part">
            <p>C39-C42<br>10u NP cap (x4)</p>
            <img src="%base_url%/assets/parts/com-c001.png">
        </div>
        <div class="part">
            <p>C43<br>100p cap</p>
            <img src="%base_url%/assets/parts/com-c008.png">
        </div>
        <div class="part">
            <p>D12, D13<br>1N4148 diode (x2)</p>
            <img src="%base_url%/assets/parts/com-d015.png">
        </div>
        <div class="part">
            <p>VR4<br>50k trimpot</p>
            <img src="%base_url%/assets/parts/com-e037.png">
            <p>Markings: W503</p>
        </div>
        <div class="part">
            <p>Resistors<br><a href="%base_url%/assets/gbus/gbus-sorting-1.1.pdf">See sorting sheet</a></p>
        </div>
</div>
</div>

<div class="manual-step">
    <div class="step-video">
        <iframe src="https://www.youtube.com/embed/5vftP9LqTnQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen class="video"></iframe>
    </div>
    <h3 class="step-header">Test SC VCA</h3>
<div class="step-description">
        <ol>
            <li>Connect the power cable to the G Bus.</li>
            <li>Connect both CBs and the IN switch to the MB. Connect your interface to both inputs. Leave the outputs unconnected.</li>
            <li>Set all controls CCW (counter-clockwise).</li>
            <li>Engage the compressor with the IN button.</li>
            <li>Send a 60Hz sine wave, +4dBu test signal. In the REW Generator, set the Output to 1+2 (this might also be called L+R). This option is at the bottom of the window, next to the Play button.</li>
            <li>Set the multi-meter to read DC volts.</li>
            <li>Place the probes on the SC and GND test points located on the bottom-right of the MB. Remember to place the black probe on GND. The meter should display a negative value between -0.5V and -3V (there is a wide range because we have not calibrated the ratio yet).</li>
            <li>Unplug the power cable before proceeding with the assembly.</li>
        </ol>
</div>
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/gbus/10-meter-jumper.jpg" target="_blank">
        <img src="%base_url%/assets/gbus/10-meter-jumper-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Solder Wiring Harness to Meter</h3>
<div class="step-description">
         <p>The meter has two sets of pins: two big ones for the meter signal, and two small ones for the LEDs. And on the body of the meter there are "+" and "-" markings.</p>
        <p>As with the "IN" switch, pin 1 of the wiring harness is marked on the body. Note that for the first batches of kits, the colors of the wires are different from those shown in the photo.</p>
        <p>Solder a jumper wire between the Big + and Little - pins. Then, solder the pin 1 wire of the harness to Little +.</p>
</div>
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/gbus/10-meter-quick-connect.jpg" target="_blank">
        <img src="%base_url%/assets/gbus/10-meter-quick-connect-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Attach Terminals to Meter</h3>
<div class="step-description">
    <p>Crimp and solder the terminals to the remaining two wires of the harness. Then insert the pin 2 terminal onto the Big + pin, and the pin 3 terminal onto the Big - pin of the meter.</p>
    <p>The meter and wiring harness should now be wired as shown below:</p>
        <ul>
            <li>CON1 pin 1: Little +</li>
            <li>CON1 pin 2: Big +</li>
            <li>CON1 pin 3: Big -</li>
            <li>Jumper Big + -> Little -</li>
        </ul>
        <p>After double checking, connect the wiring harness to CON1.</p>
        <div class="part">
            <p>Quick-connect terminal (x2)</p>
            <img src="%base_url%/assets/parts/hw-y024.png">
        </div>
</div>
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/gbus/10-test.jpg" target="_blank">
        <img src="%base_url%/assets/gbus/10-test-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Check Meter</h3>
<div class="step-description">
        <ol>
            <li>Connect the power cable to the G Bus.</li>
            <li>As you did for the last test connect your interface to both inputs but leave the outputs disconnected.</li>
            <li>Send the same test signal from REW as before (60Hz sine wave, +4dBu).</li>
            <li>Engage the compressor with the IN button.</li>
            <li>Turn the THRESH knob until you see compression on the meter. If the meter shows gain reduction, you can move on.</li>
             <li>Disconnect the CBs, IN switch, and meter from the MB.</li>
             <li>Unplug the power cable before proceeding with the assembly.</li>
        </ol>
</div>
</div>

<h2>Transformer (Bag 11)</h2>
<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/gbus/11-trim.jpg" target="_blank">
        <img src="%base_url%/assets/gbus/11-trim-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Trim and Tin Leads</h3>
<div class="step-description">
        <p>Trim the leads of the transformer down to about 1.5" (38mm). Be generous! You can always cut them shorter, but you can't make them longer after you've cut.</p>
        <p>Then strip off about 1/8" (3mm) of the insulation and tin the leads by applying a bit of solder.</p>
</div>
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/gbus/11-place.jpg" target="_blank">
        <img src="%base_url%/assets/gbus/11-place-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Place Transformers</h3>
<div class="step-description">
        <p>Place the wires through their respective holes and solder. The GRY and VIO holes are for using different transformers and should remain empty.</p>
</div>
</div>

<h2>Chassis (Bag 12)</h2>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/gbus/12-mb.jpg" target="_blank">
        <img src="%base_url%/assets/gbus/12-mb-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Install MB</h3>
<div class="step-description">
        <p>To avoid damaging the connectors during this section, disconnect the CBs, meter, and IN switch from the MB. Remove the washers and nuts from the TRS jacks. Then place the MB in the chassis and fasten it to the standoffs via the short screws for the PCB and the long screws for the transformers.</p>
     <div class="step-parts">
        <div class="part">
            <p>PCB screw (x6)</p>
            <img src="%base_url%/assets/parts/hw-s027.png">
        </div>
        <div class="part">
            <p>Transformer screw (x4)</p>
            <img src="%base_url%/assets/parts/hw-s017.png">
        </div>
    </div>
</div>
</div>


<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/gbus/12-mb.jpg" target="_blank">
        <img src="%base_url%/assets/gbus/12-mb-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Fasten MB to Case</h3>
<div class="step-description">
        <p>Screw the XLR jacks to the rear of the case and then put the washers and nuts on the TRS jacks.</p>
     <div class="step-parts">
        <div class="part">
            <p>XLR screw (x14)</p>
            <img src="https://manuals.diy.re/assets/parts/hw-s022.png">
        </div>
    </div>
</div>
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/gbus/12-stops.jpg" target="_blank">
        <img src="%base_url%/assets/gbus/12-stops-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Set Rotary Switch Stops</h3>
<div class="step-description">
        <p>Each rotary switch includes a washer with a tab that sets the furthest position for the switch. These tabs fit in the square holes around the switch shafts. The numbers are before/counter-clockwise from the corresponding holes. Make sure each switch is in the completely counter-clockwise position, then place the tabs in the following holes:</p>
        <ul>
            <li>SW1_CB, ATTACK: 6</li>
            <li>SW2_CB, RATIO: 3</li>
            <li>SW3_CB, RELEASE: 5</li>
            <li>SW5_CB, FILTER: 6</li>
            <li>SW9_CB, DRIVE: 3</li>
        </ul>
</div>
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/gbus/12-mount-cbs.jpg" target="_blank">
        <img src="%base_url%/assets/gbus/12-mount-cbs-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Mount CBs to U-Bracket</h3>
<div class="step-description">
        <p>Each potentiometer has two nuts: one to go behind the U-bracket and one in front. Thread the inside nuts all the way onto the pots, then fasten the CBs to the U-bracket via the nuts and washers of the rotary switches. Then adjust the inside nuts of the pots until they are flush with the back of the U-bracket. Finally, attach the lock washers and nuts on the front size of the bracket.</p>
</div>
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/gbus/12-u-bracket.jpg" target="_blank">
        <img src="%base_url%/assets/gbus/12-u-bracket-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Fasten U-Bracket to Case</h3>
<div class="step-description">
        <p>Screw the U-bracket to the bottom of the chassis then connect the cables to the MB.</p>
    <div class="step-parts">
        <div class="part">
            <p>U-bracket screw (x3)</p>
            <img src="%base_url%/assets/parts/hw-s026.png">
        </div>
    </div>
</div>
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/gbus/12-fp.jpg" target="_blank">
        <img src="%base_url%/assets/gbus/12-fp-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Install Front Panel, Meter, and IN Switch</h3>
<div class="step-description">
        <p>Fasten the front panel to the chassis. Then place the meter and IN switch through the front panel and connect them to the MB.</p>
    <div class="step-parts">
        <div class="part">
            <p>Front panel screw (x4)</p>
            <img src="%base_url%/assets/parts/hw-s024.png">
        </div>
    </div>
</div>
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/gbus/12-knobs.jpg" target="_blank">
        <img src="%base_url%/assets/gbus/12-knobs-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Install Knobs</h3>
<div class="step-description">
        <p>Press the knobs onto the potentiometers and rotary switches.</p>
</div>
</div>

<h2>Calibration</h2>

<div class="manual-step">
 <div class="step-video">
        <iframe src="https://www.youtube.com/embed/WFk8eq5YLWo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen class="video"></iframe>
    </div>
    <h3 class="step-header">Calibrate VCA Distortion</h3>
<div class="step-description">
    <p>The audio VCAs must be manually trimmed for the lowest distortion.</p>
        <ol>
            <li>Connect the power cable to the G Bus.</li>
            <li>Connect inputs and outputs to the L channel.</li>
            <li>Disengage the compressor, turn the THRESHOLD completely CW, and the DRIVE completely CCW.</li>
            <li>Send a 1kHz, +4dBu test signal.</li>
            <li>Open the RTA window, click "Show Distortion" and the Record button</li>
            <li>Trim VR2 so that THD is as low as possible. The absolute number is not important and will depend on your setup and the channels may not match exactly. As long as each channel measures below 0.1% THD there is no cause for concern.</li>
            <li>Repeat for the R channel.</li>
        </ol>
</div>
</div>

<div class="manual-step">
 <div class="step-video">
        <iframe src="https://www.youtube.com/embed/R8qBlTYNyVA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen class="video"></iframe>
    </div>
    <h3 class="step-header">Calibrate Ratio</h3>
<div class="step-description">
    <p>This is where we will truly make your G Bus as authentic as possible by dialing in the ratios to match the original console. The actual ratios after calibration will be approximately 2.3:1, 3.5:1, and 5.8:1. Those may seem too different from what's printed on the front panel, but they are the actual numbers from a vintage console.</p>
        <ol>
            <li>Connect inputs and outputs to the L channel. Send a 1kHz, -20dBFS test signal.</li>
            <li>Engage the compressor, and set RATIO to the middle position (4:1).</li>
            <li>Turn THRESHOLD until the IN meter in REW reads -30dBFS.</li>
            <li>Change the test signal level to -10dBFS.</li>
            <li>Trim VR4 in the RATIO section until In reads -27.15dBFS.</li>
            <li>You do not need to repeat this step for the R channel.</li>
        </ol>
    <p><strong>Note:</strong> If you cannot get the level down to -30dBFS in step 3 you can simply increase the level by 10dB. So for step 3 you would send a -10dBFS signal and compress down to -20bFS. For steps 4 and 5 you would send a -0.1dBFS signal (or as close as you can get to 0dBFS) and trim VR4 for -17.15dBFS.</p>
</div>
</div>

<div class="manual-step">
 <div class="step-video">
        <iframe src="https://www.youtube.com/embed/sU1VRQQgkFk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen class="video"></iframe>
    </div>
    <h3 class="step-header">Calibrate Gain Reduction Meter</h3>
<div class="step-description">
    <p>Finally, we will calibrate the meter so it is precise at 8dB gain reduction. After calibration the meter should be accurate up to 12dB, but it is normal for it to drift off at higher gain reduction levels.</p>
        <ol>
            <li>Send a 1kHz, -10dBFS test signal.</li>
            <li>Open the Levels window and turn THRESH until "In" is 8dB lower than "Out."</li>
            <li>Trim VR3 until the meter shows 8dB gain reduction.</li>
            <li>Unplug the power cable before proceeding with the assembly.</li>
        </ol>
</div>
</div>

<div class="manual-step">
    <div class="step-image">
    <a href="%base_url%/assets/gbus/12-lid.jpg" target="_blank">
    <img src="%base_url%/assets/gbus/12-lid-600.jpg" />
    </a>
    </div>
<h3 class="step-header">Install Lid</h3>
    
<div class="step-description">
    <p>Place the lid on the case with the countersunk side facing up. Screw in the three screws that attach to the U-bracket first, then the rest of the screws.</p>
</div>
    <div class="step-parts">
        <div class="part">
            <p>Lid screw (x10)</p>
            <img src="%base_url%/assets/parts/hw-s026.png">
        </div>
    </div>
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/gbus/finished.jpg" target="_blank">
        <img src="%base_url%/assets/gbus/finished-600.jpg" />
        </a>
    </div>
    @[/mods/finished.html]
</div>

</div>

<h2>Modding the G Bus</h2>
<p>There are a lot more mays to mod the G Bus than we could fit on the front panel. So if you want to customize your G Bus, head over to the <a href="https://support.diy.re/category/45-g-bus">G Bus Mods page</a>. Please keep in mind that we cannot offer support for the mods. There are simply too many variables that change once you start modding, especially after several mods. You're the man now, dog!</p> 

<div class="manual-step">
<h2>Help Us Improve</h2>
    <form action="https://formsubmit.co/support@diyrecordingequipment.com" method="POST" id="form-contact">
      <input type="hidden" name="_subject" value="%meta.title% Feedback">
    @[mods/contact.html]   
    </form>
</div>