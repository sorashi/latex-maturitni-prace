Šablona pro psaní maturitní práce
===
[![GitHub (pre-)release](https://img.shields.io/github/release-pre/sorashi/latex-maturitni-prace.svg)](https://github.com/Sorashi/latex-maturitni-prace/releases)


Soubory:
- `main.tex` – hlavní vstupní soubor pro kompilaci
- `title.tex` – obsahuje text titulní strany (název práce, jméno autora...)
- `preambule.tex` – sem lze vložit své příkazy, které je potřeba vykonat před
začátkem dokumentu (např. `\usepackage{}`)
- `text.tex` – vlastní text maturitní práce
- `zdroje.bib` – seznam zdrojů citovatelných v textu práce

Doporučený software:
- distribuce LaTeXu: [MiKTeX](https://miktex.org/download)
- IDE/editor: [TeXstudio](https://www.texstudio.org/)
- správce bibliografie (zdrojů): [JabRef](http://www.jabref.org/)

Pro kompilaci je potřeba použít `xelatex`

![](https://i.imgur.com/v3bbZw1.png)

## Pevné mezery

V češtině je typograficky nesprávné zanechat jednopísmenné předložky na konci
řádky. Mezi předložku a slovo by se měla vložit pevná mezera. V LaTeXu
neexistuje žádné rychlé řešení. Naštestí existuje program od Petra Olšáka jménem
Vlna.

[Binárky zde](http://ftp.linux.cz/pub/tex/local/cstug/olsak/vlna/oldbin/)
(doporučuji 32-bit)

Spusťte `vlna32.exe -l -m -n text.tex`. To nahradí na správných místech běžné
mezery pevnými a zároveň zazálohuje původní soubor jako `text.te~`.

Tento příkaz by se určitě dal nějakým způsobem zabudovat do kompilačního cyklu
TeXstudia, ovšem teď mě tlačí čas, takže zbytek je TBA.
