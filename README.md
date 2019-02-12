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

Stáhněte `vlna32.exe` do složky, kde se nachází soubor `pevne-mezery.bat` a `text.tex`. Spusťte soubor `pevne-mezery.bat`.

Tento příkaz by se určitě dal nějakým způsobem zabudovat do kompilačního cyklu
TeXstudia, ovšem teď mě tlačí čas, takže zbytek je TBA.

## Převod do docx

Protože pokyny nám zadávají povinnost odevzdat práci mj. ve formátu docx, *což je formát pro opice, co potřebují WYSIWYG, ale vyberou si Word, což je ten [nejméně](https://wordribbon.tips.net/T010837_Pictures_Move_on_their_Own.html) [spolehlivý](https://twitter.com/gossipgriii/status/713425874167537664) WYSIWYG editor na světě*, vytvořil jsem skript `to-docx.bat`. Stačí ho spustit jako admin v dané složce. Jako závislost k němu patří soubor `reference.docx`. Po spuštení uvidíte hromadu warningů, protože některou matematiku do Wordu převést nelze. Výsledek se zapíše do `main.docx`. Není to nic převratného a chce to hodně manuální úpravy, pokud chcete, aby byl prezentovatelný. Přeji mnoho zábavy. :disappointed::gun:
