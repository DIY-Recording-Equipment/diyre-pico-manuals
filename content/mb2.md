---
Title: MB2 Assembly Guide
Date: [date]
Template: manual
---

<div>
  <div class="step-image">
    <a href="[kit url in store]">
             <img src="%base_url%/assets/mb2/finished-600.jpg">    	
    </a>
  </div>
  <div class="step-header">Welcome to the MB2 assembly guide.</div>
  <div class="step-description">
      <p>Thank you for purchasing a <a href="[kit url in store]">MB2</a></p>
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

<div id="assembly-guide-content">

<h2>Resistors</h2>
<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/mb2/res-bend.jpg" target="_blank">
        <img src="%base_url%/assets/mb2/res-bend-600.jpg" />
        </a>
    </div>
    @[/mods/res-bend.html]
     <div class="step-parts">
        <div class="part">
            <p>R1, R2<br>10k resistor (x4)</p>
            <img src="%base_url%/assets/parts/com-r-10k.png">
        </div>
         <div class="part">
            <p>R3, R4<br>68R resistor (x4)</p>
            <img src="%base_url%/assets/parts/com-r-68.png">
        </div>
         <div class="part">
            <p>R5, R6<br>2.7k resistor (x4)</p>
            <img src="%base_url%/assets/parts/com-r-2.7k.png">
        </div>
         <div class="part">
            <p>R7, R8<br>470k resistor (x4)</p>
            <img src="%base_url%/assets/parts/com-r-470k.png">
        </div>
    </div>
</div>

<div class="manual-step">
    @[/mods/res-sort.html]
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/mb2/res-place.jpg" target="_blank">
        <img src="%base_url%/assets/mb2/res-place-600.jpg" />
        </a>
    </div>
    @[/mods/res-place.html]
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/mb2/res-solder.jpg" target="_blank">
        <img src="%base_url%/assets/mb2/res-solder-600.jpg" />
        </a>
    </div>
    @[/mods/res-solder.html]
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/mb2/res-trim.jpg" target="_blank">
        <img src="%base_url%/assets/mb2/res-trim-600.jpg" />
        </a>
    </div>
    @[/mods/res-trim.html]
</div>

<h2>Transistors</h2>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/mb2/trans-bc327.jpg" target="_blank">
        <img src="%base_url%/assets/mb2/trans-bc327-600.jpg" />
        </a>
    </div>
    @[/mods/trans-bc327.html]
    <div class="step-parts">
    <div class="part">    
        <p>T1, T2<br>BC327 transistor (x4)</p>
        <img src="%base_url%/assets/parts/com-t-to92.png">
    </div>
    </div>
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/mb2/trans-lsk389.jpg" target="_blank">
        <img src="%base_url%/assets/mb2/trans-lsk389-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Populate LSK389 Transistors</h3>
<div class="step-description">
        <p>Spread out the pins of the two LSK389 transistors so that they will fit in the T3 pads. Then place the transistors, making sure to align the tab on the body with the tab on the PCB.</p>
        <p><strong>Important:</strong> Double check the orientation of these transistors before soldering. These parts are expensive and difficult to remove once they're soldered in. Once you are positive that the tab on the transistor and on the PCB line up, solder and trim the leads.</p>
        <p>These components are the functional core of the MB2. Their job is to provide 26dB gain for both the positive and negative halves of the balanced signal at the same time. This is a very delicate task, as any noise or distortion introduced in one half of the signal will not be canceled out, and will be amplified by the following mic preamp. So each LSK389 contains two matched, low-noise transistors (one for each half of the balanced signal), which are thermally coupled in the same case.</p>
        <div class="step-parts">
        <div class="part">    
        <p>T3<br>LSK389 transistor (x2)</p>
        <img src="%base_url%/assets/parts/com-t015.png">
        </div>
    </div>
</div>
</div>

<h2>Capacitors</h2>

<div class="manual-step">
    <div class="step-image">
    <a href="%base_url%/assets/mb2/caps-small.jpg" target="_blank">    
    <img src="%base_url%/assets/mb2/caps-small-600.jpg" />
    </a>
    </div>
    @[/mods/caps-small.html]
    <div class="step-parts">
	<p><strong>Note:</strong> C1 and C2 have been changed to the same type as C3 and C4, not the yellow type shown in the photos.</p>  
    <div class="part">    
        <p>{RefDes}<br>{Item Name} (x{Qty})</p>
        <img src="{Image}">
        <p>{Markings}</p>
    </div>
    <div class="part">    
        <p>C3, C4<br>0.22u cap (x4)</p>
        <img src="%base_url%/assets/parts/com-c019.png">
    </div>
    </div>
</div>

<div class="manual-step">
    <div class="step-image">
    <a href="%base_url%/assets/mb2/caps-large.jpg" target="_blank">
    <img src="%base_url%/assets/mb2/caps-large-600.jpg" />
    </a>
    </div>
    @[/mods/caps-large.html]
    <div class="step-parts">
    <div class="part">    
        <p>C5<br>100u cap</p>
        <img src="%base_url%/assets/parts/com-c028.png">
    </div>
    </div>
</div>

<h2>Jacks and Case</h2>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/mb2/xlrs-case.jpg" target="_blank">
        <img src="%base_url%/assets/mb2/xlrs-case-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Screw Panels to XLRs</h3>
    
<div class="step-description">
    <p>Screw the input and output panels to the XLR jacks with the longer, thread-cutting screws. Leave the screws loose for now so that the XLRs have a bit of room to move.</p>
</div>
    <div class="step-parts">
        <div class="part">
            <p>J2, J6<br>3-pin XLR male jack (x2)</p>
            <img src="%base_url%/assets/parts/com-j007.png">
        </div>
        <div class="part">
            <p>J4, J8<br>3-pin XLR female jack (x2)</p>
            <img src="%base_url%/assets/parts/com-j008.png">
        </div>
         <div class="part">
           <p>XLR screw (x8)</p>
            <img src="%base_url%/assets/parts/hw-s022.png">
        </div>
        </div>
</div>
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/mb2/xlrs-solder.jpg" target="_blank">
        <img src="%base_url%/assets/mb2/xlrs-solder-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Populate XLR Jacks</h3>
    <div class="step-description">
    <p>Place the XLR jacks. Once all the leads including the plastic mounting tabs have snapped into place, tighten the screws on the panel. Solder the jacks but do not trim the leads.</p>
    </div>
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/mb2/slide-pcb.jpg" target="_blank">
        <img src="%base_url%/assets/mb2/slide-pcb-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Slide PCB Into Case</h3>
<div class="step-description">
        <p>Unscrew and remove one of the panels. Then slide the assembly into the lower channel in the case. The input panel should be on the side closest to the "M" in "MB2."</p>
</div>
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/mb2/screw-panels.jpg" target="_blank">
        <img src="%base_url%/assets/mb2/screw-panels-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Screw in Panels</h3>
<div class="step-description">
        <p>Re-attach the remaining panel to the XLRs. Then fasten the panels to the case with the shorter screws.</p>
</div>
    <div class="step-parts">
        <div class="part">
            <p>PCB bracket screw (x8)</p>
            <img src="%base_url%/assets/parts/hw-s027.png">
        </div>
    </div>
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/mb2/foam.jpg" target="_blank">
        <img src="%base_url%/assets/mb2/foam-600.jpg" />
        </a>
    </div>
    @[/mods/foam-pad.html]
</div>

<h2>Final Checks and Testing</h2>

<div class="manual-step">
<ul class="manual-checks">
<p>Before you wrap up, check the following things:</p>
@[/checks/capacitor.html]    
@[/checks/transistor.html]
@[/checks/resistor.html] 
@[/checks/solder.html]
</ul>
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/mb2/test-input.jpg" target="_blank">
        <img src="%base_url%/assets/mb2/test-input-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Connect Mic to MB2</h3>
<div class="step-description">
        <p>Connect a dynamic or ribbon microphone to MIC INPUT 1. Do the following steps with channel 1 and then connect the mic to MIC INPUT 2 and repeat the steps.</p>
</div>
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/mb2/test-output.jpg" target="_blank">
        <img src="%base_url%/assets/mb2/test-output-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Connect the MB2 to an Audio Interface</h3>
<div class="step-description">
        <p>Run an XLR cable from MIC OUTPUT 1 to a microphone input on your audio interface. Turn the gain knob on the interface down all the way, then engage +48 phantom power. The phantom power is what powers the MB2; it does not pass through to the microphone.</p>
        <p>Next, set a channel in your DAW to record the channel you plugged the MB2 into. Sing, hum, or make some noise into the mic and set the gain on the interface accordingly. Make a short recording to check that the signal is passing cleanly from the MB2. Now repeat these steps for channel 2.</p>
</div>
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/mb2/finished.jpg" target="_blank">
        <img src="%base_url%/assets/mb2/finished-600.jpg" />
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