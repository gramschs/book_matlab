#!/usr/bin/env python
# coding: utf-8

# # Einführung und Lernziele
# 
# Bei der Datenvisualisierung geht es darum, Daten durch eine Grafik so aufzubereiten, dass Muster oder Unregelmäßigkeiten in den Daten entdeckt werden können. Dabei kann die visuelle Darstellung der Daten helfen, Muster in den Daten zu entdecken, aber sie kann auch irreführend sein. In diesem MATLAB Live Skript werden wir einen ersten Einblick in die Datenvisualisierung mit MATLAB verschaffen. Abhängig davon, wie die Art der Daten ist, die wir visualisieren wollen, gibt es verschiedene Darstellungsformen, die sogenannten **Diagrammtypen**. Im Folgenden betrachten wir die Diagrammtypen
# 
# * Liniendiagramm,
# * Streudiagramm,
# * Balkendiagramm (Säulendiagramm),
# 
# und lernen, wann welcher Diagrammtyp zum Einsatz kommt.
# 
# Danach beschäftigen wir uns mit der **Gestaltung von Diagrammtypen**. Wir betrachten
# 
# * Beschriftungen (Achsen, Titel, Legende),
# * Gitterlinien,
# * Marker und
# * Farbskalen.
# 
# Um uns zunächst das Einlesen von echten Messdaten zu ersparen, werden wir in diesem MATLAB Live Skript entweder die Graphen von mathematischen Funktionen visualisieren oder uns künstliche Messdaten per Zufallsgenerator erzeugen. 

# ## Diagramm und häufige Diagrammtypen
# 
# Wikipedia (siehe https://de.wikipedia.org/wiki/Diagramm) definiert den Fachbegriff **Diagramm** folgendermaßen:
# 
# > "Ein **Diagramm**, genannt auch **(grafisches) Schaubild**, ist eine grafische Darstellung von Daten, Sachverhalten oder Informationen. Je nach der Zielsetzung des Diagramms werden höchst unterschiedliche Typen eingesetzt."
# 
# Ein in der Praxis sehr häufig eingesetzer Diagrammtyp ist das **Balkendiagramm**, das auch **Säulendiagramm** genannt wird. Das Balkendiagramm kommt zum Einsatz, wenn die Daten **diskret** sind. Damit ist gemeint, dass die Daten zu bestimmten **Kategorien oder Mengen** zugehörig sind und beispielsweise die Anzahl der Elemente oder die Häufigkeit dieser Kategorie dargestellt werden soll. Wenn Sie unsicher sind, ob die Daten diskret sind, fragen Sie sich: Kann ich den Mittelwert bilden?
# 
# Ein typisches Beispiel für ein Balkendiagramm ist die Zutatenliste für einen Obstsalat. Angenommen wir brauchen für den Obstsalat folgende Zutaten:
# 
# * 3 Äpfel,
# * 2 Bananen,
# * 4 Clementinen und
# * 10 Datteln.
# 
# Wenn wir jetzt die Zutatenliste visulisieren wollen, können wir ein Balkendiagramm verwenden, denn man kann nicht den Mittelwert zwischen Apfel und Banane bilden. So könnte beispielsweise das zugehörige Balkendiagramm aussehen:

# ```{figure} pics/part07_balkendiagramm_obstsalat.png
# ---
# width: 600px
# name: part07_balkendiagramm_obstsalat
# ---
# Balkendiagramm für die Zutatenliste eines Obstsalates
# ```

# In der Schule kommt am häufigsten das **x-y-Diagramm** vor. Damit soll die Wirkung y einer Ursache x beschreiben werden. Ein typisches Beispiel ist in der Physik ein Weg-Zeit-Diagramm, bei dem die Zeit auf der x-Achse und der Weg, den ein bewegter Körper in dieser Zeit zurückgelegt hat, auf der y-Achse dargestellt wird. Auch die Schaubilder bzw. Graphen von Funktionen werden so dargestellt. Normalerweise sind die Daten au der x-Achse **kontinuierlich**. Vielleicht wird der zurückgelegte Weg eines Autos nur nach 1 Sekunde, 2 Sekunden, 3 Sekunden usw. gemessen. Aber dazwischen hat ist das Auto ja nicht im Nirwana verschwunden, zwischen den Werten auf der x-Achse existieren weitere Zeitpunkte, zu denen der zurückgelegte Weg ermittelt werden kann. Um diesen Unterschied zwischen Messwerten, die diskret gemessen werden, aber zu einer kontinuierlichen Größe gehören und echten kontinuierlichen Größen besser darstellen zu können, werden x-y-Diagramme als
# 
# * **Liniendiagramme** und
# * **Streudiagramme**
# 
# dargestellt. Im Folgenden wird einmal das Zeit-Weg-Diagramm eines bewegten Körpers aufgrund der Messwerte als Streudiagramm gezeigt und einmal aufgrund der physikalischen Formel $s=\frac{1}{2}at^2$ für eine konstante Beschleunigung von $a=5 m/s$ als Liniendiagramm:

# ```{figure} pics/part07_streudiagramm.png
# ---
# width: 600px
# name: part07_streudiagramm
# ---
# Messungen Weg-Zeit eines bewegten Körpers als Streudiagramm
# ```
# ```{figure} pics/part07_liniendiagramm.png
# ---
# width: 600px
# name: part07_liniendiagramm
# ---
# Formel Weg-Zeit eines bewegten Körpers als Liniendiagramm 
# ```

# Bei Messungen kann es sehr interessant sein, die Messwerte und der Messung zugrunde liegende Formel gleichzeitig zu visualisieren. Da wird erreicht, indem die Messwerte als Streudiagramm und die Formel als Liniendiagramm dargestellt wird. Damit können Ursache und Wirkung gut herausgearbeitet werden, die Güte der Messung beurteilt werden oder überhaupt neue Gesetzmäßigkeiten entdeckt werden. Für unser Weg-Zeit-Diagramm könnte das beispielsweise so aussehen: 

# ```{figure} pics/part07_wegzeit.png
# ---
# width: 600px
# name: part07_wegzeit
# ---
# Weg-Zeit-Diagramm eines bewegten Körpers (Messungen und Formel)
# ```

# Nachdem wir die drei wichtigsten Diagrammtypen kennengelernt haben, werden wir uns nun erarbeiten, wie diese in MATLAB umgesetzt werden können. Für weitere Details über Datenvisualisierung (unabhängig von Programmiersprache oder Software) empfehle ich das Buch: Datenvisualisierung - Grundlagen & Praxis von Claus O. Wilke erschienen im O'Reilly-Verlag bzw. bei dpunkt.verlag GmBH. 
