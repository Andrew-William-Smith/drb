# drb

Read the Douay-Rheims Bible and other Catholic doctrinal texts directly from your terminal.

The following texts are included:
- [Douay-Rheims Bible, Challoner Revision](https://www.ccel.org/c/challoner/douayrheims/dr.html)
- [Catechism of the Catholic Church](http://www.vatican.va/archive/ENG0015/_INDEX.HTM)
- [Code of Canon Law](http://www.vatican.va/archive/cod-iuris-canonici/cic_index_en.html)
- [Code of Canons of Oriental Churches](http://www.jgray.org/codes/cceo90eng.html)
- [General Instruction of the Roman Missal](http://www.vatican.va/roman_curia/congregations/ccdds/documents/rc_con_ccdds_doc_20030317_ordinamento-messale_en.html)

The texts were machine parsed from the above sources, and while they were partially manually verified, some errors may be present, so *caveat utilitor*.
Efforts have been taken to preserve footnotes and references where possible; these extratextual annotations are surrounded by square brackets (`[]`).


## Usage

    usage: ./drb [flags] [reference...]

      -l      list books
      -W      no line wrap
      -h      show help

      Reference types:
          <Book>
              Individual book
          <Book>:<Chapter>
              Individual chapter of a book
          <Book>:<Chapter>:<Verse>[,<Verse>]...
              Individual verse(s) of a specific chapter of a book
          <Book>:<Chapter>-<Chapter>
              Range of chapters in a book
          <Book>:<Chapter>:<Verse>-<Verse>
              Range of verses in a book chapter
          <Book>:<Chapter>:<Verse>-<Chapter>:<Verse>
              Range of chapters and verses in a book

          /<Search>
              All verses that match a pattern
          <Book>/<Search>
              All verses in a book that match a pattern
          <Book>:<Chapter>/<Search>
              All verses in a chapter of a book that match a pattern

## Build

drb can be built by cloning the repository and then running make:

    git clone https://github.com/Andrew-William-Smith/drb.git
    cd drb
    sudo make install

## License

Public domain
