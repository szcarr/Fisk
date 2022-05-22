<h1>FiskAI</h1>

<h2>Introduksjon</h2>
<p>
I dette dokumentet kjem eg til å prate om mine endringar i “detect.py” fila, og forklaringar på dei. Eg listar også opp hardware om ein har lyst og replikere prosjektet. Her er også ein "guide" for korleis ein sjølv kan trene nye egendefinerte modellar.<br>
I slutten av dokumentet kjem eg til å prate om potensielle forbetringar i programmet, og/eller endringar. 
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
labelImg er eit program som ein kan bruke til å annotere bilete manuelt.<br>
<br>
<b>Generelle reglar for annotering av bilete:</b>
<ul>
    <li>Bounding boxen som ein tegnar opp skal vere så tett inn på objektet som mogleg.</li>
    <li>Om det ønska objektet ligg bak eit anna objekt skal ein tegne bounding boxen som om ein kunne sjå heile ønska objektet.</li>
    <li>Bilete skal vere tydelig, og ikkje "blurry".</li>
    <li>Objektet skal ikkje gå utanfor bilete.</li>
    <li>Objektet skal ikkje vere for likt omgjevnadane sine.</li>
</ul>
<br>
Disse reglane kjem sjølvsagt an på kva du personleg prøvar å trene.<br>
<br>

![Screenshot from 2022-05-19 13-55-48](https://user-images.githubusercontent.com/67342876/169287937-1cb80125-2ac3-49eb-ad4a-c0b5597c4beb.png)
<h6>Fig. 4.1. Bra annotert bilete frå labelImg.</h6>

![Screenshot from 2022-05-19 13-59-56](https://user-images.githubusercontent.com/67342876/169288456-3f369b34-b540-46c5-ae16-aa83036f7505.png)
<h6>Fig. 4.2. Dårleg annotert bilete frå labelImg.</h6>
<br>

> pip3 install labelImg<br>
<br>
<b>For å køyre:</b><br>

> labelImg

</p>

<h2>Roboflow</h2>
<p>
Roboflow er ei nettside der ein kan laste opp eigne bilder og trene ein modell utifrå dei biletene ein har lasta opp.<br>
Ein må først lage ein brukar før ein kan lage modellar. Vi skal ikkje trene modellen her, men vi skal ha nedlastings "snippeten" til vårt "dataset"<br>
<br>

![Screenshot from 2022-05-19 14-10-49](https://user-images.githubusercontent.com/67342876/169293974-e5cc5c6e-50df-4391-b9ed-be67aac149e7.png)
<h6>Fig. 5.1. Nytt prosjekt på roboflow.</h6>
Først lagar ein eit nytt prosjekt. Her brukar vi <i>"Creative Commons"</i> lisensen. <i>CC</i> lisensen betyr at folk kan bruke biletene/modellen vår ved visse kriterier.<br>
<br>


![Screenshot from 2022-05-19 14-22-12](https://user-images.githubusercontent.com/67342876/169294022-3121ac11-e9c8-43f8-a656-effc10925f06.png)
<h6>Fig. 5.2. Lastar opp bileter på roboflow.</h6>
Så laster ein opp bileter.<br>
<br>

![Screenshot from 2022-05-19 14-23-47](https://user-images.githubusercontent.com/67342876/169294099-aa14e3f2-5898-4a0f-b295-750e757751b6.png)
<h6>Fig. 5.3. Generer og eksporter.</h6>
Deretter "Generate" og "Export" i format "YOLO v5 PyTorch".<br>
<br>

![Screenshot from 2022-05-19 14-27-05](https://user-images.githubusercontent.com/67342876/169294563-1354f746-bf10-4cab-902a-e3d1d9c26b41.png)
<h6>Fig. 5.4. Kodesnipp.</h6>

Til slutt skal ein få ein snipp av kode som ein skal ta med seg vidare til <a href="https://colab.research.google.com/github/roboflow-ai/yolov5-custom-training-tutorial/blob/main/yolov5-custom-training.ipynb" target="_blank"><i>Google Colab</i></a>.
</p>

<h2>Colab</h2>
<p>
Her skal vi trene ein modell utifrå datasettet vi har fått ifrå Roboflow.<br>
Vi skal trene vår eigen YOLOv5 modell for å gjenkjenne obekta i frå datasettet.<br>


![image](https://user-images.githubusercontent.com/67342876/169347233-209f9459-4bbd-433a-b5a4-d68cd775f251.png)
<h6>Fig. 6.1. Copy to drive.</h6>

Først må vi kopiere prosjektet.

![image](https://user-images.githubusercontent.com/67342876/169347430-26fd794d-7424-4e37-a767-cff6380b7b00.png)
<h6>Fig. 6.2. Connect.</h6>
    
Deretter "connect". Her får vi tildelt ei datamaskin frå Google. Vi får låne maskina i ei kort periode.

![image](https://user-images.githubusercontent.com/67342876/169347506-08f5afb6-2472-4e67-8edc-8d5520727306.png)
<h6>Fig. 6.3. Spel av knappen.</h6>

Så følger ein stega nedover og trykker på "spel av knappen".

![image](https://user-images.githubusercontent.com/67342876/169347937-cdcd2bda-5f85-4c00-aae7-43ebfea9e6e8.png)
<h6>Fig. 6.4. Roboflow kode snipp.</h6>

    
Når ein kjem til "steg[5]" så skal ein ta kode snippen vi fekk frå roboflow, og lime inn i boksen.<br>
Så følger ein stega nedover igjen.
    
![image](https://user-images.githubusercontent.com/67342876/169348039-8b62cc18-f9be-4c8f-be9e-e0325eebe363.png)
<h6>Fig. 6.5. Resultat.</h6>

Til slutt skal du få ei ".pt" fil. Det er altså modellen du har trent.
</p>

<h2>Docker/NVIDIA Docker</h2>
<p>
NVIDIA-docker tilbyr ein konteiner med dei nødvendige komponentane for å eksekvere kode på ein GPU.<br>
Det er berre nødvendig å bruke NVIDIA-docker for å køyre eit program på ein GPU.<br>
<br>
For at NVIDIA-docker skal fungere riktig må vi ha riktig drivar for GPU-en.<br>
</p>

<h2>YOLOv5</h2>
<p>
"YOLO" står for "You only look once". YOLO er ein gjenstandsdetekterande algoritme som delar opp bilete i eit rutenett. Kvar celle i rutenettet er ansvarleg for å registrere objekt innad seg sjølv.<br>
<br>
"YOLO" er eit av dei mest populere gjenstandsdetekterande algoritme grunna si hastigheit og nøyaktigheit.
</p>

<h2>Programmet</h2>
<p>
Fila <a href="https://github.com/ultralytics/yolov5/blob/master/detect.py" target="_blank">"detect.py"</a> er frå <i>Ultralytics</i>. Personleg prøvar eg å følge <a href="https://peps.python.org/pep-0008/" target="_blank">PEP 8 Style Guide</a> for Python når eg programmerar, men eg følger ikkje alle reglar som er oppgitt. Mine personlege argument har standard verdien <i>-1</i> om brukaren ikkje sender inn argument for den variabelen. Med å ha standard verdien <i>-1</i> kan kvar av ein av funksjonane som sjekkar for kriterier returnere <code>True</code>. Visst brukaren ikkje spesifiserar argument for den variabelen.<br>
<br>
Det vil då seie at kvar av mine egendefinerte argument er valgfrie. Programmet fungerar heilt fint utan å spesifisere nokon av mine argument. Vanlegvis jo meir filter, og jo strengare reglar på filtra, desto mindre bilder/videoar som går igjennom.
</p>
<br>
<h3>Kommandolinje argument</h3>
<p>
Kommandolinje argument er brukar spesifiserte parameter/variablar som ein kan ta inn i sjølve programmet.<br>
</p>

> detect.py --offset 15<br>
> detect.py `<argument>`

<p>
Her er argumentet <i>"--offset 15"</i> det vil seie at variabelen <i>offset</i> fekk verdien <i>15</i><br>
<i>"--offset 15"</i> er då eit eksempel på eit kommandolinje argument.<br>
<br>
Du kan også kombinere fleire argument:

> detect.py --offset 15 --conf-thres 0.7 --time-boundaries 14 18<br>
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

<h6>Fig. 9.2.1. Gyldig boundingbox utan visuell offset.</h6>

![image](https://user-images.githubusercontent.com/67342876/169091315-98e9ba83-85f9-471e-9e08-82f30baf8044.png)

<h6>Fig. 9.2.2. Gyldig boundingbox med visuell offset.</h6>

Boundingboxen(grå og grøne boksen rundt fisken) er ikkje inn i <i>offset</i>(det raude), difor er det eit gyldig bilete.

<strong>Eksempel på eit ikkje gyldig bilete:</strong>

![image](https://user-images.githubusercontent.com/67342876/169094628-b8767a32-ada9-41f7-b6eb-e449890a6372.png)

<h6>Fig. 9.2.3. Ikkje gyldig boundingbox utan visuell offset.</h6>

![image](https://user-images.githubusercontent.com/67342876/169094559-b44283b8-eb7a-4078-8852-b4ee3ec122ad.png)

<h6>Fig. 9.2.4. Ikkje gyldig boundingbox med visuell offset.</h6>

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
<br>
<br>

![image](https://user-images.githubusercontent.com/67342876/169122414-5105c14e-525a-4bfb-880a-d7efd1c9444f.png)
<h6>Fig. 10.1.1. check_if_bounding_box_is_large_enough() funksjonen.</h6>

<p>
Sjekkar om den totale størrelsen til boundingboksen i pixlar er større eller lik <code>percent</code> av totale antall pixlar på bilete. <code>percent</code> blir spesifisert som kommandolinje argument:<br>

> python detect.py --weights model/test/NilsV1.pt --source model/test/images --bounding-box-size 20.0<br>
> python detect.py --weights model/test/NilsV1.pt --source model/test/images --bounding-box-size `<percent>`<br>
<br>

<b>Eksempel:</b>
<br>
Bilete: 1920 x 1080<br>
Boundingbox: 400 x 730<br>
Percent: 20<br>
<br>
Totale bilde størrelese: 2 073 600 (1920 * 1080).<br>
Minimum boundingbox størrelse i pixlar: 414 720 (2 073 600 / 100 * 20).<br>
Boundingbox størrelse: 292 000 (400 * 730).<br>
<br>
Her ser vi at bounding box størrelsen (292 000) er mindre enn minimum størrelsen (414 720). Boundingboxen er ikkje stor nok, og bilete er ikkje godkjent.
</p>

</h4><b>check_if_bounding_box_position_is_legal():</b></h4>
<br>
<br>

![image](https://user-images.githubusercontent.com/67342876/169122638-1b2b0165-59d9-4b59-8327-42cbbe576f37.png)
<h6>Fig. 10.2.1. check_if_bounding_box_position_is_legal() funksjonen.</h6>

<p>
Funksjonen sjekkar om positionen til boundingboxen er innanfor eit visst område.<br>
<br>
<b>Eksempel:</b><br>

![image](https://user-images.githubusercontent.com/67342876/169707402-60eb3540-56e4-46e2-99ac-a1618cb24dd6.png)

<code>min_width_offset</code> er den <code>raude</code> stipla linja.<br>
<code>max_width_offset</code> er den <code>lilla</code> stipla linja.<br>
<br>
<code>min_height_offset</code> er den <code>kvite</code> stipla linja.<br>
<code>max_height_offset</code> er den <code>svarte</code> stipla linja.<br>
<br>
Om <code>X</code> verdien til <code>XY*</code> er mellom den <code>raude</code> og <code>lilla</code> stipla linja. Er <code>X</code> verdien til <code>XY*</code> ein godkjent posisjon.<br>
Om <code>Y</code> verdien til <code>XY*</code> er mellom den <code>kvite</code> og <code>svarte</code> stipla linja. Er <code>Y</code> verdien til <code>XY*</code> ein godkjent posisjon.<br>



</p>

</h4><b>check_if_only_x_amount_of_detection():</b></h4>
<br>
<br>

![image](https://user-images.githubusercontent.com/67342876/169122843-93ead6a3-a9e8-44ea-86ca-227cb95874ab.png)
<h6>Fig. 10.3.1. check_if_only_x_amount_of_detection() funksjonen.</h6>

<p>
Superlett funksjon som sjekkar om <code>antall_deteksjonar_paa_bilete == onska_antall_deteksjonar</code>. Om det logiske uttrykket er sant returnerar funksjonen <code>True</code>.
Visst ikkje returnerar den <code>False</code>.<br>
<br>
Om brukaren ikkje har spesifisert <code>onska_antall_deteksjonar</code>. Då er verdien til <code>wanted_amount_of_detections = -1</code>. Som også returnerar <code>True</code>.
</p>

</h4><b>check_if_time_is_within_bounds():</b></h4>
<br>
<br>

![image](https://user-images.githubusercontent.com/67342876/169614576-0277990a-c431-418c-a39b-df39e01b482f.png)
<h6>Fig. 10.4.1. check_if_time_is_within_bounds() funksjonen.</h6>
<p>
Funksjonen splittar <code>img_string</code> til vi får Klokketimen frå strengen. Deretter sjekkar om klokka er innanfor/utanfor tidsramma.<br>
<code>minimum_tid</code> og <code>maximum_tid</code> er det som blir spesifisert frå kommandolinje argumentet <i>--time-boundaries</i>:<br>
<br>

> python detect.py --time-boundaries 7 22<br>
> python detect.py --time-boundaries `<minimum_tid> <maximum_tid>`<br>

<br>
<b>Eksempel:</b>
<br>

`syd4k__2020-08-01__10-45-01.mp4_13700.jpg` -> `syd4k__2020-08-01__**-45-01.mp4_13700.jpg`<br>

<br>

`**` frå filstrengen i eksempelet ovanfor er det vi vi skal hente ut frå strengen, dette er då klokketimen. Funksjonen får tak i den verdien dynamisk, ved å splitte strengen etter `__`.
Deretter tar vi det andre elementet vi får frå lista av <code>split()</code>.<br>
Då har vi strengen: <code>10-45-01.mp4_13700.jpg</code> Til slutt splittar vi strengen igjen etter <code>-</code>. Indeks null er då <code>klokketime</code>. Så konverterar vi strengen til <code>int</code>.<br>
<br>
Vi sjekkar om <code>klokketime</code> er utanfor tidsramma. Visst <code>klokketime</code> er mindre enn <code>minimum_tid</code> eller <code>klokketime</code> er større enn <code>maximum_tid</code>. Då er tida utanfor tidsramma og då returnerar funksjonen <code>False</code>. Ellers returnerar den <code>True</code>.<br>
<br>
Funksjonen forventar eit viss mønster i <code>img_string</code>. Visst ikkje fungerar funksjonen ikkje skikkeleg.<br>
<b>Forventa mønster:</b> 

`*__*__HH-*`


<br>

</p>

</h4><b>annotated_picture_renaming():</b></h4>
<br>
<br>

![image](https://user-images.githubusercontent.com/67342876/169122990-f7491d3d-641f-4634-84e5-db07be286357.png)
<h6>Fig. 10.5.1. annotated_picture_renaming() funksjonen.</h6>
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
Sjå <i>Fig. 10.5.1.</i>

</p>

</h4><b>load_user_defined_timerange():</b></h4>
<br>
<br>

![image](https://user-images.githubusercontent.com/67342876/169117134-0915d401-c98d-4f9b-af09-91e868c29cb5.png)
<h6>Fig. 10.6.1. load_user_defined_timerange() funksjonen.</h6>
<p>
Funksjonen i all hovudsak behandlar input frå parameteret <i>--time-boundaries</i> og normaliserar den.<br>
Eit av problema eg hadde med å ta inn klokkeslett var at visst brukaren spesifiserte eit tal med meir enn eit siffer så blei talet splitta.<br>
</p>
<br>

> python detect.py --time-boundaries 7 22

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
<h6>Fig. 10.7.1. make_xml() funksjonen.</h6>
<p>
Veldig simpel funksjon som lagar ei XML fil utifrå data vi har fått innad i <i>detect.py</i>.<br>
XML fila har samme namn som det ikkje annoterte bilete. Berre med filextension ".xml" i staden for ".jpg".<br>
Vi brukar <i>pascal_voc_writer</i> til å formattere og lage xml fila.<br>
</p>

![image](https://user-images.githubusercontent.com/67342876/169100199-4a5960af-bdfe-4bd9-9b43-3b9786bd4c3c.png)
<h6>Fig. 10.7.2. Biblioteket pascal_voc_writer.</h6>



> pip install pascal_voc_writer

<h3>Ekstra</h3>
<p>
</p>

<h2>Diskusjon</h2>
<p>
</p>
<h3>-detection-amount</h3>
<p>
Eit av problema med <i>-detection-amount</i> er at den returnerar <code>True</code> berre viss <code>antall_deteksjonar == detection_amount</code>.<br>
Men ka om vi vil ha alle bilete som har meir enn 4 deteksjonar?<br>
Til no så går ikkje det.<br>
<br>
Denne funksjonen kan endrast med å ha eit parameter til, som seier om brukaren ønskar å:<br>
<ul>
    <li><code>antall_deteksjonar > ønska_antall_deteksjonar</code></li>
    <li><code>antall_deteksjonar >= ønska_antall_deteksjonar</code></li>
    <li><code>antall_deteksjonar == ønska_antall_deteksjonar</code></li>
    <li><code>antall_deteksjonar != ønska_antall_deteksjonar</code></li>
    <li><code>antall_deteksjonar < ønska_antall_deteksjonar</code></li>
    <li><code>antall_deteksjonar <= ønska_antall_deteksjonar</code></li>
</ul>
<br>
<b>Mitt forslag:</b><br>
<br>

> python detect.py --detection-amount 4 ><br>
> python detect.py --detection-amount `<ønskt_antall_deteksjonar> <operasjon>`<br>

Funksjonen returnerar då <code>True</code> viss <code>detection_amount > antall_deteksjonar</code>.<br>
Med å gjere dette får programmet meir fleksibilitet.<br>
</p>

<h2>Kjelder</h2>
<h3>NVIDIA docker.</h3>
<p>
Olson, R. Calmels, J. Abecassis, F. Rogers, P. (2022, 19. Mai). NVIDIA Docker: GPU Server Application Deployment Made Easy. NVIDIA.<br>
https://developer.nvidia.com/blog/nvidia-docker-gpu-server-application-deployment-made-easy/
</p>
<h3>Kva er YOLOv5?</h3>
<p>
Jocher, G. (2022, 17. Mai). What is YOLOv5. Ultralytics.<br>
https://docs.ultralytics.com/
</p>
