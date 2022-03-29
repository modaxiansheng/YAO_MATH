% Modified based on https://courses.csail.mit.edu/6.851/spring12/lectures/lec-template.tex
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{scribe}
\LoadClass[11pt]{article}
\RequirePackage{latexsym}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage[thmmarks, amsmath, thref]{ntheorem}
\RequirePackage{epsfig}
\RequirePackage{graphicx}
\RequirePackage{soul}
\RequirePackage{url}
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\RequirePackage{extramarks}
\RequirePackage{chngpage}
\RequirePackage{footnote}
\RequirePackage[usenames, dvipsnames]{color}
\RequirePackage[rgb]{xcolor}
\RequirePackage[colorlinks=true, urlcolor=blue, linkcolor=blue, citecolor=blue]{hyperref}
\RequirePackage{footnote}

\RequirePackage{minted}
    
\usemintedstyle{colorful}
   % \setminted{obeytabs=true, tabsize=4, xleftmargin=20pt, linenos, breaklines}

\makeatletter
\g@addto@macro{\UrlBreaks}{\UrlOrds}
\makeatother

\newcommand{\Course}{}
\newcommand{\Semester}{}
\newcommand{\Instructor}{}
\newcommand{\LectureID}{}
\newcommand{\LectureDate}{}
\newcommand{\Scribe}{}

\newcommand{\setCourse}[1]{\renewcommand{\Course}{#1}}
\newcommand{\setSemester}[1]{\renewcommand{\Semester}{#1}}
\newcommand{\setInstructor}[1]{\renewcommand{\Instructor}{#1}}
\newcommand{\setLectureID}[1]{\renewcommand{\LectureID}{#1}}
\newcommand{\setLectureDate}[1]{\renewcommand{\LectureDate}{#1}}
\newcommand{\setScribe}[1]{\renewcommand{\Scribe}{#1}}

% 1-inch margins, from fullpage.sty by H.Partl, Version 2, Dec. 15, 1988.
\topmargin 0pt
\advance \topmargin by -\headheight
\advance \topmargin by -\headsep
\textheight 8.9in
\oddsidemargin 0pt
\evensidemargin \oddsidemargin
\marginparwidth 0.5in
\textwidth 6.5in

\parindent 0in
\parskip 1.5ex
%\renewcommand{\baselinestretch}{1.25}

% Setup the header and footer
\pagestyle{fancy}                                                       %
\chead{\textit{Lecture \LectureID}}  %
\rhead{\textit{\LectureDate}}                                         %
\lfoot{\textit{\Course}}                                                      %
\cfoot{}                                                                %
\rfoot{Page\ \thepage\ of\ \protect\pageref{LastPage}}                          %
\renewcommand\headrulewidth{0.4pt}                                      %
\renewcommand\footrulewidth{0.4pt}                                      %

\newcommand{\handout}[5]{
  \thispagestyle{plain}
  \noindent
  \begin{center}
  \framebox{
    \vbox{
      \vspace{2mm}
      \hbox to 6.28in { {\bf #2 } \hfill #3 }
      \vspace{4mm}
      \hbox to 6.28in { {\Large \hfill #1  \hfill} }
      \vspace{4mm}
      \hbox to 6.28in { {\em #4 \hfill #5} }
      \vspace{2mm}
    }
  }
  \end{center}
  \vspace*{4mm}
}

\newcommand{\lecture}[6]{\handout{Lecture #1 --- #6}{#2}{#3}{Instructor: #4}{Scribes: #5}}

\newcommand{\notetitle}{\lecture{\LectureID}{\Course}{\Semester}{\Instructor}{\Scribe}{\LectureDate}}

\theoremstyle{plain}
\theoremheaderfont{\upshape \bfseries}
\theoremseparator{.}
\theoremsymbol{\ensuremath{\diamondsuit}}
\theorembodyfont{\upshape}
\newtheorem{theorem}{Theorem}[section]
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{observation}[theorem]{Observation}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{definition}[theorem]{Definition}
\newtheorem{claim}[theorem]{Claim}
\newtheorem{fact}[theorem]{Fact}

\theoremstyle{plain}
\theoremheaderfont{\upshape \bfseries}
\theoremseparator{.}
\theoremsymbol{}
\theorembodyfont{\upshape}
\newtheorem{assumption}[theorem]{Assumption}
\newtheorem{example}[theorem]{Example}
\newtheorem{remark}[theorem]{Remark}

\theoremstyle{nonumberplain}
\theoremheaderfont{\upshape \bfseries}
\theorembodyfont{\upshape}
\theoremsymbol{\ensuremath{\square}}
\newtheorem{proof}{Proof}

\newcommand\numberthis{\addtocounter{equation}{1}\tag{\theequation}}
