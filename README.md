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

<h2>labelImg</h2>
<p>
labelImg er eit program som ein kan annotere bilete manuelt.<br>
<br>
<b>Generelle reglar for annotering av bilete:</b>
<ul>
    <li>Bounding boxen som ein tegnar opp skal vere så tett inn på objektet som mogleg.</li>
    <li>Om det ønska objektet ligg bak eit anna objekt skal ein tegne bounding boxen som om ein kunne sjå heile ønska objektet.</li>
    <li>Bilete skal vere tydelig, og ikkje "blurry".</li>
    <li>Objektet skal ikkje gå utanfor bilete.</li>
</ul>
<br>
Disse reglane kjem sjølvsagt an på kva du personleg prøvar å trene.<br>
<br>

> pip3 install labelImg

</p>

<h2>Roboflow</h2>
<p>
Roboflow er ei nettside der ein kan laste opp eigne bilder og trene ein modell utifrå dei biletene ein har lasta opp.<br>
</p>

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

<br>

<h3>Kommandolinje argument</h3>
<p>
Kommandolinje argument er brukar spesifiserte parameter/variablar som ein kan ta inn i sjølve programmet.<br>
Mine personlege argument har standard verdien <i>-1</i> om brukaren ikkje sender inn argument for den variabelen.
</p>

> detect.py --offset 15

> detect.py `<argument>`

<p>
Her er argumentet <i>"--offset 15"</i> det vil seie at variabelen <i>offset</i> fekk verdien <i>15</i><br>
<i>"--offset 15"</i> er då eit eksempel på eit kommandolinje argument.<br>
<br>
Du kan også kombinere fleire argument:

> detect.py --offset 15 --conf-thres 0.7 --time-boundaries 14 18
> detect.py `<argument1>` `<argument2>` `<argument3>`

</p>

<br>

<h3>-offset</h3>
<p>
Seier kor bounding box må ligge i forhold til kantane på skjermen.
Om bounding box ligg “inn i” offset boksane, er bilete ikkje godkjent.
offset er oppgitt i prosent av kanten til skjermen.<br>
offset variablen er av datatypen <i>float</i>.<br>
<br>
<strong>Eksempel på gyldig bilete:</strong>

![image](https://user-images.githubusercontent.com/67342876/169094892-5a2484d9-ba90-4f92-a49d-a899370fd161.png)

<h6>Fig. 8.2.1. Gyldig boundingbox utan visuell offset.</h6>

![image](https://user-images.githubusercontent.com/67342876/169091315-98e9ba83-85f9-471e-9e08-82f30baf8044.png)

<h6>Fig. 8.2.2. Gyldig boundingbox med visuell offset.</h6>

Boundingboxen(grå og grøne boksen rundt fisken) er ikkje inn i <i>offset</i>(det raude), difor er det eit gyldig bilete.

<strong>Eksempel på eit ikkje gyldig bilete:</strong>

![image](https://user-images.githubusercontent.com/67342876/169094628-b8767a32-ada9-41f7-b6eb-e449890a6372.png)

<h6>Fig. 8.2.3. Ikkje gyldig boundingbox utan visuell offset.</h6>

![image](https://user-images.githubusercontent.com/67342876/169094559-b44283b8-eb7a-4078-8852-b4ee3ec122ad.png)

<h6>Fig. 8.2.4. Ikkje gyldig boundingbox med visuell offset.</h6>

Boundingboxen(blå boks) er inn i <i>offset</i>(det raude), difor er det ikkje eit gyldig bilete.

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
Brukaren spesifiserar <code>minimum_tid</code> og <code>maximum_tid</code> i klokketimar.<br>
Forventa input frå: <code>minimum_tid</code> og <code>maximum_tid</code> er eit tal frå 0-24.<br>
Det er også forventa at <code>minimum_tid</code> <= <code>maximum_tid</code>.<br>

<i>-time-boundaries</i> er av datatypen <i>list</i> med to element som er av datatypen <i>str</i><br>
<br>
<b>Eksempel på bruk av -time-boundaries:</b><br>
</p>

> python detect.py --weights model/test/NilsV1.pt --source model/test/images --time-boundaries 7 21<br>
> python detect.py --weights model/test/NilsV1.pt --source model/test/images --time-boundaries `<minimum_tid> <maximum_tid>`<br>

<br>
<h3>Funksjonar</h3>
<p>
Min del av programmet har sju forskjellige funksjonar. Fire av dei funksjonane er med på å bestemme om bilete skal bli lagra eller ikkje<br>
Kvar av dei funksjonane er med på å gjere lagringsprosessen dynamisk, og sjekkar om alle kriterier er godkjent før den lagrar bilete.<br>
</p>

</h4><b>check_if_bounding_box_is_large_enough():</b></h4>

![image](https://user-images.githubusercontent.com/67342876/169122414-5105c14e-525a-4bfb-880a-d7efd1c9444f.png)

<p>

</p>
</h4><b>check_if_bounding_box_position_is_legal():</b></h4>

![image](https://user-images.githubusercontent.com/67342876/169122638-1b2b0165-59d9-4b59-8327-42cbbe576f37.png)

<p>

</p>

</h4><b>check_if_only_x_amount_of_detection():</b></h4>

![image](https://user-images.githubusercontent.com/67342876/169122843-93ead6a3-a9e8-44ea-86ca-227cb95874ab.png)


<p>

</p>

</h4><b>check_if_time_is_within_bounds():</b></h4>

![image](https://user-images.githubusercontent.com/67342876/169123582-147df78b-ae95-48a5-97d7-0e8d28ba4fbf.png)


<p>

</p>

</h4><b>annotated_picture_renaming():</b></h4>
<br>
<br>

![image](https://user-images.githubusercontent.com/67342876/169122990-f7491d3d-641f-4634-84e5-db07be286357.png)
<h6>Fig. 9.5.1. annotated_picture_renaming() funksjonen.</h6>
<p>
Funksjonen lagar namn på annotert bilete utifrå namnet på det originale bilete/frame.<br>
Annoterte bilete skal ha samme namn som originale bilete berre med suffix <code>_.jpg</code>.<br>
<br>
<b>Eksempel filnamn:</b><br>
<code>syd4k__2020-08-01__10-45-01.mp4_13700.jpg</code> --> <code>syd4k__2020-08-01__10-45-01.mp4_13700_.jpg</code><br>
<br>
Det stod spesifisert i oppgåva at ein kunne bruke <code>replace()</code> funksjonen.<br>
Problemet då var at filnamnet:<br>
<code>syd4k__2020-08-01__10-45-01.mp4_13700.jpg</code> --> <code>syd4k__2020-08-01__10-45-01_mp4_13700_jpg</code><br>
<br>
Som då vil seie at annotert bilete ikkje får riktig namn som spesifisert i oppgåva.<br>
Vi skulle ha suffixen <code>_.jpg</code> ikkje <code>_jpg</code><br>
<br>
Derfor må vi heller splitte opp strengen med suffixen til strengen.<br>
Deretter tar vi første elementet frå <code>split()</code> funksjonen og legger på <code>_.jpg</code> på enden av strengen.<br>
Sjå <i>Fig. 9.5.1.</i>

</p>

</h4><b>load_user_defined_timerange():</b></h4>
<br>
<br>

![image](https://user-images.githubusercontent.com/67342876/169117134-0915d401-c98d-4f9b-af09-91e868c29cb5.png)
<h6>Fig. 9.6.1. load_user_defined_timerange() funksjonen.</h6>
<p>
Funksjonen i all hovudsak behandlar input frå parameteret <i>--time-boundaries</i> og normaliserar den.<br>
Eit av problema eg hadde med å ta inn klokkeslett var at visst brukaren spesifiserte eit tal med meir enn eit siffer så blei talet splitta.<br>
</p>
<br>

> python3 detect.py --time-boundaries 7 22

<br>
<p>
Gjev følgande output frå <i>time_boundaries</i> variabelen: <i><code>"[[7], [2, 2]]"</code></i>.<br>
Her må vi plusse (streng + streng) ikkje (tal + tal).<br>
So for kvar indre liste i lista. Må vi ta elementa frå indre lista og kombinere dei til ein streng.<br>
Etter vi har laga strengen konverterar vi strengen til datatypen <code>int</code>, så vi kan gjere logiske operasjonar med den seinare.<br>
</p>

</h4><b>make_xml():</b></h4>
<br>
<br>

![image](https://user-images.githubusercontent.com/67342876/169099044-09b97fb4-204f-4e46-b063-3d941817601b.png)
<h6>Fig. 9.7.1. make_xml() funksjonen.</h6>
<p>
Veldig simpel funksjon som lagar ei XML fil utifrå data vi har fått innad i <i>detect.py</i>.<br>
XML fila har samme namn som det ikkje annoterte bilete. Berre med filextension ".xml" i staden for ".jpg".<br>
Vi brukar <i>pascal_voc_writer</i> til å formattere og lage xml fila.<br>
</p>

![image](https://user-images.githubusercontent.com/67342876/169100199-4a5960af-bdfe-4bd9-9b43-3b9786bd4c3c.png)
<h6>Fig. 9.7.2. Biblioteket pascal_voc_writer.</h6>


> pip install pascal_voc_writer

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
