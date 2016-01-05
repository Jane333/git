*******  ABOUT BASH  *******

Was ist die Bash?
 - Skriptsprache (eine simple Programmiersprache)
 - Interpreter für die Skriptsprache "Bash"
 - das, was am anderen Ende eines Terminal Emulators steht
 - die ausführbare Binärdatei /bin/bash

Wozu ist sie gut?
 - um coole Linux-Tools aufzurufen
 - Interagieren mit den gerufenen Programmen ("interaktive Shell")
 - Verbinden mehrerer Programme über Pipes
 - Schreiben von simplen Skripten oder komplizierteren Programmen

Beispiele für die am häufigsten verwendeten Linux-Tools:
	ls - zeigt Inhalt eines Verzeichnisses an
	ls -la - wie ls, nur mit ausführlicherer Ausgabe
	cd - change directory (wechselt das aktuelle Verzeichnis)
	pwd - print working directory (zeigt das aktuelle Verzeichnis an)
	cp <datei1> <datei2> - kopiert datei1 nach datei2
	mv <datei1> <datei2> - verschiebt (benennt um) datei1 nach datei2
	find - findet Datei(en) nach einer Reihe von Kriterien (Name, Art, Alter, Inhalt...)
	grep - findet Inhalte innerhalb von Dateien
    echo "some string" - printet "some string" in die Konsole

Kommentare
# Dies ist ein Kommentar. Diese Zeile wird nie ausgeführt.

Variablen
a="abc"
a="123"
a=$(grep "some string" "/path/to/some file")
echo "$a" # printet den Inhalt der Variable a in die Konsole
    
Exit status eines Befehls überprüfen
echo $?
 - wenn der exit status 0 ist -> alles ok

if-then-else
if grep -q "aa" datei
	then echo "gefunden"
else
	echo "nicht gefunden"
fi

a=1
if ((a < 2))
then
    echo "a ist kleiner als 2"
else
    echo "..."
fi

reading files line by line
doing stuff for all files in directory:
	for file in /tmp/testdir/*; do echo "$file ---"; done
	for file in "/tmp/testdir/"*; do echo "$file ---"; done
((math))

I/O streams: 0 (stdin), 1 (stdout), 2 (stderr)
I/O redirecting - examples
ls -la > datei.txt  # Redirect des I/O-Streams stdout in die Datei datei.txt (eine Überschreibung der Datei findet statt
ls -la >> datei.txt  # Ein Anhängen an die Datei findet statt
echo "bla" > /tmp/test  # Datei mit dem Inhalt "bla" erzeugen
grep "bl" < /tmp/test  # Datei /tmp/test als Input für grep akzeptieren
http://www.tldp.org/LDP/abs/html/io-redirection.html

pipes
uc to upper case, cut

chmod, chown ?
man pages


********  REGULAR EXPRESSIONS  *********

.
*+?{}
[](|)
^$
\1
lookarounds

Beispiele
E-Mail-Adresse
Datum
Datum vom englischen ins deutsche Format überführen