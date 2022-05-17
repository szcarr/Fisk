<h1>FiskAI</h1>

<h2>Introduksjon</h2>
<p>I dette dokumentet kjem eg til å prate om mine endringar i “detect.py” fila.</p>

<h2>Hardware</h2>
<p>For dette prosjektet brukar eg følgjande hardware for FiskAI:<br>
<strong>Motherboard:</strong> MSI H110M PRO VD<br>
<strong>GPU:</strong> NVIDIA GeForce GTX 1060 Aero ITX 3G OC<br>
<strong>CPU:</strong> Intel(R) Celeron(R) CPU G3930 @ 2.90GHz<br>
<strong>Memory:</strong> Corsair DDR4 64GB (2X32GB) 2666 MHz RAM<br>
<strong>Storage:</strong> Kingston A400 2.5" SSD 120GB<br>
<strong>PSU:</strong> Coolermaster MWE 750 Bronze V2</p>

<h2>OS</h2>
<p><strong>Operativsystem:</strong> Ubuntu 22.04 LTS<br>
<strong>Linux kernel versjon:</strong> 5.15.0-27-generic</p>

<h2>Roboflow</h2>
<p> </p>

<h2>Colab</h2>
<p> </p>

<h2>Docker/NVIDIA Docker</h2>
<p> </p>

<h2>YoloV5</h2>
<p>"YOLO" står for "You only look once". YOLO er eit gjenstandsdetekterande algoritme som delar opp bilete i eit rutenett</p>

<h2>Programmet</h2>
<p>Fila <a href="https://github.com/ultralytics/yolov5/blob/master/detect.py" target="_blank">"detect.py"</a> er frå ein åpen kildekode. Personleg prøvar eg å følge <a href="https://peps.python.org/pep-0008/" target="_blank">PEP 8 Style Guide</a> for Python når eg programmerar.</p>

<h3>Command line args</h3>


<h4>–offset</h4>
<p>Offset seier kor bounding box må ligge i forhold til kantane på skjermen. Visst bounding box ligg “inn i” offset, er bilete ikkje godkjent. Offset er oppgitt i prosent av kanten til skjermen.<br>
Eksempel på bruk av offset:</p>

> python detect.py --weights model/test/NilsV1.pt --source model/test/images --offset 10
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
