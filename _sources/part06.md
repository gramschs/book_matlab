# Funktionen

## Einführung und Lernziele

Eine Funktion in der Informatik ist eine Zusammenfassung von Code, der eine
bestimmte Teilaufgabe löst. Dabei arbeitet die Funktion nach dem EVA-Prinzip.
Die Funktion übernimmt Objekte als Eingabe, verarbeitet diese und liefert
Objekte als Ergebnis zurück. Wie die Funktion dabei im Inneren genau
funktioniert (Verarbeitung), ist unwichtig. 

Beispielsweise gibt es die Funktion `sqrt()`. Wir wissen, dass wir der Funktion
eine Zahl übergeben müssen (Eingabe), z.B. `sqrt(5)`. Die Funktion liefert dann
als Ergebnis $\sqrt{5}$  zurück (Ausgabe). Welches Verfahren zur Berechnung der
Wurzel verwendet wurde, wissen wir nicht.

Insbesondere muss die Teilaufgabe, die die Funktion löst, nichts mit Mathematik
zu tun haben. Eine Funktion in der Informatik hat nichts mit einer
mathematischen Funktion zu tun, auch wenn oft mathematische Funktionen als
Beispiel verwendet werden. Ein Beispiel für eine nicht-mathematische Funktion
haben Sie mit `disp()` bereits kennengelernt. In diesem MATLAB Live Script
werden wir uns damit beschäftigen, wie eigene Funktionen in MATLAB implementiert
werden. Zuerst werden wir uns nochmal den **Aufruf einer Funktion** genauer
ansehen. Danach geht es an das Schreiben eigener **einfacher Funktionen**, die
noch keinen Input und keinen Output haben. Zuletzt wenden wir uns den
**erweiterten Funktionen** mit Input und Output zu.


## Die Benutzung von Funktionen (= Aufruf)

Wenn eine Funktion im Code eingesetzt bzw. benutzt wird, so nennt man das in der
Informatik einen **Aufruf der Funktion** oder man sagt auch: "Die Funktion wird
aufgerufen."

Der einfachste Aufruf einer Funktion ohne eine direkte Rückgabe hat folgende
Syntax:

`funktion( argument1, argument2, ...)`

Eine Funktion wird benutzt, indem man den Namen der Funktion hinschreibt und
dann in runden Klammern ihre **Eingabeparameter**, die sogenannten **Argumente**
der Funktion, angibt. Welche Argumente für eine Funktion verwendet werden
dürfen, hängt von der Implementierung der Funktion ab.

Beispielsweise kann als Argument für die `size()`-Funktion ein String übergeben
werden oder ein Array:
```matlab
size("Hallo")
size([-1, 5, 6])
```

In der Regel geben Funktionen aber wieder Ergebnisse zurück. Diese können einer
Variable zugewiesen werden, um mit dem Ergebnis weiter zu arbeiten. Die Syntax
sieht dann folgendermaßen aus:

`[output1, output2, ...] = funktion( argument1, argument2, ...)`

Das Ergebnis, das eine Funktion ausspuckt, wird **Rückgabewert** oder manchmal
kurz **Rückgabe** genannt.

Als in der obigen Code-Zelle die MATLAB-Funktion `size()` aufgerufen wurde,
wurde der Rückgabewert direkt angezeigt. Das liegt daran, dass wir das Semikolon
am Ende der Zeile nicht gesetzt haben. Anders als mit dem Kommando `whos`, das
die Dimension nur anzeigen kann, können wir uns nun aber die Dimension auch für
die spätere Verwendung in Variablen abspeichern. Dazu speichern wir mit der oben
angegebenen Syntax die Rückgabewerte der `size()`-Funktion in zwei Variablen
namens `zeilen` und `spalten`. 
```matlab
% Erzeugung Array
array = [-1, 5, 6; -3, 5, 0];

% Bestimmung der Dimension
[zeilen, spalten] = size(array);

% Ausgabe
disp(zeilen)
disp(spalten)

% Gegenkontrolle mit whos
whos array

% Beispiel für weitere Verarbeitung
anzahl_elemente = zeilen * spalten;
fprintf('Das Array hat %d Zeilen und %d Spalten, also insgesamt %d Elemente.\n', ...
    zeilen, spalten, anzahl_elemente);
```

Wenn der Rückgabewert einer Funktion kein Array ist, sondern nur ein einfacher
Datentyp wie beispielsweise ein Integer oder ein Float, so können wir die
eckigen Klammern auch weglassen und die Rückgabe direkt in einer Variablen
abspeichern. 

Schauen wir uns beispielweise die Wurzel aus 7 an:
```matlab
wurzel = sqrt(7);
disp(wurzel)

% zur Kontrolle quadrieren wir die Wurzel aus 7 wieder
disp(wurzel * wurzel)
```


## Einfache Funktionen ohne Parameter

Die allgemeine Syntax zur Definition einer eigenen Funktion sieht wie folgt aus:

`function funktionsname():`

`    anweisung01`

`    anweisung02`

`     ...`

`end` 

Zuerst signalisiert man dem MATLAB-Interpreter, dass eine Funktion definiert
werden soll, indem man das Schlüsselwort `function` verwendet. Danach wählt man
den Namen der Funktion. Der Name darf weder Leerzeichen noch andere
Sonderzeichen. Auch ist es verboten, einen Namen zu benutzen, der schon als
Schlüsselwort existiert. Sie dürfen eine Funktion also nicht `if` oder `while`
nennen. Beendet wird die Implementierung der Funktion mit dem Schlüsselwort
`end`.

Leider müssen Funktionen bei MATLAB in eine eigene Datei geschrieben werden, die
den gleichen Namen hat, wie der Funktionsname oder alternativ ganz am Ende eines
MATLAB Live Scripts stehen. Schauen Sie sich daher am Ende dieses Live Scripts
die Funktion gruesse_ausrichten() an. Wenn Sie diesen MATLAB-Kurs im Buchformat
im Browser lesen, können Sie die Implementierung auch hier nachsehen:
````{toggle}
```matlab
function gruesse_ausrichten()
    disp('Ich grüße Sie!');
end
```
````

Hier wird die Funktion gruesse_ausrichten() verwendet.
```matlab
gruesse_ausrichten()
```

Und natürlich kann man die Funktion in Programmverzweigungen und Schleifen
einbauen. Hier eine Schleife:
```matlab
for i = 1:5
    gruesse_ausrichten()
end
```

Hier ein Beispiel, bei dem die Funktion in eine Programmverzweigung eingebaut
wurde (denken Sie daran, die Antwort auf die Frage muss im Command Window
eingegeben werden):
```matlab
soll_gegruesst_werden = input('Soll gegrüßt werden? Geben Sie bitte 1 ein für ja und ansonsten 0: ')

if soll_gegruesst_werden == 1
    gruesse_ausrichten()
else
    disp('Auf Wiedersehen!')
end
```

````{exercise}
:label: part06_miniexercise01
Schreiben Sie eine Funktion mit dem Namen `gruessen()`, die 5x hintereinander
das Wort "Hallo!" schreibt. Fügen Sie die Funktion ganz am Ende in das MATLAB
Live Script in die letzte Code-Zelle ein, aber testen Sie die Funktion dann
hier, indem Sie die folgende Code-Zelle ausführen:
```matlab
% Test der Funktion gruessen() 
gruessen();
```
````
````{solution} part06_miniexercise01
:label: part06_minisolution01
:class: dropdown
```matlab
% Implementierung der Funktion gruessen()
function gruessen()  
    for i = 1:5
        disp('Hallo!')
    end
end
```
````

````{exercise}
:label: part06_miniexercise02
Schreiben Sie eine Funktion mit dem Namen `lotto()`, die sechs Zufallszahlen
zwischen 1 und 49 erzeugt und anzeigt. Fügen Sie die Funktion ganz am Ende in
das MATLAB Live Script in die letzte Code-Zelle ein, aber testen Sie die
Funktion dann hier, indem Sie die folgende Code-Zelle ausführen:
```matlab
% Test der Funktion lotto()
lotto();
```
````
````{solution} part06_miniexercise02
:label: part06_minisolution02
:class: dropdown
```matlab
% Implementierung der Funktion lotto()
function lotto()
    lottozahlen = randi( [1, 49], 1, 6);
    for i = 1:6
        disp(lottozahlen(i));
    end
end
```
````


## Funktionen mit Eingabeparametern

Meistens haben Funktionen **Eingabeparameter** oder **Argumente**, um **Input**
entgegennehmen und verarbeiten zu können. Bei der Definitin der Funktion
erhalten die verschiedenen Argumente jeweils einen eigenen Namen, so dass dann
im Inneren der Funktion mit diesen Variablennamen weitergearbeitet werden kann. 

Die allgemeine Syntax zur Definition einer eigenen Funktion mit Parametern sieht
wie folgt aus:

`function funktionsname(argument1, argument2, ..., argumentN):`

`    anweisung01`

`    anweisung02`

`     ...`

`end`

In unserem erste Beispiel schauen wir uns eine Funktion an, die nur ein Argument
also einen Eingabeparameter hat.   

Beispiel: Wenn Sie das MATLAB  Live Skript benutzten, schauen Sie bitte wieder
ganz unten nach der Funktion gruesse_ausrichten_mit_parameter(). Wenn Sie dieses
Buch im Browser lesen, klappen Sie hier den Code auf.
````{toggle}
```matlab
function gruesse_ausrichten_mit_parameter(name)
    fprintf('Ich grüße %s', name);
end
```
````

```matlab
gruesse_ausrichten_mit_parameter('Alice')
```

Sind Funktionen ohne Rückgabewert sinnvoll?

Ja, denn so können Codeblöcke vereinfacht werden. Sollte in einem Programm Code
mehrmals ausgeführt werden, lohnt es sich, diesen in eine Funktion auszulagern,
um diese einfach aufrufen zu können.

````{exercise}
:label: part06_miniexercise03
Schreiben Sie eine Funktion, die das Wort Hallo mehrfach ausgibt. Dabei soll die
Funktion als Parameter eine ganze Zahl entgegennehmen. Dann wird das Wort Hallo
so oft wiederholt ausgegeben, wie in dem Argument angegeben wurde.
```matlab
% Testen Sie Ihre Funktion hier, Funktionscode separat 
wiederholtes_hallo(7);
``` 
````
````{solution} part06_miniexercise03
:label: part06_minisolution03
:class: dropdown
```matlab
function wiederholtes_hallo(anzahl)
    for i = 1:anzahl
        disp('Hallo!');
    end
end
``` 
````

````{exercise}
:label: part06_miniexercise04
Schreiben Sie eine Funktion, die als Parameter eine Zahl entgegennimmt. Dann
produziert diese Funktion die folgende Ausgabe: Das Quadrat der Zahl xx ist xx.
(Natürlich soll anstatt xx hier jeweils die richtige Zahl und die richtige
Quadratzahl stehen.)
```matlab
% Testen Sie Ihre Funktion hier, Funktionscode separat
quadratzahlen(5);
``` 
````
````{solution} part06_miniexercise04
:label: part06_minisolution04
:class: dropdown
```matlab
function quadratzahlen(x)
    fprintf('Das Quadrat der Zahl %d ist $d.\n', x, x^2);
end
``` 
````


## Funktionen mit Rückgabewerten

Aus didaktischen Gründen haben wir zunächst nur Funktionen selbst geschrieben,
die zwar Eingabeparameter bzw. Argumente haben, aber keine Rückgaben liefern.
Solche Funktionen sind sinnvoll, wenn es darum geht, bestimmte Code-Abschnitte
auszulagern, um den Programmfluss übersichtlicher zu gestalten. Häufiger kommen
jedoch in der Praxis Funktionen vor, die auch einen oder mehrere Rückgabewerte
liefern. 

Eine Funktion mit Eingabeparametern und Rückgabewerten wird wie folgt
implementiert:  

`function [output1, output2, ..., outputN] = funktionsname(argument1, argument2, ..., argumentN)`

`    anweisung01`

`    anweisung02`

`     ...`

`    output1 = ...`

`    output2 = ...`

`     ....`

`    outputN = ...`

`end`

Die Definition der Funktion startet mit dem Schlüsselwort `function`. Danach
werden die Variablennamen der Rückgabewerte in eckigen Klammern aufgelistet.
Nach dem Zuweisungsoperator kommt der Name der Funktion und in runden Klammern
die Eingabeparameter/Argumente. Im Inneren der Funktion können verschiedenste
Anweisungen stehen. Die Rückgabewerte müssen aber im Laufe der Verarbeitung im
Inneren der Funktion auch Werte erhalten, sonst können sie am Ende nichts
zurückliefern. 

Im folgenden Beispiel soll aus den beiden Seitenlängen $a$ und $b$ eines
Rechtsecks der Flächeninhalt $A$ des Rechtsecks und der Umfang $U$ des Rechtecks
berechnet und zurückgegeben werden. Sehen Sie sich bitte die Implementierung der
Funktion `berechne_rechteck()` am Ende dieses Live Skripts an (oder alternativ
klappen Sie den Code auf, wenn Sie dieses Buch im Browser lesen):
````{toggle}
```matlab
function [flaeche, umfang] = berechne_rechteck(seite1, seite2)
    flaeche = seite1 * seite2;
    umfang = 2 * seite1 + 2 * seite2;
end
```
````
```matlab
% a = 3, b = 4
a = 3;
b = 4;

% Ergebnis sollte sein: Fläche A = a * b = 12 und Umfang U = 2 * a + 2 * b = 14
[A, U] = berechne_rechteck(a,b);

disp(A)
disp(U)
```

```{exercise}
:label: part06_miniexercise05
Schreiben Sie eine Funktion, die vier Zahlen als Argument entgegennimmt und dann
die Summe der vier Zahlen und den Mittelwert der vier Zahlen zurückgibt. Testen
Sie anschließend Ihre Funktion hier mit den Beispielzahlen 3.5, 6.3, -17.7 und 2
(Ergebnis sollte sein: Summe -5.900 und Mittelwert -1.475).
```
````{solution} part06_miniexercise05
:label: part06_minisolution05
:class: dropdown
```matlab
function [summe, mittelwert] = summe_mittelwert(z1, z2, z3, z4)
    summe = z1 + z2 + z3 + z4;
    mittelwert = summe / 4;
end
```
````

```{exercise}
:label: part06_miniexercise06
Schreiben Sie eine Funktion, die den Radius eines Kreises als Argument
entgegennimmt und dann den Umfang und die Fläche des Kreises zurückgibt. Testen
Sie anschließend Ihre Funktion hier mit dem Beispielradius r = 5 (Ergebnis
sollte sein: Umfang 31.4159, Fläche 78.5398).
```
````{solution} part06_miniexercise06
:label: part06_minisolution06
:class: dropdown
```matlab
function [umfang, flaeche] = umfang_flaeche(radius)
    umfang = 2 * pi * radius;
    flaeche = pi * radius^2;
end
```
````

## Zusammenfassung

Mit der Implementierung eigener Funktionen haben wir nun eine fortgeschrittene
Programmiertechnik kennengelernt. Das Ziel von Funktionen ist es, Code
zusammenzufassen, der eine bestimmte Teilaufgabe innerhalb des Programms lösen
soll. Dadurch gelingt es Programmiererinnen und Programmierern, das
Hauptprogramm strukturierter und übersichtlicher zu halten. Auch kann man eine
große Programmieraufgabe in kleinere Teilaufgaben zerlegen und zunächst die
Teilaufgaben lösen und vor allem testen. Zuletzt setzt man die Lösung der
kompletten Programmieraufgabe aus den Lösungen der Teilaufgaben, also den
Funktionen zusammen.

Funktionen sind der erste Schritt zur Modularisierung von Code.
Objektorientierte Programmierung mit Klassen wäre der nächste Schritt, den wir
in diesen Skripten jedoch nicht mehr gehen werden. 







