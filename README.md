# docker-latex-jp
This container helps building .pdf from .tex written in Japanese.

# Build

    $ cd docker-latex-jp
    $ docker build -t genkami/latex .

or

    $ docker pull genkami/latex

# Usage

    $ ls /path/to/your/pdf/dir
    document.tex
    $ docker run --rm -v /path/to/your/pdf/dir:/work genkami/latex build document.tex
