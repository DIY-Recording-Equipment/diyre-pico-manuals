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
      <h3 class="step-header">Populate Transistors</h3>

<div class="step-description">
    <p>There are two important things to note about transistors. First, the orientation: one side of the body is flat while the other is round. And second, the part number: carefully check the markings on the sorting sheet against those on the body before inserting them.</p>
    <p>Identify the transistors, place them in the correct positions orientation, double check, and then solder and trim.</p>
        <div class="part">
            <p>Q1<br>2N5458 JFET</p>
            <img src="%base_url%/assets/parts/com-t002.png">
            <p>Markings: CEN 2N5458</p>
        </div>
        <div class="part">
            <p>Q2-Q5<br>2N5088</p>
            <img src="%base_url%/assets/parts/com-t002.png">
            <p>Markings: CEN 2N5088</p>
        </div>
        <div class="part">
            <p>Q6, Q7<br>PN2907A</p>
            <img src="%base_url%/assets/parts/com-t002.png">
            <p>Markings: JC2907A</p>
        </div>
</div>
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
    <h3 class="step-header">Populate Small Capacitors</h3>
    
<div class="step-description">
        <p>Place the smaller capacitors in their respective places. These capacitors are not polarized and therefore can be placed in either direction. Solder then trim the leads.</p>
        <p>Note that the capacitor colors have changed since these photos were first taken. Refer to the markings and colors below, not the photos.</p>
        <div class="part">
            <p>C1<br>.1uF film cap</p>
            <img src="%base_url%/assets/parts/com-c005.png">
            <p>Markings: 0,1/63-</p>
        </div>
        <div class="part">
            <p>C2<br>10nF film cap</p>
            <img src="%base_url%/assets/parts/com-c014.png">
            <p>Markings: 10n 250V</p>
        </div>
        <div class="part">
            <p>C2<br>1nF film cap</p>
            <img src="%base_url%/assets/parts/com-c025.png">
            <p>Markings: 1nJ63</p>
        </div>
</div>
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
        <div class="part">
            <p>C3, C6, C10-C12<br>4.7uF cap</p>
            <img src="%base_url%/assets/parts/com-c021.png">
        </div>
        <div class="part">
            <p>C4, C7, C22<br>10uF cap</p>
            <img src="%base_url%/assets/parts/com-c001.png">
        </div>
        <div class="part">
            <p>C8, C14, C20<br>47uF cap</p>
            <img src="%base_url%/assets/parts/com-c034.png">
        </div>
        <div class="part">
            <p>C13<br>2.2uF cap</p>
            <img src="%base_url%/assets/parts/com-c036.png">
        </div>
        <div class="part">
            <p>C18, C19, C21<br>100uF cap</p>
            <img src="%base_url%/assets/parts/com-c022.png">
        </div>
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
        <p>Congratulations on finishing your build!</p>
        <p>Have general feedback or a question? <a href="https://manuals.diy.re/docs/contact/">Get in touch</a>.</p>
        <p>Missing a part or need replacements? Submit a <a href="https://manuals.diy.re/docs/contact/parts/">Parts Request</a>.</p>
        <p>Something not working right? Don't worry, we have plenty of troubleshooting resources to help you figure it out.</p>
        <ul>
        <li><a href="https://manuals.diy.re/docs/troubleshooting/general/general-troubleshooting-tips/">General troubleshooting guide</a></li>
        <li><a href="https://manuals.diy.re/docs/troubleshooting/product/toneloc-troubleshooting/">Toneloc troubleshooting guide</a></li>
        </ul>
        <p>If you've worked through the troubleshooting guides above and are still stuck, reach out through the <a href="https://manuals.diy.re/docs/contact/troubleshooting/">troubleshooting support form</a>.</p>
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