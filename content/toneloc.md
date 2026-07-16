---
Title: Toneloc Assembly Guide
Date: 2024-06-19
Template: manual
---

<div>
  <div class="step-header">Welcome to the Toneloc assembly guide.</div>
  <div class="step-description">
      <p>Thank you for purchasing a <a href="https://www.diyrecordingequipment.com/products/toneloc-level-loc-compressor-colour">Toneloc</a></p>
      <p>If this is your first DIY project ever, we recommend reading our <a href="http://www.diyrecordingequipment.com/pages/getting-started">Getting Started Guide</a>.</p>
       <p>This guide is for the Toneloc 2.0, if you purchased the earlier version see the <a href="https://www.diyrecordingequipment.com/pages/tone-loc-assembly-guide">Toneloc 1.0 assembly guide</a>.</p>
  </div>
</div>


<h2>Required Tools</h2>


@[/tools/soldering-iron.html]
@[/tools/solder.html]
@[/tools/wire-cutters.html]


<h2>Optional Tools</h2>

@[/tools/multi-meter.html]
@[/tools/desoldering-pump.html]

<h2>Component Sorting Sheet</h2>
<div class="manual-step">
    <div class="step-image">
    <a href="%base_url%/assets/toneloc/toneloc-sorting-2.0.pdf" target="_blank">
    <img src="%base_url%/assets/pdf-download.png" />
    </a>
    </div>
    <div class="step-description">
        <p>To identify and keep track of every part in the kit, download and print the <a href="%base_url%/assets/toneloc/toneloc-sorting-2.0.pdf" target="_blank">Component Sorting Sheet (PDF)</a>.</p>
    </div>
</div>

<div id="assembly-guide-content">
    
<h2>Standoffs and Header (Bag 1)</h2>

<div class="manual-step">
    <div class="step-image">
    <a href="%base_url%/assets/toneloc/colour-standoffs.jpg" target="_blank">
    <img src="%base_url%/assets/toneloc/colour-standoffs-600.jpg" />
    </a>
    </div>
    @[/mods/colour-standoffs.html]
</div>

<div class="manual-step">
    <div class="step-image">
    <a href="%base_url%/assets/toneloc/colour-header.jpg" target="_blank">
    <img src="%base_url%/assets/toneloc/colour-header-600.jpg" />
    </a>
    </div>
    @[/mods/colour-header.html]
</div>    

<div class="manual-step">
    <div class="step-image">
    <a href="%base_url%/assets/toneloc/ic-socket.jpg" target="_blank">
    <img src="%base_url%/assets/toneloc/ic-socket-600.jpg" />
    </a>
    </div>
    @[/mods/ic-socket.html]
</div> 

<h2>Transistors, Header, and IC</h2>

<div class="manual-step">
    <div class="step-image">
    <a href="%base_url%/assets/toneloc/transistors.jpg" target="_blank">
    <img src="%base_url%/assets/toneloc/transistors.jpg" />
    </a>
    </div>
    @[/mods/transistors.html]
</div> 

<div class="manual-step">
    <div class="step-image">
    <a href="%base_url%/assets/toneloc/header.jpg" target="_blank">
    <img src="%base_url%/assets/toneloc/header.jpg" />
    </a>
    </div>
    <h3 class="step-header">Tape and Solder Header</h3>

<div class="step-description">
    <p>Place the 3-pin header with the longer side of the pins facing up. As you did with the IC socket, tape the header in place, flip the PCB, and solder.</p>
    <p>For the moment, set aside the black, plastic jumper. You will use this at the end to set the release option.</p>
</div>
</div> 

<div class="manual-step">
    <div class="step-image">
    <a href="%base_url%/assets/toneloc/ic.jpg" target="_blank">
    <img src="%base_url%/assets/toneloc/ic-600.jpg" />
    </a>
    </div>
    @[/mods/ic.html]
</div> 

<h2>Small Capacitors</h2>

<div class="manual-step">
    <div class="step-image">
    <a href="%base_url%/assets/toneloc/caps-small.jpg" target="_blank">    
    <img src="%base_url%/assets/toneloc/caps-small-600.jpg" />
    </a>
    </div>
    @[/mods/caps-small.html]
</div>

<h2>Large Capacitors</h2>

<div class="manual-step">
    <div class="step-image">
    <a href="%base_url%/assets/toneloc/caps-large.jpg" target="_blank">
    <img src="%base_url%/assets/toneloc/caps-large-600.jpg" />
    </a>
    </div>
    <h3 class="step-header">Populate Large Capacitors</h3>
    
<div class="step-description">
        <p>Some of these capacitors are polarized, so they must be placed in a certain direction. The polarized capacitors are marked with a stripe on the body. On these the positive lead is slightly longer, while the negative lead is marked with a stripe on the body of the capacitor. Place the capacitors with the positive lead in the pad next to the "+" marking on the PCB. Double check their orientation, then solder and trim.</p>
</div>
</div>

<h2>Final Checks</h2>
<div class="manual-step">
<p>Before you wrap up, check the following things:</p>
<ul class="manual-checks">
    @[/checks/capacitor.html]   
    @[/checks/transistor.html]
    @[/checks/ic.html]
    @[/checks/solder.html]
</ul>
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/toneloc/finished.jpg" target="_blank">
        <img src="%base_url%/assets/toneloc/finished-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Complete!</h3>

<div class="step-description">
        <p>Congrats on assembling your Toneloc Colour!
        </p>
        <p><strong>Setting the Release Option:</strong> Place jumper you set aside in step 2.2 on the 3-pin header to set the release time. FST is the default option which matches the behavior of the original unit. SLO is slower than the original release time, and will make the compression smoother and less aggressive. Part of the character of the Toneloc is that the release time varies based on the input level, so there is no single time constant for either setting. To match your Toneloc 2.0 to a Toneloc 1.0, use the FST setting.
        </p>
</div>
</div>
</div>

<div class="manual-step">
<h2>Help Us Improve</h2>
    <form action="https://formsubmit.co/support@diyrecordingequipment.com" method="POST" />
      <input type="hidden" name="_replyto">
      <input type="hidden" name="_subject" value="{{ page.title }} Feedback">
      <input type="hidden" name="_next" value="https://www.diyrecordingequipment.com/pages/contact-success">
<p>
    @[mods/contact.html]   
    </form>
</div>