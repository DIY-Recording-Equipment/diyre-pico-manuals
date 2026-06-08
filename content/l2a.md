---
Title: L2A Assembly Guide
Date: 3/2/2021
Template: manual
---

<div>
  <div class="step-image">
    <a href="https://www.diyrecordingequipment.com/products/l2a">
             <img src="https://cdn.shopify.com/s/files/1/0698/2265/products/L2ARevEThreeQuarter_medium.jpg?v=1626363591" />  	
    </a>
  </div>
  <div class="step-header">Welcome to the L2A assembly guide.</div>
  <div class="step-description">
      <p>Thank you for purchasing a <a href="https://www.diyrecordingequipment.com/products/l2a">L2A Re-amplifier Kit!</a></p>
      <p>This guide is for the L2A Rev E, launched August 2021. If you have an earlier version, head over to the <a href="https://www.diyrecordingequipment.com/pages/l2a-manual">L2A Rev D Assembly Guide</a>.</p>
      <p>If this is your first DIY project ever, we recommend reading our <a href="http://www.diyrecordingequipment.com/pages/getting-started">Getting Started Guide</a>.</p>
  </div>
</div>


<h2>Required Tools</h2>


@[/tools/soldering-iron.html]
@[/tools/solder.html]
@[/tools/wire-cutters.html]
@[/tools/phillips.html]

<h2>Optional Tools</h2>

@[/tools/multi-meter.html]
@[/tools/desoldering-pump.html]
@[/tools/tape.html]

<div id="assembly-guide-content">

<h2>Resistors and Capacitors</h2>

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
        <a href="%base_url%/assets/l2a/res-place.jpg" target="_blank">
        <img src="%base_url%/assets/l2a/res-place-600.jpg" />
        </a>
    </div>
    @[/mods/res-place.html]
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/l2a/res-solder.jpg" target="_blank">
        <img src="%base_url%/assets/l2a/res-solder-600.jpg" />
        </a>
    </div>
    @[/mods/res-solder.html]
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/l2a/res-trim.jpg" target="_blank">
        <img src="%base_url%/assets/l2a/res-trim-600.jpg" />
        </a>
    </div>
    @[/mods/res-trim.html]
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/l2a/caps-small.jpg" target="_blank">
        <img src="%base_url%/assets/l2a/caps-small-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Populate Small Capacitors</h3>
    
<div class="step-description">
        <p>Place the smaller capacitors in their respective places. These capacitors are not polarized and therefore can be placed in either direction. Solder then trim the leads.</p>
        <p>Note that the color of the capacitors may be change. Identify the capacitors based on their markings, not their colors.</p>
</div>
</div>

<h2>Transformer</h2>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/l2a/trafo.jpg" target="_blank">
        <img src="%base_url%/assets/l2a/trafo-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Place Transformer</h3>
<div class="step-description">
        <p>Place the transformer on the PCB in the area marked "X1 / 10K/10K." Note that there's a small notch in the plastic near pin 1. Line this notch up with the corresponding one on the PCB. Then solder the transformer to the PCB. To prevent damaging the transformer, leave 20 seconds between solder joints. This allows the coil wires time to cool down between joints.</p>
</div>
</div>


<h2>Panel Components</h2>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/l2a/pot.jpg" target="_blank">
        <img src="%base_url%/assets/l2a/pot-600.jpg" />
        </a>
    </div>
    @[/mods/potentiometer.html]

</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/l2a/trs-jack.jpg" target="_blank">
        <img src="%base_url%/assets/l2a/trs-jack-600.jpg" />
        </a>
    </div>
    @[/mods/trs-jack.html]

</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/l2a/combo.jpg" target="_blank">
        <img src="%base_url%/assets/l2a/combo-600.jpg" />
        </a>
    </div>
    @[/mods/xlr-combo.html]

</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/l2a/switches.jpg" target="_blank">
        <img src="%base_url%/assets/l2a/switches-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Place Switches</h3>
<div class="step-description">
        <p>Place the two toggle switches in their respective positions and bend the leads, but do not solder yet.</p>
</div>
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/l2a/attach-panel.jpg" target="_blank">
        <img src="%base_url%/assets/l2a/attach-panel-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Attach Panel and Solder Switches</h3>
<div class="step-description">
        <p>Attach the input panel over the switch and XLR jack, and screw the panel to the XLR jack. Since these screws are cutting their own threads, you'll feel some resistance the first time you put them in. Make sure that the switches are sitting nicely in the panel, then solder and trim the leads.</p>
</div>
</div>

<h2>Case Assembly</h2>
<div class="manual-step">
<ul class="manual-checks">
<p>Before putting case together, check the following things:</p>
@[/checks/resistor.html] 
@[/checks/solder.html]
</ul>
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/l2a/slide-pcb.jpg" target="_blank">
        <img src="%base_url%/assets/l2a/slide-pcb-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Slide PCB into Case</h3>
<div class="step-description">
        <p>Slide the assembled PCB into the lower channel in the case. The input panel should be on the side of the case nearest the "L" in "L2A."</p>
</div>
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/l2a/fasten-panels.jpg" target="_blank">
        <img src="%base_url%/assets/l2a/fasten-panels-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Fasten Panels to Case</h3>
<div class="step-description">
        <p>Screw in the eight mounting screws. It's a good idea to install all four screws on one panel loosely before tightening each one.</p>
</div>
</div>

<h2>Final Assembly</h2>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/l2a/fasten-trs.jpg" target="_blank">
        <img src="%base_url%/assets/l2a/fasten-trs-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Fasten TRS and Potentiometer to Case</h3>
<div class="step-description">
        <p>Fasten the TRS jack and potentiometer to the case with the included washers and nuts.</p>
</div>
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/l2a/knob.jpg" target="_blank">
        <img src="%base_url%/assets/l2a/knob-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Install Knob</h3>
<div class="step-description">
        <p>Set the potentiometer to the middle position (10 clicks). Then place the knob over the shaft and orient it so that the indicator line faces 12 o'clock. Then fasten the knob to the shafts by tightening the set screw with the included hex wrench.</p>
</div>
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/l2a/foam.jpg" target="_blank">
        <img src="%base_url%/assets/l2a/foam-600.jpg" />
        </a>
    </div>
    @[/mods/foam-pad.html]
</div>


<h2>Testing</h2>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/l2a/send-audio.jpg" target="_blank">
        <img src="%base_url%/assets/l2a/send-audio-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Send Audio to L2A</h3>
<div class="step-description">
        <p>The L2A accepts a balanced input via the XLR/TRS combo jack. Run an XLR or balanced 1/4" cable (TRS, two stripes on plugs) from a balanced ouput on your audio interface to the LINE INPUT. Then send a signal to that output with your DAW. The signal can be anything—whatever you want to hear the first time you plug in your L2A!</p>
</div>
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/l2a/l2a-to-amp.jpg" target="_blank">
        <img src="%base_url%/assets/l2a/l2a-to-amp-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Connect the L2A to a Guitar Amp</h3>
<div class="step-description">
        <p>First, turn the LEVEL control down completely (counter-clockwise). Then run an unbalanced 1/4" (TS, one stripe on plugs) from the OUTPUT to a guitar amp. Turn on the guitar amp and slowly increase the level of the L2A. If you hear your audio signal clearly through the speaker, your L2A is working correctly.</p>
</div>
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/l2a/check-switches.jpg" target="_blank">
        <img src="%base_url%/assets/l2a/check-switches-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Check the Switches</h3>
<div class="step-description">
        <p>While still playing audio through the L2A, check the filter positions. With a wide-bandwidth audio signal such as a guitar playing chords, you should clearly hear the high- and low-pass filters.</p> 
        <p>Then switch between the LIFT and GROUND positions. With some setups one position will be noisier than others, while in other setups the switch will not make a difference. When in doubt, the preferred position is LIFT. If you don't hear a difference, don't worry—the switch may come in handy someday with a different amp.</p>
</div>
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/l2a/finished.jpg" target="_blank">
        <img src="%base_url%/assets/l2a/finished-600.jpg" />
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