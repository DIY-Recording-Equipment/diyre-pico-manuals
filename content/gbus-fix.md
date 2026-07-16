---
Title: G Bus Bug Fix
Date: 2024-06-19
Template: manual
---

<div>
    <p>Version 1.0 of the G Bus PCB has an error in which two traces are shorted to each other. This issue does not harm the components in the compressor, but it causes an imbalance in level and compression between the two channels when the XFMR switch is engaged.</p>
    <p>Fixing this issue requires cutting traces in two places and then soldering a wire between two pads. This might seem intimidating if you've never cut traces before, but it's actually quite simple and the guide below will walk you through step-by-step. Basically, what we are doing is cutting so that the traces are not shorted and then replacing one of the traces with a direct wire.</p>
</div>


<h2>Required Tools</h2>

@[/tools/soldering-iron.html]
@[/tools/solder.html]
@[/tools/wire-cutters.html]
<div class="manual-step">
       <div class="step-image"><img src="%base_url%/assets/tools/wire-stripper.jpg"></div>
        <div class="step-description">
          <p><strong>Wire Stripper</strong><br>
          A dedicated wire stripper will make stripping the ends of the hookup wire easier. This can also be done with wire cutters but it's more difficult.
          </p>
        </div>
</div>
<div class="manual-step">
       <div class="step-image"><img src="https://cdn.shopify.com/s/files/1/0698/2265/files/tape_small.jpg"></div>
        <div class="step-description">
          <p><strong>Tape</strong><br>
           A bit of tape will help hold the wire in place for soldering.
          </p>
        </div>
</div>
<div class="manual-step">
       <div class="step-image"><img src="%base_url%/assets/tools/hobby-knife.jpg"></div>
        <div class="step-description">
          <p><strong>Hobby Knife</strong><br>
          A hobby or "X-acto" knife with a sharp tip for cutting the copper traces.
          </p>
        </div>
</div>
@[/tools/multi-meter.html]


<div id="assembly-guide-content">

<h2>Cut Traces</h2>

<!-- Step without Module -->
<div class="manual-step">
    <h3 class="step-header">Remove the PCB from the Chassis</h3>
<div class="step-description">
        <p>Unscrew the jacks on the rear panel and the mounting screws on the motherboard, including the screws on the transformers. Disconnect the cables from the motherboard and remove the front panel. Then remove the motherboard from the chassis and flip it over. All of the work we're doing will be on the bottom (solder-side) of the PCB.</p>
</div>
</div>
    
<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/gbus-fix/identify-trace-1.jpg" target="_blank">
        <img src="%base_url%/assets/gbus-fix/identify-trace-1-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Identify First Trace to Cut</h3>
<div class="step-description">
        <p>The PCB needs to be cut in two places to fix the short. The most important part of this process is making sure you cut in the correct places.</p>
        <p>On modern PCBs like this one, the copper traces are covered by a layer (usually green, in this case black) called the soldermask. However, you can still see the outline of the traces underneath the soldermask.</p>
        <p>The first segment to be cut is a very short trace (0.1" long) just above the "R" in the large DIYRE logo.</p>
</div>
</div>

    
<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/gbus-fix/identify-trace-2.jpg" target="_blank">
        <img src="%base_url%/assets/gbus-fix/identify-trace-2-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Identify Second Trace</h3>
<div class="step-description">
        <p>The second segment is a slightly longer trace (0.3" long) two inches to the left, and one inch down from the first segment. About one inch to the left and slightly above the assembly guide url, you will see three parallel segments of about the same length (0.3"). The top one of these is the segment to be cut.</p>
        <p>Mark or note both of these places. If you have any doubt as to which segments to cut, please don't hesitate to contact us via the "Help" button in the bottom-right corner of the page.</p>
</div>
</div>

<div class="manual-step">
    <div class="step-image">
        <a href="%base_url%/assets/gbus-fix/cut-traces.jpg" target="_blank">
        <img src="%base_url%/assets/gbus-fix/cut-traces-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Cut Traces</h3>
<div class="step-description">
    <p>Using a hobby knife, cut in the center of the segments you identified in the last step. Begin by pressing down into the trace and slowly moving the knife across it. Repeat this until you have removed the soldermask and can see the copper trace beneath.</p>
    <p>Once the soldermask is gone, continue to cut across the trace with a controlled slicing motion until the copper is gone. When you're done you'll see the gray fiberglass beneath the copper layer.</p>
</div>
</div>
    
<div class="manual-step">
<div class="step-image">
        <a href="%base_url%/assets/gbus-fix/test-cut.jpg" target="_blank">
        <img src="%base_url%/assets/gbus-fix/test-cut-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Test Trace Cutting</h3>
<div class="step-description">
    <p>You can now confirm that the traces were completely cut with a multi-meter. Set your meter to read resistance and probe the two pads described below. It doesn't matter which probe (red or black) goes where.</p>
    <p><em>You can click the images in this guide to zoom in on the pads.</em></p>
    <p>The first pad is about 1/4" up and to the right of the "E" in the large DIYRE logo. If you were to flip the PCB over, this would be the right pad of R26_1.</p>
    <p>The second pad belongs to the 26-pin connector CON4. When looking at the bottom of the PCB, it is on the bottom row, fourth pad from the right.</p>
    <p>The resistance should be very high. If the resistance is below 100 Ohms, repeat the step above.</p>
</div>
</div>

<h2>Solder Wire</h2>
    
<div class="manual-step">
<div class="step-image">
        <a href="%base_url%/assets/gbus-fix/identify-pads.jpg" target="_blank">
        <img src="%base_url%/assets/gbus-fix/identify-pads-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Identify Pads to Connect</h3>
<div class="step-description">
    <p>To complete the fix, we are going to solder a wire between the two pads you measured in the previous step.</p>
    <p>Mark or note these pads before proceeding.</p>
</div>
</div>
    
<div class="manual-step">
<div class="step-image">
        <a href="%base_url%/assets/gbus-fix/trim-wire.jpg" target="_blank">
        <img src="%base_url%/assets/gbus-fix/trim-wire-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Trim and Tin Wire</h3>
<div class="step-description">
    <p>Cut a piece of 22 or 24 gauge hookup wire to 6". Strip 1/4" of insulation off each end and tin the tips by heating and adding a bit of solder.</p>
</div>
</div>
    
<div class="manual-step">
<div class="step-image">
        <a href="%base_url%/assets/gbus-fix/solder-wire.jpg" target="_blank">
        <img src="%base_url%/assets/gbus-fix/solder-wire-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Tape and Solder Wire</h3>
<div class="step-description">
    <p>Tape the wire in place so that both ends touch the pads they will be soldered to.</p>
    <p>For each end, heat the tip of the wire and the existing solder joint at the same time. Once the solder liquifies, add a very small amount of solder to the joint then remove the iron.</p>
</div>
</div>
    
<div class="manual-step">
<div class="step-image">
        <a href="%base_url%/assets/gbus-fix/test-wire.jpg" target="_blank">
        <img src="%base_url%/assets/gbus-fix/test-wire-600.jpg" />
        </a>
    </div>
    <h3 class="step-header">Test Wire</h3>
<div class="step-description">
    <p>Flip the PCB over and test the resistance between the two pads you soldered to. Now that we are looking at the PCB from the top, these are the right side of R26_1 and the bottom/fourth-from-the-left pin of CON4. The resistance should be close to 0 Ohms.</p>
</div>
</div>

<div class="manual-step">
    <h3 class="step-header">Reassemble the Case</h3>
<div class="step-description">
    <p>Thanks for performing this bug fix. You can now put your G Bus back together and use it for many years to come. For a reminder on how to assemble the case, see <a href="https://manuals.diy.re/gbus#mcb_toc_head52">Section 12 of the G Bus Assembly Guide</a>. I apologize for the inconvenience caused by this bug. If you have any questions about the process please don't hesitate to contact us via the "Help" button below.</p>
</div>
</div>
    
</div>
