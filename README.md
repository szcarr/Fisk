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
<strong>Operativsystem:</strong> Ubuntu 22.04 LTS
<strong>Linux kernel versjon:</strong> 5.15.0-27-generic

<h2>Roboflow</h2>

<h2>Colab</h2>

<h2>Docker/NVIDIA Docker</h2>

<h2>Yolov5</h2>

<h2>Programmet</h2>
<p>Personleg prøvar eg å følge <a href="https://peps.python.org/pep-0008/" target="_blank">PEP 8 Style Guide</a> for Python når eg programmerar. Min del av programmet har seks forskjellige funksjonar. Kvar av dei funksjonane er med på å gjere lagringsprosessen dynamisk, og sjekkar om alle kriterier er godkjent før den lagrar bilete.</p>
Command line args:


–offset
Offset seier kor bounding box må ligge i forhold til kantane på skjermen. Visst bounding box ligg “inn i” offset, er bilete ikkje godkjent. Offset er oppgitt i prosent av kanten til skjermen.
> python detect.py --weights model/test/NilsV1.pt --source model/test/images --offset 10

check_if_bounding_box_is_large_enough():



<h2>Kjelder</h2>
Kva er docker?
https://docs.nvidia.com/deeplearning/frameworks/user-guide/index.html
