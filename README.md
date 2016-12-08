# clasp-slackbuild
Slackbuild for clasp

This is a work-in-progress slackbuild for clasp. Any feedback is much appreciated!

The text for the description of clasp is taken from http://potassco.sourceforge.net/.
I don't know what license the information on the site is released under, or the normal
procedure for adding a description for slackbuilds.

This slackbuild is based on the autotools template from slackbuilds.org
https://slackbuilds.org/templates/autotools-template.SlackBuild

It isn't the most appropriate template since clasp's build process feels like a cross between
an out-of-place cmake build and an autotools build.

The process goes something like this:

    ./configure.sh
    cd build/release
    make
    make install

----

clasp

clasp is an answer set solver for (extended) normal and disjunctive logic programs.
It combines the high-level modeling capacities of ASP with state-of-the-art techniques
from the area of Boolean constraint solving. The primary clasp algorithm relies on
conflict-driven nogood learning, a technique that proved very successful for 
satisfiability checking (SAT). Unlike other learning ASP solvers, clasp does not rely
on legacy software, such as a SAT solver or any other existing ASP solver. 
Rather, clasp has been genuinely developed for answer set solving based on 
conflict-driven nogood learning. clasp can be applied as an ASP solver (on SMODELS 
format, as output by Gringo), as a SAT solver (on a simplified version of 
DIMACS/CNF format), or as a PB solver (on OPB format).

Download 
http://sourceforge.net/projects/potassco/files/clasp/
Resources
http://www.cs.uni-potsdam.de/clasp
Article
http://www.cs.uni-potsdam.de/wv/pdfformat/gekasc12c.pdf
Citation
http://www.cs.uni-potsdam.de/wv/bibtex/gekasc12c.bib

clasp is also available in Debian, Ubuntu, Arch Linux (AUR), and for Mac OS X in homebrew and macports.
