# Simulink

## Einführung und Lernziele

MATLAB bietet neben einer Reihe von Toolboxen auch eine Zusatzsoftware an, die
es Ingenieur:innen erleichtert, technische Systeme zu modellieren. Diese
Software heißt Simulink und benötigt MATLAB. Detaillierte Informationen zu
Simulink finden Sie auf der Produktseite von
[MATLAB](https://de.mathworks.com/products/simulink.html). Die Besonderheit von
Simulink ist, dass die Modellierung grafisch mit Blöcken erfolgt. 

In diesem Kapitel werden wir uns zunächst mit der Modellierung technischer
Systeme beschäftigen und uns dann die ersten grundlegenden Schritte in Simulink
erarbeiten.

## Was ist Modellierung?

Das erste Modell, das Sie vermutlich hatten, war eine Modelleisenbahn oder eine
Playmobil-Spiellandschaft – vielleicht haben Sie aber auch aus Legosteinen ein
Auto gebaut? Ein Modell beschreibt die reale Welt in vereinfachter und meist
verkleinerter Form. In den Natur- und Ingenieurwissenschaften sind Modelle die
Grundlage des wissenschaftlichen Arbeitens. 

**Modellierung** beschreibt nun den Prozess, ein geeignetes Modell zu finden, um
eine bestimmte Fragestellung zu beantworten. Normalerweise ist kein Modell so
komplex wie die Wirklichkeit. Die Modellierer:innen müssen sich also
entscheiden, welche Details wichtig sind und welche sie weglassen können.
Beispielsweise werden sehr häufig bei Spielzeugfiguren die einzelnen Finger
weggelassen. Aber auch bei Experimenten müssen solche Entscheidungen getroffen
werden. Einmal angenommen, ich möchte wissen, wie lange ich mein Eis in die
Sonne legen kann, bevor es komplett geschmolzen ist. Dann kann ich die
Sonneneinstrahlung oder die Temperatur messen, verschiedene Eissorten nehmen und
die Zeitdauer messen, bis wann das Eis geschmolzen ist. Aber es ist nicht
sinnvoll zusätzlich die Information zu erheben, wie viele Eisbären am Nordpol
gerade einen Fisch gefangen haben.

In den Ingenieurwissenschaften versuchen die Forscher:innen dann aus den Daten
oder den vermuteten Zusammenhängen eine Funktion zu basteln, die hilft die
Zusammenhänge zu verstehen oder Prognosen zu treffen. Wenn diese Modellierung
rein datenbasiert erfolgt, so benutzen wir Methoden der Statistik oder des
maschinellen Lernens. Wenn stattdessen oder zusätzlich prinzipielle
Zusammenhänge einfließen, verwenden wir Gleichungen oder
Differentialgleichungen.

## Start von Simulink

Da Simulink ein Zusatzprogramm von MATLAB ist, öffnen Sie zuerst MATLAB. Es kann
sein, dass Sie Simulink erst nachinstallieren müssen. Wenn Simulink installiert
ist, finden Sie im Hauptmenü von MATLAB einen Button mit Simulink. Starten Sie
Simulink, legen Sie ein `Blank Model` an und öffnen Sie die Bibliothek mit den
Blockdiagrammen. Die folgende Animationen zeigt Ihnen die notwendigen Schritte.

![Screencast Start von Simulink](screencasts/part10_start_simulink.gif)

