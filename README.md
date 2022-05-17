<h1>FiskAI</h1>

<h2>Introduksjon</h2>
<p>I dette dokumentet kjem eg til å prate om mine endringar i “detect.py” fila.</p>

<h2>Hardware</h2>
<p>For dette prosjektet brukar eg følgjande hardware for FiskAI:<br>
<b>Motherboard:</b> MSI H110M PRO VD<br>
<b>GPU:</b> NVIDIA GeForce GTX 1060 Aero ITX 3G OC<br>
<b>CPU:</b> Intel(R) Celeron(R) CPU G3930 @ 2.90GHz<br>
<b>Memory:</b> Corsair DDR4 64GB (2X32GB) 2666 MHz RAM<br>
<b>Storage:</b> Kingston A400 2.5" SSD 120GB<br>
<b>PSU:</b> Coolermaster MWE 750 Bronze V2</p>

<h2>OS</h2>
<p>
<b>Operativsystem:</b> Ubuntu 22.04 LTS<br>
<b>Linux kernel versjon:</b> 5.15.0-27-generic
</p>

<h2>Roboflow</h2>
<p> </p>

<h2>Colab</h2>
<p> </p>

<h2>Docker/NVIDIA Docker</h2>
<p> </p>

<h2>YOLOv5</h2>
<p>
"YOLO" står for "You only look once". YOLO er ein gjenstandsdetekterande algoritme som delar opp bilete i eit rutenett. Kvar celle i rutenettet er ansvarleg for å registrere objekt innad seg sjølv.<br>
<br>
"YOLO" er eit av dei mest populere gjenstandsdetekterande algoritme grunna si hastigheit og nøyaktigheit.
</p>

<h2>Programmet</h2>
<p>
Fila <a href="https://github.com/ultralytics/yolov5/blob/master/detect.py" target="_blank">"detect.py"</a> er frå ein åpen kildekode. Personleg prøvar eg å følge <a href="https://peps.python.org/pep-0008/" target="_blank">PEP 8 Style Guide</a> for Python når eg programmerar.
</p>

<h3>Kommandolinje argument</h3>
<p>
Kommandolinje argument er brukar spesifiserte parameter/variablar som ein kan ta inn i sjølve programmet<br>
</p>

> detect.py --offset 15

<p>Her er argumentet <i>"--offset 15"</i> det vil seie at variabelen <i>offset</i> fekk verdien <i>15</i><br>
<i>"--offset 15"</i> er då eit eksempel på eit kommandolinje argument.</p>

<h4>–offset</h4>
<p>Offset seier kor bounding box må ligge i forhold til kantane på skjermen. Om bounding box ligg “inn i” offset boksane, er bilete ikkje godkjent. Offset er oppgitt i prosent av kanten til skjermen.<br>
<br>
<b>Eksempel på bruk av offset:</b><br>
</p>

> python detect.py --weights model/test/NilsV1.pt --source model/test/images --offset 10<br>
> python detect.py --weights model/test/NilsV1.pt --source model/test/images --offset 10.5

<h3>Funksjonar</h3>
<p>Min del av programmet har seks forskjellige funksjonar. Kvar funksjon er med på å gjere lagringsprosessen dynamisk, og sjekkar om alle kriterier er godkjent før den lagrar bilete.</p>

</h4>check_if_bounding_box_is_large_enough():</h4>



<h2>Kjelder</h2>
Kva er docker?
https://docs.nvidia.com/deeplearning/frameworks/user-guide/index.html

Kva er YOLOv5?
Jocher, G. (2022, 17. Mai). What is YOLOv5. Ultralytics
https://docs.ultralytics.com/
