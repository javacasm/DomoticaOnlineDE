SFAQ="RasPi FAQ - Preguntas Frecuentas.pdf"
FFAQ="RasPi FAQ - Preguntas Frecuentas.md"
S5="Tema 5 - Qué es Raspberry.pdf"
F5="Tema 5 - Qué es Raspberry.md"
S6="Tema 6 - Características de Raspberry.md"
F6="Tema 6 - Características de Raspberry.pdf"
S7="Tema 7 - Instalación de Raspberry.md"
F7="Tema 7 - Instalación de Raspberry.pdf"
S8="Tema 8 - Uso de Raspberry.md"
F8="Tema 8 - Uso de Raspberry.pdf"
S9="Tema 9 - Programación con Raspberry.md"
F9="Tema 9 - Programación con Raspberry.pdf"
S10="Tema 10 - Electrónica con Raspberry.md"
F10="Tema 10 - Electrónica con Raspberry.pdf"


all: 5 6 7 8 9 10 FAQ

FAQ:
	pandoc --latex-engine=xelatex   \
					-V papersize:a4paper    \
					--template=./LaTeX_ES.latex    \
					-o  $(SFAQ)  \
					Cabecera.md        \
					$(FFAQ)


5:
	pandoc  --latex-engine=xelatex   \
					-V papersize:a4paper    \
					--template=./LaTeX_ES.latex    \
					-o  $(S5)  \
					Cabecera.md        \
					$(F5)
6:
	pandoc --latex-engine=xelatex   \
					-V papersize:a4paper    \
					--template=./LaTeX_ES.latex    \
					-o $(F6)     \
					Cabecera.md        \
					$(S6)

7:
	pandoc --latex-engine=xelatex \
					--from=markdown \
					-V papersize:a4paper \
					--template=./LaTeX_ES.latex \
		      -o $(F7) \
		       Cabecera.md     \
		      $(S7)
8:
	pandoc --latex-engine=xelatex       \
					-V papersize:a4paper        \
					--template=./LaTeX_ES.latex \
					-o $(F8) \
					Cabecera.md           \
					$(S8)
9:
	pandoc --latex-engine=xelatex       \
					-V papersize:a4paper        \
					--template=./LaTeX_ES.latex \
					-o $(F9) \
					Cabecera.md           \
					$(S9)
10:
	pandoc --latex-engine=xelatex       \
					-V papersize:a4paper        \
					--template=./LaTeX_ES.latex \
					-o $(F10) \
					Cabecera.md           \
					$(S10)
clean:
	rm $(F5) $(F6) $(F7) $(F8) $(F9) $(F10)

cp:
	cp $(F5) $(F6) $(F7) $(F8) $(F9) $(F10) ../../domobot17

push:
	git commit -m "update" $(F5);
	git commit -m "update" $(F6);
	git commit -m "update" $(F7);
	git commit -m "update" $(F8);
	git commit -m "update" $(F9);
	git commit -m "update" $(F10);
	git push;
