# NTU Exam Paper Template

This project provides a LaTeX template for typesetting exam papers,
which conform with the formatting guideline of the Nanyang Technological
University (NTU). It relies on a document class created by Philip
S. Hirschhorn, for which he holds the copyright.


### Key Features
* Typesetting the title, exam instructions, headers, and footers according the NTU standard (printing the number of pages and questions automatically)
* Formatting questions, parts, and sub-parts according to the specifications
* Formatting figures, tables, and their numbers according to the specifications
* Easy referencing to figures/tables/parts with the `\cref` command
* Typesetting code snippets with nice fonts and syntax highlighting (load the class with the `code` option)
* Automatically inserting a note in the footer if a question continues on the next page

### Getting Started 
* Open `exam.tex` to start to work on your own exam paper
* Fill in meta information: e.g., `\course{SC4012/CE4067/CZ4067}{SOFTWARE SECURITY}`, `\quiztitle{SEMESTER 2 EXAMINATION 2024-2025}`, `\monthyear{Apr/May 2025}`, `\length{2 hours}`
* Add exam questions using the question, parts, and subparts environment and forget about format tweaks in Word

### Known Issues 
* This template has only been tested within the College of Computing and Data Science (CCDS) and may not follow the formatting conventions of other colleges. Feel free to customise based on your needs and submit a pull request.
* When there is only one figure in a question, it
will be numbered as `Figure QXa` instead of `Figure QX`. This can be
fixed with `\renewcommand{\thefigure}{QX}`.
* The note at the footer
may not be inserted when a figure is the only part that is placed on
the next page. Please avoid this as it is not recommended anyways.


Please submit an issue if you find any bug or create a pull request if
you'd like to contribute to the project.

Author: Yi Li (yi_li@ntu.edu.sg)
LaTeX Project Public License 1.3c
