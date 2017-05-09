#!/bin/bash


	pandoc --latex-engine=xelatex   \
					-V papersize:a4paper    \
					--template=./LaTeX_ES.latex    \
					-o  $(S5)  \
					Cabecera.md        \
					$(F5)

	pandoc --latex-engine=xelatex   \
					-V papersize:a4paper    \
					--template=./LaTeX_ES.latex    \
					-o $(F6)     \
					Cabecera.md        \
					$(S6)


	pandoc --latex-engine=xelatex \
					--from=markdown \
					-V papersize:a4paper \
					--template=./LaTeX_ES.latex \
		      -o $(F7) \
		       Cabecera.md     \
		      $(S7)

	pandoc --latex-engine=xelatex       \
					-V papersize:a4paper        \
					--template=./LaTeX_ES.latex \
					-o $(F8) \
					Cabecera.md           \
					$(S8)

	pandoc --latex-engine=xelatex       \
					-V papersize:a4paper        \
					--template=./LaTeX_ES.latex \
					-o $(F9) \
					Cabecera.md           \
					$(S9)

	pandoc --latex-engine=xelatex       \
					-V papersize:a4paper        \
					--template=./LaTeX_ES.latex \
					-o $(F10) \
					Cabecera.md           \
					$(S10)
