# NTU CCDS exam paper template

This project provides a LaTeX template for typesetting exam papers, which conform with the formatting guideline of the College of Computing and Data Science (CCDS) at the Nanyang Technological University (NTU). It relies on a document class created by Philip S. Hirschhorn, for which he holds the copyright.

### Key Features
* Typesetting the title, exam instructions, headers, and footers according the NTU standard (printing the number of pages and questions automatically)
* Formatting questions, parts, and sub-parts according to the specifications
* Formatting figures, tables, and their numbers according to the specifications
* Easy referencing to figures/tables/parts with the `\cref` command
* Automatically inserting a note in the footer if a question continues on the next page

### Known Issues
* When there is only one figure in a question, it will be numbered as `Figure QXa` instead of `Figure QX`. This can be fixed with `\renewcommand{\thefigure}{QX}`.
* The note at the footer may not be inserted when a figure is the only part that is placed on the next page. Please avoid this as it is not recommended anyways.

Please submit an issue if you find any bug.

Author: Yi Li (yi_li@ntu.edu.sg)
LaTeX Project Public License 1.3c
