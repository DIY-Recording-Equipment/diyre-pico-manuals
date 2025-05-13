---
Title: Colourupter Assembly Guide
Date: [date]
Template: manual
---

<div>
  <div class="step-image">
    <a href="https://www.diyrecordingequipment.com/products/colourupter">
             <img src="https://www.diyrecordingequipment.com/cdn/shop/files/ColourupterModuleV2_medium.jpg">    	
    </a>
  </div>
  <div class="step-header">Welcome to the Colourupter assembly guide.</div>
  <div class="step-description">
      <p>Thank you for purchasing a <a href="https://www.diyrecordingequipment.com/products/colourupter">Colourupter</a>.</p>
      <p>If this is your first DIY project ever, we recommend reading our <a href="http://www.diyrecordingequipment.com/pages/getting-started">Getting Started Guide</a>.</p>
      <p>Before you begin, check the revision of your PCB. If yours has the version number "v2.5" on the bottom you are on the correct page. If it does not, please follow the <a href="https://www.diyrecordingequipment.com/pages/colourupter-manual">Colourupter mkI assembly guide</a>.</p>
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
@[/tools/500ext.html]
@[/tools/rew.html]

<h2>Component Sorting Sheet</h2>
<div class="manual-step">
    <div class="step-image">
    <a href="%base_url%/assets/colourupter/colourupter-sorting-2.0.pdf" target="_blank">
    <img src="%base_url%/assets/pdf-download.png" />
    </a>
    </div>
    <div class="step-description">
        <p>To identify and keep track of every part in the kit, download and print the <a href="%base_url%/assets/colourupter/colourupter-sorting-2.0.pdf" target="_blank">Component Sorting Sheet (PDF)</a>.</p>
    </div>
</div>

<div id="assembly-guide-content">

<h2>Standoffs, Header, and IC Socket (Bag 1)</h2>

<div class="manual-step">
    <div class="step-image">
    <a href="%base_url%/assets/colourupter/colour-standoffs.jpg" target="_blank">
    <img src="%base_url%/assets/colourupter/colour-standoffs-600.jpg" />
    </a>
    </div>
    @[/mods/colour-standoffs.html]
</div>

<div class="manual-step">
    <div class="step-image">
    <a href="%base_url%/assets/colourupter/colour-header.jpg" target="_blank">
    <img src="%base_url%/assets/colourupter/colour-header-600.jpg" />
    </a>
    </div>
    @[/mods/colour-header.html]
</div>

<div class="manual-step">
    <div class="step-image">
    <a href="%base_url%/assets/colourupter/ic-socket.jpg" target="_blank">
    <img src="%base_url%/assets/colourupter/ic-socket-600.jpg" />
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
    <a href="%base_url%/assets/colourupter/res-place.jpg" target="_blank">
    <img src="%base_url%/assets/colourupter/res-place-600.jpg" />
    </a>
    </div>
    @[/mods/res-place.html]
</div>

<div class="manual-step">
    <div class="step-image">
    <a href="%base_url%/assets/colourupter/res-solder.jpg" target="_blank">
    <img src="%base_url%/assets/colourupter/res-solder-600.jpg" />
    </a>
    </div>
    @[/mods/res-solder.html]
</div>

<div class="manual-step">
    <div class="step-image">
    <a href="%base_url%/assets/colourupter/res-trim.jpg" target="_blank">
    <img src="%base_url%/assets/colourupter/res-trim-600.jpg" />
    </a>
    </div>
    @[/mods/res-trim.html]
</div>

<h2>Capacitors, Vactrol, and Trimpot (Bag 3)</h2>

  <div class="manual-step">
    <div class="step-image">
      <a href="%base_url%/assets/colourupter/caps-small.jpg" target="_blank">
        <img src="%base_url%/assets/colourupter/caps-small-600.jpg" />
      </a>
    </div>
    <h3 class="step-header">Populate Capacitors</h3>
        <div class="step-description">
        <p>Place the capacitors in their respective positions. The capacitors are not polarized and therefore can be placed in either direction. Solder then trim the leads.</p>
		<p><strong>Note:</strong> These capacitors are mistakenly marked "100u" on the PCB. They should be 10u as shown in the photo.</p>
</div>
  </div>
  
<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/colourupter/vactrol.jpg" target="_blank">
        <img src="%base_url%/assets/colourupter/vactrol-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Populate Vactrol</h3>
<div class="step-description">
        <p>Next, we'll place the component at the heart of the Colourupter's sound: the vactrol, or resistive opto-isolator. The vactrol's orientation is indicated by the lead spacing; place the vactrol with the labeling on top and the closer leads towards the center of the PCB. Bend the leads, solder, and trim.</p>
</div>
</div>

  <div class="manual-step">
    <div class="step-image">
      <a href="%base_url%/assets/colourupter/trimpot.jpg" target="_blank">
        <img src="%base_url%/assets/colourupter/trimpot-600.jpg" />
      </a>
    </div>
    @[/mods/trimpot.html]
  </div>
  
<h2>IC (Bag 4)</h2>

  <div class="manual-step">
    <div class="step-image">
      <a href="%base_url%/assets/colourupter/ic.jpg" target="_blank">
        <img src="%base_url%/assets/colourupter/ic-600.jpg" />
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

<h2>Calibration</h2>

<p>No two vactrols are exactly alike. So to ensure predictable behavior and acceptable stereo matching, we need to calibrate the Colourupter. If you are using the Colourupter in a 500-series rack, the following steps will be easier with an extender like the <a href="https://www.diyrecordingequipment.com/products/500ext-500-series-extender-kit">500EXT</a>.</p>

<div class="manual-step">
    <div class="step-image">
        <img src="%base_url%/assets/colourupter/rew-600.jpg" />
    </div>
    <h3 class="step-header">Set Up for Testing</h3>
<div class="step-description">
        <p>Download and install <a href="https://www.roomeqwizard.com/">Room EQ Wizard</a> on your computer. In Preferences choose your audio interface for the Input and Output Device and set the Input and Output to the left/channel 1.</p>
        <p>Connect the Colour host with your Colourupter to the left/channel 1 of your interface.</p>
</div>
</div>


<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/colourupter/rew-unity.jpg" target="_blank">
        <img src="%base_url%/assets/colourupter/rew-unity-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Check Unity Gain</h3>
<div class="step-description">
        <p>Set your Colour host so that the Colour section is engaged but all of the Colours are bypassed. For example, on the Colour Palette mkII, the IN switch should be in, but all Colour switches should be out. If your host has a trim, set it to unity gain.</p>
        <p>In REW open the Generator module and set it to:</p>
        <ul>
            <li>Tones, Sine</li>
            <li>Frequency Hz: 1000</li>
            <li>-12dBFS</li>
        </ul>
        <p>Push the green play button and open REW's Levels module. Make sure the signal is coming back into the input at or very close to -12dBFS. This is unity gain. If you are not getting unity gain, check your connections.</p>
</div>
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/colourupter/rew-cal.jpg" target="_blank">
        <img src="%base_url%/assets/colourupter/rew-cal-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Calibrate Colourupter</h3>
<div class="step-description">
        <p>Once you've have confirmed your Colour host passes unity gain, engage the Colourupter and set the Colour knob to 12 o'clock. You should notice that the input to REW is now a bit lower.</p>
        <p>Use a screwdriver to adjust the VR1 trimpot until the level at the input is -15dBFS for 3dB of gain reduction. This will ensure that there is a moderate amount of compression at 12 o'clock on the Colour dial. If you would like the Colourupter to be more subtle, adjust for less gain reduction (higher input level). If you want your Colourupter more aggressive, adjust it for more gain reduction (lower input level).</p>
</div>
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/colourupter/finished.jpg" target="_blank">
        <img src="%base_url%/assets/colourupter/finished-600.jpg" />
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