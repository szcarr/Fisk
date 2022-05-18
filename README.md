<h1>FiskAI</h1>

<h2>Introduksjon</h2>
<p>
I dette dokumentet kjem eg til å prate om mine endringar i “detect.py” fila, og forklaringar på dei. Eg listar også opp hardware om ein har lyst og replikere prosjektet.
</p>

<h2>Hardware</h2>
<p>
For dette prosjektet brukar eg følgjande hardware for FiskAI:<br>
<b>Motherboard:</b> MSI H110M PRO VD<br>
<b>GPU:</b> NVIDIA GeForce GTX 1060 Aero ITX 3G OC<br>
<b>CPU:</b> Intel(R) Celeron(R) CPU G3930 @ 2.90GHz<br>
<b>Memory:</b> Corsair DDR4 64GB (2X32GB) 2666 MHz RAM<br>
<b>Storage:</b> Kingston A400 2.5" SSD 120GB<br>
<b>PSU:</b> Coolermaster MWE 750 Bronze V2
</p>

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
Fila <a href="https://github.com/ultralytics/yolov5/blob/master/detect.py" target="_blank">"detect.py"</a> er frå <i>Ultralytics</i>. Personleg prøvar eg å følge <a href="https://peps.python.org/pep-0008/" target="_blank">PEP 8 Style Guide</a> for Python når eg programmerar, men eg følger ikkje alle reglar som er oppgitt.
</p>

<h3>Kommandolinje argument</h3>
<p>
Kommandolinje argument er brukar spesifiserte parameter/variablar som ein kan ta inn i sjølve programmet.<br>
Mine personlege argument har standard verdien <i>-1</i> om brukaren ikkje sender inn argument for den variabelen.
</p>

> detect.py --offset 15

> detect.py `<argument>`

<p>
Her er argumentet <i>"--offset 15"</i> det vil seie at variabelen <i>offset</i> fekk verdien <i>15</i><br>
<i>"--offset 15"</i> er då eit eksempel på eit kommandolinje argument.
</p>

<br>

<h3>-offset</h3>
<p>
Seier kor bounding box må ligge i forhold til kantane på skjermen.
Om bounding box ligg “inn i” offset boksane, er bilete ikkje godkjent.
offset er oppgitt i prosent av kanten til skjermen.<br>
offset variablen er av datatypen <i>float</i>.<br>
<br>
<b>Eksempel på bruk av offset:</b><br>
</p>

> python detect.py --weights model/test/NilsV1.pt --source model/test/images --offset 10.0<br>
> python detect.py --weights model/test/NilsV1.pt --source model/test/images --offset `<float>`

<br>

<h3>-detection-amount</h3>
<p>
Seier kor mange detektsjonar brukaren ønsker å ha på bilete.<br>
Programmet filtrerar ut alle bilder som er mindre enn <i>detection-amount</i> eller større enn <i>detection-amount</i>.<br>
Berre bilete som har likt antall deteksjonar som brukaren har satt inn blir lagra.<br>
-detection-amount er av datatypen <i>int</i>.<br>
<br>
<b>Eksempel på bruk av detection-amount:</b><br>
</p>

> python detect.py --weights model/test/NilsV1.pt --source model/test/images --detection-amount 1<br>
> python detect.py --weights model/test/NilsV1.pt --source model/test/images --detection-amount `<int>`

<br>

<h3>-bounding-box-size</h3>
<p>
Seier minimumstørrelsen til bounding-box oppgit i prosent av brukaren.<br>
Om den faktiske størrelsen av bounding-boxen som er detektert er større eller lik <i>-bounding-box-size</i> så er bilete godkjent<br>
<i>-bounding-box-size</i> er av datatypen <i>float</i><br>
<br>
<b>Eksempel på bruk av bounding-box-size:</b><br>

</p>

> python detect.py --weights model/test/NilsV1.pt --source model/test/images --bounding-box-size 20.0<br>
> python detect.py --weights model/test/NilsV1.pt --source model/test/images --bounding-box-size `<float>`

<br>

<h3>-time-boundaries</h3>
<p>
Seier kva tidsramme som er gyldig for lagring.<br>
Den hentar tida frå filnamnet. Filnamnet må ha ein viss struktur for at programmet skal kunne hente tida frå filnamnet.<br>
<br>
<b>Forventa filstruktur:</b> *__*__HH-MM-SS.mp4*<br>
<b>Eksempel filnavn:</b> syd4k__2020-08-01__10-45-01.mp4_13700.jpg<br>
<br>
<i>-time-boundaries</i> er av datatypen <i>list</i> med to element som er av datatypen <i>int</i><br>
<br>
<b>Eksempel på bruk av -time-boundaries:</b><br>
</p>

> python detect.py --weights model/test/NilsV1.pt --source model/test/images --time-boundaries 7 21<br>
> python detect.py --weights model/test/NilsV1.pt --source model/test/images --time-boundaries `<minimum_tid> <maximum_tid>`<br>

<h3>Funksjonar</h3>
<p>
Min del av programmet har seks forskjellige funksjonar. Kvar funksjon er med på å gjere lagringsprosessen dynamisk, og sjekkar om alle kriterier er godkjent før den lagrar bilete.
</p>

</h4><b>check_if_bounding_box_is_large_enough():</b></h4>

<h3>Ekstra</h3>
<p>
</p>

<h2>Kjelder</h2>

<h3>Kva er docker?</h3>
<p>
https://docs.nvidia.com/deeplearning/frameworks/user-guide/index.html
</p>

<h3>Kva er YOLOv5?</h3>
<p>
Jocher, G. (2022, 17. Mai). What is YOLOv5. Ultralytics.<br>
https://docs.ultralytics.com/
</p>
