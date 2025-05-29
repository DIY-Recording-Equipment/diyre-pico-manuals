---
Title: AurEx Assembly Guide
Date: [date]
Template: manual
---

<div>
  <div class="step-header">Welcome to the AurEx assembly guide.</div>
  <div class="step-description">
      <p>Thank you for purchasing an <a href="https://www.diyrecordingequipment.com/products/aurex">AurEx</a>.</p>
      <p>If this is your first DIY project ever, we recommend reading our <a href="http://www.diyrecordingequipment.com/pages/getting-started">Getting Started Guide</a>.</p>
  </div>
</div>


<h2>Required Tools</h2>

@[/tools/soldering-iron.html]
@[/tools/solder.html]
@[/tools/wire-cutters.html]
@[/tools/flathead.html]

<h2>Optional Tools</h2>

@[/tools/multi-meter.html]
@[/tools/desoldering-pump.html]

<h2>Component Sorting Sheet</h2>
<div class="manual-step">
    <div class="step-image">
    <a href="%base_url%/assets/aurex/aurex-sorting-1.0.pdf" target="_blank">
    <img src="%base_url%/assets/pdf-download.png" />
    </a>
    </div>
    <div class="step-description">
        <p>To identify and keep track of every part in the kit, download and print the <a href="%base_url%/assets/aurex/aurex-sorting-1.0.pdf" target="_blank">Component Sorting Sheet (PDF)</a>.</p>
    </div>
</div>

<div id="assembly-guide-content">

<h2>Standoffs, Header, and IC Socket (Bag 1)</h2>

<div class="manual-step">
    <div class="step-image">
    <a href="%base_url%/assets/aurex/colour-standoffs.jpg" target="_blank">
    <img src="%base_url%/assets/aurex/colour-standoffs-600.jpg" />
    </a>
    </div>
    @[/mods/colour-standoffs.html]
</div>

<div class="manual-step">
    <div class="step-image">
    <a href="%base_url%/assets/aurex/colour-header.jpg" target="_blank">
    <img src="%base_url%/assets/aurex/colour-header-600.jpg" />
    </a>
    </div>
    @[/mods/colour-header.html]
</div>

<div class="manual-step">
    <div class="step-image">
    <a href="%base_url%/assets/aurex/ic-socket.jpg" target="_blank">
    <img src="%base_url%/assets/aurex/ic-socket-600.jpg" />
    </a>
    </div>
    @[/mods/ic-socket.html]
</div>

<h2>Resistors (Bag 2)</h2>

<div class="manual-step">
    <div class="step-image">
    <a href="%base_url%/assets/15ips/res-bend.jpg" target="_blank">
    <img src="%base_url%/assets/15ips/res-bend-600.jpg" />
    </a>
    </div>
    @[/mods/res-bend.html]
</div>

<div class="manual-step">
    @[/mods/res-sort.html]
</div>

<div class="manual-step">
    <div class="step-image">
    <a href="%base_url%/assets/aurex/res-place.jpg" target="_blank">
    <img src="%base_url%/assets/aurex/res-place-600.jpg" />
    </a>
    </div>
    @[/mods/res-place.html]
</div>

<div class="manual-step">
    <div class="step-image">
    <a href="%base_url%/assets/aurex/res-solder.jpg" target="_blank">
    <img src="%base_url%/assets/aurex/res-solder-600.jpg" />
    </a>
    </div>
    @[/mods/res-solder.html]
</div>

<div class="manual-step">
    <div class="step-image">
    <a href="%base_url%/assets/aurex/res-trim.jpg" target="_blank">
    <img src="%base_url%/assets/aurex/res-trim-600.jpg" />
    </a>
    </div>
    @[/mods/res-trim.html]
</div>

<h2>Diodes, Capacitors, Trimpots (Bag 3)</h2>

<div class="manual-step">
    <div class="step-image">
    <a href="%base_url%/assets/aurex/diodes.jpg" target="_blank">
    <img src="%base_url%/assets/aurex/diodes-600.jpg" />
    </a>
    </div>
    @[/mods/diodes.html]
</div>

<div class="manual-step">
    <div class="step-image">
      <a href="%base_url%/assets/aurex/res-arrays.jpg" target="_blank">
        <img src="%base_url%/assets/aurex/res-arrays-600.jpg" />
      </a>
    </div>
    <h3 class="step-header">Populate Resistor Arrays</h3>
        <div class="step-description">
        <p>Place the resistor arrays in the RA1 and RA2 positions. Although these parts do have a dot for alignment, the orientation does not matter. Bend a couple leads of each array to hold them in place. Then solder and trim the excess leads.</p>
</div>
  </div>

<div class="manual-step">
    <div class="step-image">
    <a href="%base_url%/assets/aurex/caps-small.jpg" target="_blank">
    <img src="%base_url%/assets/aurex/caps-small-600.jpg" />
    </a>
    </div>
    @[/mods/caps-small.html]
</div>

  <div class="manual-step">
    <div class="step-image">
      <a href="%base_url%/assets/aurex/trimpots.jpg" target="_blank">
        <img src="%base_url%/assets/aurex/trimpots-600.jpg" />
      </a>
    </div>
    @[/mods/trimpots.html]
  </div>
  
  <div class="manual-step">
    <div class="step-image">
      <a href="%base_url%/assets/aurex/caps-large.jpg" target="_blank">
        <img src="%base_url%/assets/aurex/caps-large-600.jpg" />
      </a>
    </div>
    <h3 class="step-header">Populate Large Capacitors</h3>
        <div class="step-description">
        <p>The 100uF capacitors are polarized, so they must be placed in a certain direction. The positive lead is slightly longer, while the negative lead is marked with a stripe on the body of the capacitor. Place the capacitors with the positive lead in the pad next to the "+" marking on the PCB.</p>
        <p>The 4.7uF capacitors are not polarized and can be installed in either direction. Place the large capacitors, then solder and trim.</p>
</div>
</div>
  
<h2>IC (Bag 4)</h2>

  <div class="manual-step">
    <div class="step-image">
      <a href="%base_url%/assets/aurex/ic.jpg" target="_blank">
        <img src="%base_url%/assets/aurex/ic-600.jpg" />
      </a>
    </div>
    @[/mods/ic.html] 
</div>

<h2>Final Checks</h2>
<div class="manual-step">
<ul class="manual-checks">
<p>Before you wrap up, check the following things:</p>
@[/checks/capacitor.html]  
@[/checks/resistor.html] 
@[/checks/ic.html]
@[/checks/diode.html]
@[/checks/solder.html]
</ul>
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/aurex/options.jpg" target="_blank">
        <img src="%base_url%/assets/aurex/options-600.jpg" />
        </a>
    </div>
     <h3 class="step-header">Set Options</h3>
<div class="step-description">
    <p>The AurEx is two signal processors in one: a low-frequency maximizer and a high-frequency exciter. Each has it's own dedicated saturation circuitry, so adjusting one band does not affect the other.</p>
    <p>VR1 controls the amount of the LF maximizer that is mixed into the dry signal. In the CCW position, the maximizer is completely off. In the CW position the maximizer is equal to the dry signal for 50/50 wet/dry mix. Note that VR1 does not control the gain and therefore the distortion of the maximizer circuit. Instead, this is controlled by the Colour knob on the front panel.</p>
    <p>VR2 controls the gain of the HF exciter circuitry. In the CCW position, there will be a slight HF boost but none of the exciter effect. As you turn VR2 CW, both the gain and saturation of the exciter circuit increase. Unlike the maxmizer, the exciter is always set to 50/50 wet/dry mix.</p>
	<p>The trimpots have a total travel of about 25 turns. You will hear and feel a small click when they reach the fully CW and CCW positions. Beyond this point, the actuator will keep turning but the resistance value won't change.</p>
	<p>To stereo match two AurEx units, first set one the way you want it. Then use a multi-meter to measure the resistance between the square pad (on the left when viewing the board from the bottom) and the middle pad for both trimpots. Note these values, then set the trimpots of the other AurEx to be as close as possible to them.</p>
</div>
</div>


<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/aurex/finished.jpg" target="_blank">
        <img src="%base_url%/assets/aurex/finished-600.jpg" />
        </a>
    </div>
    @[/mods/finished.html]
</div>

</div>

<div class="manual-step">
<h2>Help Us Improve</h2>
    <form action="https://formsubmit.co/support@diyrecordingequipment.com" method="POST" id="form-contact">
      <input type="hidden" name="_subject" value="%meta.title% Feedback">
    @[mods/contact.html]   
    </form>
</div>