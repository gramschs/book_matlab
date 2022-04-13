# Einstieg in die Programmierung mit MATLAB

## Lernziele

Dieses MATLAB Live Script ist der Einstieg in die wissenschafltiche Programmierung mit MATLAB. Zuerst werden wir MATLAB als Taschenrechner benutzen. Danach beschäftigen wir uns mit grundlegenden Begriffen der Informatik, nämlich
* Hardware und Software,
* Programm und Skript,
* kompilierte und interpretierte Programmiersprachen sowie
* Betriebssystem, Anwendungssoftware (App) und Bibliotheken (Toolbox).

Nach dem kurzen Ausflug in die Theorie der Informatik widmen wir uns einfachen Datentypen und Variablen. Zusammen mit einfachen MATLAB-Kommandos, um Eingaben einer Benutzerin oder eines Benutzers abzufragen und auf dem Bildschirm auszugeben, wird es uns möglich, erste kleinere MATLAB-Skript zu schreiben.  Das entspricht auch dem grundlegenden Ablauf in der Datenverarbeitung, dem EVA-Prinzip, das für Eingabe, Verarbeitung und Ausgabe steht.

## MATLAB als Taschenrechner

Was ist überhaupt MATLAB? Wikipedia erklärt MATLAB folgendermaßen (siehe https://de.wikipedia.org/wiki/Matlab):

> "Matlab (Eigenschreibweise: MATLAB) ist eine kommerzielle Software des US-amerikanischen Unternehmens MathWorks zur Lösung mathematischer Probleme und zur grafischen Darstellung der Ergebnisse. Matlab ist vor allem für numerische Berechnungen mithilfe von Matrizen ausgelegt, woher sich auch der Name ableitet: MATrix LABoratory."

Auch wenn MATLAB also zunächst von der Firma MathWorks für numerische Berechnungen ausgelegt wurde, können wir es wie einen Taschenrechner benutzen. 

Wenn Sie das dazugehörige MATLAB Live Skript in MATLAB öffnen, können Sie Code-Zellen direkt ausführen lassen. Klicken Sie dann auf Run Section in der Menü-Leiste oben. Dadurch werden alle Code-Zellen bis zum sogenannten Section Break ausgeführt. Die Section Break erkennen Sie durch die blaue Trennlinie. 

Ansonsten kopieren Sie bitte den Inhalt der Code-Zellen in Ihr MATLAB-Programm, um die nachfolgenden Ausführungen direkt nachvollziehen zu können.

Addition:
```matlab
2+3
```
Subtraktion:
```matlab
2-3
```
Multiplikation:
```matlab
2*4
```
Division:
```matlab
8/2
```
Potenzierung:
```matlab
3^2
```
Selbstverständlich beherrscht MATLAB auch Klammerregeln. Gerne können Sie den Term  durch MATLAB berechnen lassen, probieren Sie es doch einmal selbst aus! In der folgenden Code-Zelle ist Platz für Ihren MATLAB-Code. Die Code-Zelle ist zunächst mit einem Kommentar beschriftet, in diese Fall mit dem Kommentar
```matlab
% Hier Ihr Code
```
Alles was nach einem Prozentzeichen kommt, wird von MATLAB ignoriert. Die sogenannten Kommentare, die durch das Prozentzeichen eingeleitet werden, sind für uns Menschen bestimmt.

```{exercise}
:label: part01_miniexercise01
Lassen Sie MATLAB den Term $3\cdot (7-10)+5$ berechnen.
```
````{solution} part01_miniexercise01
:label: part01_minisolution01
:class: dropdown
```matlab
3 * (7-10) + 5
```
````

## MATLAB als Programmiersprache

Die Software MATLAB beinhaltet auch eine proprietäre Programmiersprache, die wie die Software selbst MATLAB genannt wird. Programme oder Skripte, die in MATLAB programmiert werden, können in der Regel auch nur in MATLAB ausgeführt werden. Deshalb ist es empfehlenswert, immer zuerst MATLAB zu starten. 

Aber ... 
* Was ist überhaupt ein Programm oder ein Skript? 
* Was ist der Unterschied zwischen einer App und einer Software? 
* Was sind Programmiersprachen?
* Was ist ein Interpreter und was ist ein Compiler?
* Und was hat es mit den Toolboxen auf sich?

Fangen wir erstmal von vorne an mit der grundlegen Bedeutung des Fachbegriffes Software im Unterschied zu Hardware.

### Hardware und Software

Computer, mobile Geräte wie Smartphones oder auch technische Systeme wie eine Anlagensteuerung bestehen aus zwei Komponenten: Hardware und Software. Dabei bezeichnen wir mit Hardware alle physischen Kompenten eines Systems, also die elektronischen und mechanischen Bauteile. Die Software dahingegen umfasst die Programme und deren Dokumentation sowie Daten. Man könnte auch sagen, dass Hardware die materiellen Teile eines Computersystems bezeichnet, während Software die nicht-materiellen Teile zusammenfasst.
Bitte schauen Sie sich jetzt kurz um. Welche Hardware fällt Ihnen auf, wenn Sie den Blick schweifen lassen? Tragen Sie in die nächste Text-Zelle Ihre Hardware ein.

```{exercise}
:label: part01_miniexercise02
Tragen Sie hier die Hardware ein, die Sie gerade sehen oder die Ihnen generell einfällt:
* xxx
* xxx
```
````{solution} part01_miniexercise02
:label: part01_minisolution02
:class: dropdown
* Monitor
* Maus
* Tastatur
* PC
* Webcam (Kamera)
* Headset
* ...
````

Nachdem Sie Ihre Komponenten notiert haben, können Sie den Begriff Hardware noch einmal bei Wikipedia nachlesen: 
https://de.wikipedia.org/wiki/Hardware
Wikibooks bietet auch ein passendes Buch zu Computerhardware an: https://de.wikibooks.org/wiki/Computerhardware .

Software ist eine Zusammenfassung der nicht-materiellen Komponenten eines Computersystems. Wikipedia listet hier gleich drei verschiedene ISO-Normen zur Definition von Software auf, siehe
https://de.wikipedia.org/wiki/Software.
Wir verwenden im Folgenden die weitreichendste Definition von Software, wonach Software
* Programme
* Dokumentation und
* Daten

umfasst.

Die letzteren beiden Begriffe sind am einfachsten zu erklären, Mit Dokumentation sind Bedienungsanleitungen und Handbücher gemeint, aber auch die technische Dokumentation, die für andere Informatiker:innen gedacht ist und in die Benutzer:innen eines Computersystems in der Regel keinen Einblick haben. Daten wiederum sind alle Beobachtungen oder Messungen. In der digitalisierten Form werden sie normalerweise durch Zahlenwerte repräsentiert. 
Bleibt noch der Begriff Programm bzw. etwas präziser Computerprogramm übrig. Ein Programm ist eine Folge von Anweisungen, die ein Computer interpretieren oder ausführen kann. Die Anweisungen werden dabei in einer Programmiersprache formuliert.

Es gibt viele Programmiersprachen und jede hat ihre Vorteile und ihre Nachteile. Aber was ist eine Programmiersprache überhaupt? Eine Programmiersprache ist die formale Sprache zur Formulierung von Datenstrukturen und Algorithmen (= Abfolge von Anweisungen), die von einem Computer ausgeführt werden können. Es gibt nicht die wichtigste oder beste Programmiersprache, sondern die Auswahl der Programmiersprache sollte sich stets nach der anvisierten Anwendung richten. Der sogenannte Tiobe-Index zeigt die Beliebtheit der 50 wichtigsten Programmiersprachen: 
https://www.tiobe.com/tiobe-index/ 

In der Anfangszeit der Computer waren Programmiersprachen noch sehr nahe am Computern ausgerichtet. Hier sehen Sie ein Beispiel, wie in der Programmiersprache Assembler die Meldung "Hallo Welt" auf dem Monitor angezeigt wird:

```{figure} pics/part01_assembler.png
:name: part01_assembler

"Hallo Welt" in Assembler (Quelle: https://de.wikipedia.org/wiki/Assemblersprache)
```

In MATLAB ist dieser Programmcode wesentlich kürzer (in die Code-Zelle klicken und Run Section ausführen):

```matlab
disp('Hallo Welt')
```

```{exercise}
:label: part01_miniexercise03
Kopieren Sie die Zeile `disp('Hallo Welt')` in die nächste Code-Zelle unter die Kommentarzeile und ersetzen Sie Welt durch Ihren Namen. Ihr erstes Computerprogramm in MATLAB :-)
```
````{solution} part01_miniexercise03
:label: part01_minisolution03
:class: dropdown
```matlab
disp('Hallo Simone')
```
````

Heute werden nur noch die sogenannten höheren Programmiersprachen verwendet (wie Python, MATLAB oder C++), die für Menschen leichter verständlich sind. Dafür müssen dann Programme, die in höheren Programmiersprachen geschrieben sind, in **Maschinensprache** übersetzt werden. Verschiedene Programmiersprachen verwenden dazu unterschiedliche Prinzipien. Die beiden wichtigsten Vertreter sind **Compiler-Programmiersprachen** und **Interpreter-Programmiersprachen**. 

Bei Compiler-Programmiersprachen wird der Programmcode vorab in Maschinensprache übersetzt und der Anwender erhält die Anwendungssoftware in Maschinensprache (bei Windows beispielsweise als exe-Datei). Den Vorgang des Übersetzens nennt man **Kompilieren**. Bei Interpreter-Sprachen wird der Code in dem Moment in Maschinensprache übersetzt, in dem das Programm läuft bzw. ausgeführt wird. Während also das Programm läuft, muss gleichzeitig – quasi im Hintergrund – der Übersetzer arbeiten und die höhere Programmiersprache in Maschinensprache **interpretieren**. Daher der Name Interpreter-Sprache. Manchmal wird Code, der kompiliert wurde und dann eigenständig lauffähig ist, als **Programm** bezeichnet. Dahingegen wird Code, der interpretiert wird und dringend auf einen gerade laufenden Interpreter angewiesen ist, oft als Skript bezeichnet. Im Alltag geht diese Unterscheidung meist unter und wir verwenden den Begriff Programm auch für MATLAB-Skripte.

```{exercise}
:label: part01_miniexercise04
Recherchieren Sie im Internet und schreiben Sie Ihre Antworten in diese Text-Zelle.

1. Ordnen Sie folgende Programmiersprachen den beiden Kategorien Compiler-Sprache oder Interpreter-Sprache zu: C, C++, Fortran, Java, Matlab und Python.
2. Stellen Sie eine Vermutung auf: in welcher Programmiersprache können die schnelleren Programme geschrieben werden?
3. Raten Sie: welche Programmiersprachen sind leichter zu lernen und warum?

Antwort 1:
* XXX

Antwort 2:
* XXX

Antwort 3:
* XXX
```
````{solution} part01_miniexercise04
:label: part01_minisolution04
:class: dropdown
* Antwort 1:
Compiler-Sprache: C, C++, Fortran
Interpreter-Sprache: Java, Matlab, Python
* Antwort 2:
In der Regel sind Programme, die in einer Compiler-Sprache geschrieben wurden, schneller als interpretierte Programme. 
* Antwort 3:
In der Regel sind interpretierte Programmiersprachen leichter zu lernen, da beispielsweise Code zeilenweise auf seine Korrektheit hin überprüft werden kann.
````

Die wichtigste Software eines jeden Computersystems ist das **Betriebssystem**. Das Betriebssystem umfasst alle Computerprogramme, die notwendig sind, um überhaupt den Computer zu betreiben, zu starten oder zu benutzen. Das Betriebssystem hat laut Wikipedia (siehe https://de.wikipedia.org/wiki/Betriebssystem) folgende Aufgaben: 
> ... Benutzerkommunikation; Laden, Ausführen, Unterbrechen und Beenden von Programmen; Verwaltung und Zuteilung der Prozessorzeit; Verwaltung des internen Speicherplatzes für Anwendungen; Verwaltung und Betrieb der angeschlossenen Geräte; Schutzfunktionen z. B. durch Zugriffsbeschränkungen."

Viele Menschen denken bei Software zuerst an **Anwendungssoftware** (siehe https://de.wikipedia.org/wiki/Anwendungssoftware). Das sind Computerprogramme, die einen speziellen Zweck erfüllen sollen und den Benutzer oder die Benutzerin bei Aufgaben unterstützen. Im Englischen werden solche Computerprogramme auch als **Application** (= Anwendung, Verwendung, Einsatz) bezeichnet. 2008 hat die Firma Apple den "iOS App Store" gegründet, um Anwendungssoftware für das iPhone zu vertreiben. Seitdem wird immer häufiger auch im deutschen Sprachraum der Name Application oder App für verwendet. Vielfach steht "Application" eher für PC-Anwendungssoftware und der Kurzname "App" für Anwendungssoftware für Tablets und Smartphones.  

Für Softwareentwickler sind — neben der Programmiersprache und den Software-Entwicklungswerkzeugen — vor allem Bibiotheken wichtig. Eine **Bibliothek** (siehe https://de.wikipedia.org/wiki/Programmbibliothek) ist eine Sammlung von Programmen, die zwar einen bestimmten Zweck haben, aber eigenständig nicht lauffähig werden. Diese Programmbibiotheken werden von Programmiererinnen und Programmieren benutzt, um nicht ständig neu das Rad erfinden zu müssen. Beispielsweise würde es den Software-Entwickungsprozess verlangsamen, wenn jedesmal neu ein Programm geschrieben werden müsste, dass die Wurzel einer Zahl berechnet oder ein Ergebnis einer Berechnung in eine Datei auf die Festplatte schreibt. Diese Spezialaufgaben wurden bereits von anderen Software-Entwickler:innen implmentiert und werden dann über die Bibliotheken der Gemeinschaft zur Verfügung gestellt.

Hinweis: Die Firma MathWorks nennt eine Bibliothek Toolbox. Beispielsweise stellt MathWorks die folgenden sehr populären Toolboxen (teilweise gegen Aufpreis) zur Verfügung:
* Statistics and Machine Learning Toolbox ==> Datenanalyse mit Statistik und maschinellem Lernen
* Curve Fitting Toolbox ==> Anpassung von Funktionen an Messdaten
* Optimization Toolbox ==> Optimierung
* Symbolic Math Toolbox ==> symbolisches Rechnen, z.B. ableiten und integrieren

Eine Liste aller Toolboxen finden Sie auf der Honepage von MathsWorks, siehe https://de.mathworks.com/products.html.

## Einfache Datentypen: Integer, Floats und Strings

Der Computer kann Informationen nur als 0 oder 1 verarbeiten. Auf dem Speichermedium oder im Speicher selbst werden Daten daher als eine Folge von 0 und 1 gespeichert. Damit es für uns Programmiererinnen und Programmierer einfacher wird, Daten zu speichern und zu verarbeiten, wurden Datentypen eingeführt.  

**Datentypen** fassen gleichartige Objekte zusammen und stellen passende Operationen zur Verfügung. Es hängt von der Programmiersprache ab, welche Datentypen zur Verfügung stehen, wie diese im Hintergrund gespeichtert werden und welche Operationen damit möglich sind.
In diesem Vorlesungsskript beschäftigen wir uns mit den einfachen Datentypen
* Integer
* Float
* String

Mehr Details zu Datentypen finden Sie auf der Hilfeseite von MathWorks: https://de.mathworks.com/help/matlab/data-types.html.

In der Programmierung unterscheidet man grundsätzlich zwischen zwei Zahlenarten, den **Ganzzahlen** und den Gleitkommazahlen/**Fließkommazahlen**. Die Ganzzahlen werden in der Mathematik als ganze Zahlen bezeichnet. In der Informatik wird meist der englische Begriff **Integer** verwendet. 
Mit Integern können wir ganz normal rechnen, also Operationen ausführen. Einige davon haben wir ja bereits ausprobiert, als wir MATLAB als Taschenrechner benutzt haben:

```matlab
23 + 4
2 * (3 + 4)
```

Sobald wir eine Division vorliegen haben, die nicht aufgeht, verlassen wir den Bereich der ganzen Zahlen und kommen automatisch zu den Fließkommazahlen. In der Informatik wird eine Fließkommazahl als Float bezeichnet. MATLAB rechnet automatisch mit dem richtigen Datentyp, wie Sie hier sehen:

```matlab
2/5
```

Beachten Sie bitte: Das Dezimaltrennzeichen ist ein Punkt, nicht ein Komma wie im Deutschen. Aber ansonsten funktioniert alles wie erwartet:

```matlab
2.3 + 4.6
1.4 - 5.2
(-3.8) * 3.1
2.4 / 0.3
2.5^10
```

Daten sind aber sehr oft keine Zahlen. Beispielsweise könnte man sich vorstellen, eine Einkaufsliste zu erstellen und diese im Computer oder in einer Notiz-App auf dem Handy zu speichern. Eine solche Zeichenkette heißt in der Informatik **String**. Mit Zeichen meint man dabei Zahlen, Buchstaben oder andere wie beispielsweise !"§$%&/()=?.

Strings werden in MATLAB durch doppelte Anführungszeichen definiert:

```matlab
"Dies ist ein String!"
```
Auf Strings und ihre Anwendungen kommen wir später noch zurück.

## Variablen

**Variablen** sind beschriftete Schubladen. Oder anders formuliert sind Variablen Objekte, denen man einen Namen gibt. Technisch gesehen sind diese Schubladen ein kleiner Bereich im Arbeitsspeicher des Computers. Was in diesen Schubladen aufbewahrt wird, kann sehr unterschiedlich sein. Beispielsweise die Telefonnummer des ADAC-Pannendienstes, die 10. Nachkommastelle von Pi oder die aktuelle Position des Mauszeigers können in den Schubladen enthalten sein. 

Wir verwenden Variablen, um bestimmte Werte oder ein bestimmtes Objekt zu speichern. Eine Variable wird durch **Zuweisung** erzeugt. Damit meinen wir, dass eine Schublade angelegt wird und die Schublade dann erstmalig gefüllt wird. Das erstmalige Füllen der Schublade nennt man in der Informatik auch **Initialisieren**.

```matlab
x = 0.5
```

Sobald die Variable x in diesem Beispiel durch eine Zuweisung von 0.5 erstellt wurde, können wir sie verwenden:

```matlab
x * 3
x + 17.8
```

Wichtig ist, dass das = in der Informatik eine andere Bedeutung hat als in der Mathematik. = meint nicht das Gleichheitszeichen, sondern den sogenannten Zuweisungsoperator. Das ist in der Programmierung ein Kommando, das eine Schublade befüllt oder technischer ausgedrückt, ein Objekt einer Variable zuweist.

Variablen müssen initialisiert (erstmalig mit einem Wert versehen) werden, bevor sie verwendet werden können, sonst tritt ein Fehler auf. 

```{exercise}
:label: part01_miniexercise05
Schreiben Sie in die nächste Code-Zelle einfach den Buchstaben `n` unter die Kommentarzeile und lassen Sie dann die Code-Zelle mit `Run Section` vom MATLAB-Interpreter ausführen. Was beobachten Sie? Recherchieren Sie im Internet nach der Fehlermeldung. 
```
````{solution} part01_miniexercise05
:label: part01_minisolution05
:class: dropdown
```matlab
n
```
Der MATLAB-Interpreter zeigt in rot eine Fehlermeldung an: "Unrecognized function or variable 'n'." Damit weist der MATLAB-Interpreter darauf hin, dass die Variable bisher nicht mit einem Wert versehen wurde, sie ist nicht intialisiert worden. Daher kann damit auch nicht gearbeitet werden.
````

Sehr häufig findet man Code wie

```matlab
x = x + 1
```

Würden wir dies als Gleichung lesen, wie wir es aus der Mathematik gewohnt sind, also $x = x+1$, könnten wir $x$ auf beiden Seiten subtrahieren und erhalten $0=1$. Wir wissen, dass dies nicht wahr ist, also stimmt hier etwas nicht.

In MATLAB sind "Gleichungen" keine mathematischen Gleichungen, sondern Zuweisungen. "=" ist kein Gleichheitszeichen im mathematischen Sinne, sondern eine Zuweisung. Die Zuweisung muss immer in der folgenden Weise zweistufig gelesen werden:
1. Berechne den Wert auf der rechten Seite (also $x+1$).
2. Weise den Wert auf der rechten Seite dem auf der linken Seite stehenden Variablennamen zu.

```matlab
x = 4     
x = x + 1
x
```

MATLAB gibt automatisch den Variablennamen mit seinen Inhalt aus, wenn wir die Code-Zelle ausführen. Gerade wenn man ein Programm entwickelt, ist dies sehr praktisch, weil man schnell sieht, welchen Inhalt Variablen haben. Im fertigen Programm kann das aber auch stören. Wenn wir hinter die Programmzeile ein Semikolon – manche sagen auch Strichpunkt dazu – setzen, werden Variable und Inhalt nicht angezeigt.

```matlab
x = 4;
```

Standardmäßig sollte nach jeder Programmzeile ein Semikolon kommen.

Richtlinien für Variablennamen:

Früher war der Speicherplatz von Computern klein, daher wurden häufig nur kurze Variablennamen wie beispielsweise i oder N verwendet. Heutzutage ist es Standard, nur in Ausnahmefällen (z.B. in Schleifen, dazu kommen wir noch) kurze Variablennamen zu nehmen. Stattdessen werden Namen benutzt, bei denen man erraten kann, was die Variable für einen Einsatzzweck hat. Beispielsweise lässt der Code

```matlab
m = 0.19;
n = 80;
b = n + m * n
```

nur schwer vermuten, was damit bezweckt wird. Oder können Sie erahnen, was dort passieren soll?
Dagegen erahnt man bei diesem Code schon eher, was bezweckt wird:

```matlab
mehrwertsteuersatz = 19/100;
nettopreis = 80;
bruttopreis = nettopreis + mehrwertsteuersatz * nettopreis
```

Verwenden Sie für Variablennamen nur ASCII-Zeichen, also keine Umlaute wie ö, ü oder ß. Zahlen sind erlaubt, aber nicht am Anfang des Namens. Es ist sinnvoll, lange Variablen durch einen Unterstrich besser lesbar zu gestalten (sogenannte Snake-Case-Formatierung). Ich empfehle für Variablennamen beispielsweise `dateiname_alt` oder `dateiname_neu`, wenn beispielsweise eine Datei umbenannt wird. Sie sind frei in der Gestaltung der Variablennamen, verboten sind nur die sogannnten **Schlüsselwörter**. Schlüsselwörter sind beispielsweise eingebaute Kommandos an den MATLAB-Interpreter. Würden Sie diese als Variablennamen benutzen, wüsste der MATLAB-Interpreter nicht, ob das Kommando oder die Variable gemeint ist.

```{exercise}
:label: part01_miniexercise06
Initialisieren Sie eine Variable namens alter mit Ihrem aktuellen Alter, eine Variable ``rentenalter`` mit dem Zahlenwert ``67`` und berechnen Sie dann, wie viele Jahre es noch bis zum Renteneintritt dauert. 
```
````{solution} part01_miniexercise06
:label: part01_minisolution06
:class: dropdown
```matlab
alter = 21;
rentenalter = 67;
disp(rentenalter - alter);
```
````

## Ein- und Ausgabe sowie das EVA-Prinzip

Grundlegend geht es bei der Datenverarbeitung und vor allem bei der wissenschaftlichen Programmierung darum, Daten zu verarbeiten, wie der Name ja schon sagt sagt ;-) Selbst bei einer Smartphone-App zum Daddeln müssen Daten verarbeitet werden, nämlich das aktuelle Level, wo hat die Spielerin oder der Spieler gerade das Display berührt, was passiert in dem Spiel als nächstes usw. Grundsätzlich folgen datenverarbeitende Systeme dem sogenannten **EVA-Prinzip**.
Wikipedia beschreibt das EVA-Prinzip (siehe https://de.wikipedia.org/wiki/EVA-Prinzip) wie folgt:
> "...Das EVA-Prinzip beschreibt ein Grundprinzip der Datenverarbeitung. Die Abkürzung leitet sich aus den ersten Buchstaben der Begriffe Eingabe, Verarbeitung und Ausgabe ab (englisch IPO model: input-process-output). Diese drei Begriffe beschreiben die Reihenfolge, in der Daten verarbeitet werden."

Typische Eingabe-Operationen sind dabei
* die Eingabe von Zeichen über eine Tastatur oder
* das Lesen von Dateien, die auf der Festplatte oder einem Speichermedium gespeichert sind.

Häufige Ausgabe-Operationen sind
* die Wiedergabe von Texten, Zahlen oder Bildern auf dem Bildschirm oder
* das Schreiben von Dateien auf Festplatte oder Speichermedium.

Die einfachste und häufigste **Eingabe** erfolgt über die Tastatur. Die Funktion `input()` stoppt das laufende Skript und erwartet eine Eingabe über die Tastatur. Dabei wird der Text zwischen den einfachen Hochkommata im Command Window angezeigt. Dort muss auch der Text eingegeben werden. Bei MATLAB wird die Eingabe als Zahl interpretiert, in vielen anderen Programmiersprachen als String. Die Eingabe wird mit der Taste Return/Enter abgeschlossen. Probieren wir es aus:

```matlab
input('Bitte geben Sie eine Zahl ein: ')
```

Wir haben zwar jetzt auf Aufforderung eine Zahl eingegeben, aber verarbeitet wurde diese Eingabe nicht. Es passierte einfach nichts. Um die Eingabe verarbeiten zu können, speichern wir sie zunächst in einer Variablen ab. Danach quadrieren wir die eingegebene Zahl.

```matlab
x = input('Bitte geben Sie eine Zahl ein: ');
x^2
```

Jetzt wäre es noch schön, wenn wir dem Benutzer oder der Benuzerin unseres Skripts mitteilen können, dass das Ergebnis das Quadrat der Zahl ist. Dazu gibt es in MATLAB das Kommando `disp()`. Damit wird - ähnlich wie bei der Funktion `input()` - der Text zwischen den einfachen Hochkommata ausgegeben.

```matlab
disp('Quadrat: ')
```

Jetzt können wir alles zusammensetzen.

```matlab
x = input('Bitte geben Sie eine Zahl ein: ');
disp('Sie haben folgende Zahl eingegeben: ');
disp(x);
disp('Das Quadrat dieser Zahl ist: ');
disp(x^2);
```

````{exercise}
:label: part01_miniexercise07
Schreiben Sie ein Skript, das nach einer Zahl fragt. Anschließend gibt das Skript die 5. Potenz dieser Zahl aus. Hier ein Beispiel mit der Zahl 2:

```
Bitte geben Sie eine Zahl ein: 
2
Die von Ihnen gewählte Zahl ist: 
2
Die fünfte Potenz davon ist:
32
```
````
````{solution} part01_miniexercise07
:label: part01_minisolution07
:class: dropdown
```matlab
% Eingabe
x = input('Bitte geben Sie eine Zahl ein: ');

% Verarbeitung und Ausgabe
disp('Die von Ihnen gewählte Zahl ist: ');
disp(x);
disp('Die fünfte Potenz davon ist: ');
disp(x^5);
```
````

## Zusammenfassung und Ausblick

Der Einstieg in die wissenschaftliche Programmierung mit MATLAB ist zunächst theoretisch. Zuerst haben wir uns mit grundlegenden Fachbegriffen der theoretischen Informatik und dem EVA-Prinzip beschäftigt. Aber bereits mit den ersten Kommandos in MATLAB wie `input()` und `disp()` sowie der Benutzung von Variablen können wir erste MATLAB-Skripte programmieren.













