% ccdsexam.cls
%
% A LaTeX2e document class for typesetting NTU CCDS exam papers.
%
% ccdsexam.cls
% Copyright (c) 2021, 2022, 2025 Yi Li
%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3
% of this license or (at your option) any later version.
% The latest version of this license is in
%   http://www.latex-project.org/lppl.txt
% and version 1.3 or later is part of all distributions of LaTeX
% version 2003/12/01 or later.
%
% This work has the LPPL maintenance status "author-maintained".
%
% This work consists of the files ccdsexam.cls and exam.tex.
%
%%% Yi Li
%%% College of Computing and Data Science (CCDS)
%%% Nanyang Technological University
%%% Singapore
%%% yi_li@ntu.edu.sg

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ccdsexam}[2022/02/14 NTU CCDS exam LaTeX class]

\LoadClass[12pt,addpoints]{exam}

\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{times}
\usepackage{microtype}
\usepackage{etoolbox}
\usepackage{geometry}
\geometry{
  a4paper,
  left=3cm,
  top=3.2cm,
  headsep=1cm,
% showframe
}
\usepackage{setspace}
\usepackage{calc}
\usepackage{url}
\renewcommand{\UrlFont}{\sffamily}

\usepackage{enumitem}
\usepackage{multicol}
\usepackage{graphicx}
\usepackage{amsmath}
\usepackage[capitalise]{cleveref}
\crefname{figure}{Figure}{Figures}
\crefname{subpart}{Subpart}{Subparts}
\crefname{subsubpart}{subsub part}{sub sub parts}
\crefname{partno}{Part}{Parts}
\crefname{question}{Question}{Questions}
\creflabelformat{partno}{#2\textup{(#1)}#3}

\usepackage{minted}
\usepackage{courier}
\renewcommand{\theFancyVerbLine}{\small\arabic{FancyVerbLine}}
\usemintedstyle{bw}
\setminted{xleftmargin=20pt,
  numbersep=5pt,
  linenos,
  fontsize=\small,
  frame=single,
  framesep=10pt}

% Packages used for special things
\usepackage{framed,booktabs}
\usepackage{lastpage}
\usepackage{calc}

\newcommand*{\course}[2]{\gdef\@code{#1}\gdef\@course{#2}}
\newcommand*{\quiztitle}[1]{\gdef\@quiztitle{#1}}
\newcommand*{\monthyear}[1]{\gdef\@monthyear{#1}}
\newcommand*{\length}[1]{\gdef\@length{#1}}

\newcommand{\printInstructions}{
  \noindent{\bfseries\underline{INSTRUCTIONS}}

  %\vskip .2in
  %\begin{center}
  %\noindent{\LARGE{\bf DO NOT TURN OVER UNTIL TOLD TO DO SO}}
  %\end{center}

  % Default instructions (can be overriden in exam.tex)
  \begin{enumerate}[leftmargin=*,labelsep=20pt,topsep=0pt]
    \item This paper contains \numquestions~questions and comprises \pageref{LastPage} pages.
    \item Answer \textbf{ALL} questions.
    \item This is a closed-book examination.
    \item All questions carry equal marks.
  \end{enumerate}
}

\newcounter{nextpage}

% Set headers and footers
\pagestyle{headandfoot}
\extraheadheight{-.5cm}
%\extrafootheight{-.33cm}
\rhead{\@code}
\lfoot{\ifincomplete{\vskip -.2in Note: Question No. \IncompleteQuestion\ continues on Page
\setcounter{nextpage}{\thepage+1}\thenextpage}}
\rfoot{}
\cfoot{\iflastpage{\vskip -.2in END OF PAPER\vskip .15in \thepage}{\vskip .15in \thepage}}

% Format settings
%\setlength{\rightpointsmargin}{2.5cm}
\renewcommand{\questionshook}{%
  \setlength{\itemsep}{3\baselineskip}
  \setlength{\labelsep}{20pt}
  \setlength{\leftmargin}{29pt}
}
\renewcommand{\partshook}{%
  \setlength{\topsep}{\baselineskip}
  \setlength{\itemsep}{2\baselineskip}
}
\renewcommand{\subpartshook}{%
  \setlength{\topsep}{\baselineskip}
  \setlength{\itemsep}{\baselineskip}
}
\renewcommand{\subpartlabel}{(\thesubpart)}

\def\droppoints{%
  \leavevmode\unskip\par\nobreak\strut\hfill\padded@point@block
  %\rlap{\hskip\rightmargin\padded@point@block}
}

\pointsdroppedatright
\marginpointname{ \points}
\marksnotpoints
%\boxedpoints
%\pointsinmargin
\vpword{Marks}
%\totalformat{(\totalpoints ~marks)}

\renewcommand{\solutiontitle}{\noindent\textbf{Solution:}\par\noindent}

% Format figure captions
\usepackage{chngcntr}
\counterwithin{figure}{question}
\renewcommand\thefigure{Q\thequestion\alph{figure}}
\renewcommand{\thetable}{Q\thequestion\alph{figure}}
\usepackage{caption}
\DeclareCaptionFormat{ntucaption}{\bfseries\underline{\smash{#1#2#3}}}
\captionsetup{format=ntucaption}

\newcommand{\makeheading}{
  \vspace*{-20pt}
  {\doublespacing
  \begin{center}
    {\bfseries
      \underline{NANYANG TECHNOLOGICAL UNIVERSITY} \\
      \underline{\@quiztitle} \\
      \underline{\@code ~--~ \@course}}
  \end{center}

  \vskip .1in
  \noindent{\@monthyear \hfill Time Allowed: \@length}

  \vskip .3in
  \printInstructions

  \vskip \baselineskip
  \hrule height 1pt
  \vskip \baselineskip

%  \vskip .5in
%  \noindent Name: \hrulefill{}\hrulefill{}\hrulefill{}\quad{}Matriculation Number:
%  \hrulefill\hrulefill{}
%  \\[.75\baselineskip]
%
%  \vfill
%  \begin{center}
%    %\settabletotalpoints{60}
%    \gradetable[h][questions]
%  \end{center}
%  \vfill\newpage
}}
