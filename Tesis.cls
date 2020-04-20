%%
%% Este es el fichero 'Thesis.cls', basado en 'ECSthesis.cls', por Steve R. Gunn
%% generado con la utilidad docstrip.
%%
%% Creado por Steve R. Gunn, modificado por Sunil Patel: www.sunilpatel.co.uk
%% modificado nuevamente por Simon Ternsjö 2013-10
%% y modificado una vez más por Dairelys García 2017-07

\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{Tesis}
              [2007/22/02 v1.0
   LaTeX document class]
\def\baseclass{book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\def\@checkoptions#1#2{
  \edef\@curroptions{\@ptionlist{\@currname.\@currext}}
  \@tempswafalse
  \@tfor\@this:=#2\do{
    \@expandtwoargs\in@{,\@this,}{,\@curroptions,}
    \ifin@ \@tempswatrue \@break@tfor \fi}
  \let\@this\@empty
  \if@tempswa \else \PassOptionsToClass{#1}{\baseclass}\fi
}
\@checkoptions{11pt}{{10pt}{11pt}{12pt}}
\PassOptionsToClass{a4paper}{\baseclass}
\ProcessOptions\relax
\LoadClass{\baseclass}
\newcommand\bhrule{\typeout{------------------------------------------------------------------------------}}

% Para escribir en más de una columna
\usepackage{multicol}

% Cool para enumerar y hacer tablas chulas
\usepackage{tikz}
\usepackage{latexsym,amsmath,amssymb,amsfonts}
\usepackage{enumitem}
%Define un comando para bolas 3D numeradas y de color azul
\newcommand*{\itembolasazules}[1]
{% l
	\footnotesize\protect\tikz[baseline=-3pt]%
	\protect\node[scale=.5, circle, shade, ball color=blue]{\color{white}\Large\bf#1};
}

% Para poner notas en los márgenes de la página
\usepackage[colorinlistoftodos, textwidth=1.5cm]{todonotes}

%Para establecer márgenes
%\usepackage[total={12cm,21cm},top=2cm,left=2cm]{geometry}

\newcommand\Declaration[1]{
\btypeout{Declaraci\'on de Autor\'\i{}a}
\addtotoc{Declaraci\'on de Autor\'\i{}a}
\thispagestyle{plain}
\null\vfil
%\vskip 60\p@
\begin{center}{\huge\bf Declaraci\'on de Autor\'\i{}a\par}\end{center}
%\vskip 60\p@
{\normalsize #1}
\vfil\vfil\null
%\cleardoublepage
}

\newcommand\btypeout[1]{\bhrule\typeout{\space #1}\bhrule}
\def\today{\ifcase\month\or
  Enero\or Febrero\or Marzo\or Abril\or Mayo\or Junio\or
  Julio\or Agosto\or Septiembre\or Octubre\or Noviembre\or Diciembre\fi
  \space \number\year}
\usepackage{setspace}
\onehalfspacing
\setlength{\parindent}{0pt}
\setlength{\parskip}{2.0ex plus0.5ex minus0.2ex}
\usepackage{vmargin}
\setmarginsrb           { 0.7in}  % margen izquierdo
                        { 0.7in}  % margen superior
                        { 0.7in}  % margen derecho
                        { 0.7in}  % margen inferior
                        {  15pt}  % altura del encabezado
                        {0.25in}  % separación del encabezado
                        {   8pt}  % altura del pie de página
                        { 0.3in}  % separación del pie de página
\raggedbottom
\setlength{\topskip}{1\topskip \@plus 5\p@}
\doublehyphendemerits=10000       % No líneas consecutivas hyphens.
\brokenpenalty=10000              % No romper palabras en páginas/columnas.
\widowpenalty=9999                % Casi no existen viudas al fondo de la página.
\clubpenalty=9999                 % Casi no existen huérfanos al inicio de la página.
\interfootnotelinepenalty=9999    % Casi nunca romper pies de página.
\usepackage{fancyhdr}
\lhead[\rm\thepage]{\fancyplain{}{\sl{\rightmark}}}
\rhead[\fancyplain{}{\sl{\leftmark}}]{\rm\thepage}
\chead{}\lfoot{}\rfoot{}\cfoot{}
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\btypeout{\thechapter\space #1}\markboth{\@chapapp\ \thechapter\ #1}{\@chapapp\ \thechapter\ #1}}
\renewcommand{\sectionmark}[1]{}
\renewcommand{\subsectionmark}[1]{}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\usepackage{amsmath,amsfonts,amssymb,amscd,amsthm,xspace}
\theoremstyle{plain}
\newtheorem{example}{Ejemplo}[chapter]
\newtheorem{theorem}{Teorema}[chapter]
\newtheorem{corollary}[theorem]{Corolario}
\newtheorem{lemma}[theorem]{Lema}
\newtheorem{proposition}[theorem]{Proposición}
\newtheorem{axiom}[theorem]{Axioma}
\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definición}
\theoremstyle{remark}
\newtheorem{remark}[theorem]{Observación}
\usepackage[centerlast,small,sc]{caption}
\setlength{\captionmargin}{20pt}
\newcommand{\fref}[1]{Figura~\ref{#1}}
\newcommand{\tref}[1]{Tabla~\ref{#1}}
\newcommand{\eref}[1]{Equación~\ref{#1}}
\newcommand{\cref}[1]{Capítulo~\ref{#1}}
\newcommand{\sref}[1]{Sección~\ref{#1}}
\newcommand{\aref}[1]{Anexo~\ref{#1}}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{.85}
\renewcommand{\textfraction}{0.1}
\renewcommand{\dbltopfraction}{.85}
\renewcommand{\floatpagefraction}{0.75}
\renewcommand{\dblfloatpagefraction}{.75}
\setcounter{topnumber}{9}
\setcounter{bottomnumber}{9}
\setcounter{totalnumber}{20}
\setcounter{dbltopnumber}{9}
\usepackage{graphicx}
\usepackage{epstopdf}
%\usepackage[scriptsize]{subfigure}
\usepackage{booktabs}
\usepackage{rotating}
\usepackage{listings}
\usepackage{lstpatch}
\lstset{captionpos=b,
        frame=tb,
        basicstyle=\scriptsize\ttfamily,
        showstringspaces=false,
        keepspaces=true}
\lstdefinestyle{matlab} {
        language=Matlab,
        keywordstyle=\color{blue},
        commentstyle=\color[rgb]{0.13,0.55,0.13}\em,
        stringstyle=\color[rgb]{0.7,0,0} }
\usepackage[pdfpagemode={UseOutlines},bookmarks=true,bookmarksopen=true,
   bookmarksopenlevel=0,bookmarksnumbered=true,hypertexnames=false,
   colorlinks,linkcolor={blue},citecolor={blue},urlcolor={red},
   pdfstartview={FitV},unicode,breaklinks=true]{hyperref}
\pdfstringdefDisableCommands{
   \let\\\space
}
\newcommand*{\supervisor}[1]{\def\supname{#1}}
\newcommand*{\examiner}[1]{\def\examname{#1}}
\newcommand*{\degree}[1]{\def\degreename{#1}}
\newcommand*{\authors}[1]{\def\authornames{#1}}
\newcommand*{\addresses}[1]{\def\addressnames{#1}}
\newcommand*{\university}[1]{\def\univname{#1}}
\newcommand*{\UNIVERSITY}[1]{\def\UNIVNAME{#1}}
\newcommand*{\department}[1]{\def\deptname{#1}}
\newcommand*{\DEPARTMENT}[1]{\def\DEPTNAME{#1}}
\newcommand*{\group}[1]{\def\groupname{#1}}
\newcommand*{\GROUP}[1]{\def\GROUPNAME{#1}}
\newcommand*{\faculty}[1]{\def\facname{#1}}
\newcommand*{\FACULTY}[1]{\def\FACNAME{#1}}
\newcommand*{\subject}[1]{\def\subjectname{#1}}
\newcommand*{\keywords}[1]{\def\keywordnames{#1}}
\newcommand{\chap}[1]{ \chapter{#1} \lhead{\emph{#1}} }


\supervisor  {}
\examiner    {}
\degree      {}
\authors     {}
\university  {\texorpdfstring{\href{\myUniversityWeb}
                {\myUniversity}}
                {\myUniversity}}
\UNIVERSITY  {\texorpdfstring{\href{\myUniversityWeb}
                {\MakeUppercase{\myUniversity}}}
                {\MakeUppercase{\myUniversity}}}
\department  {\texorpdfstring{\href{\myDepartmentWeb}
                {\myDepartment}}
                {\myDepartment}}
\DEPARTMENT  {\texorpdfstring{\href{\myDepartmentWeb}
                {\MakeUppercase{\myDepartment}}}
                {\MakeUppercase{\myDepartment}}}
\group       {\texorpdfstring{\href{\myGroupWeb}
                {\myGroup}}
                {\myGroup}}
\GROUP       {\texorpdfstring{\href{\myGroupWeb}
                {\MakeUppercase{\myGroup}}}
                {\MakeUppercase{\myGroup}}}
\faculty     {\texorpdfstring{\href{\myFacultyWeb}
                {\myFaculty}}
                {\myFaculty}}
\FACULTY     {\texorpdfstring{\href{\myFacultyWeb}
                {\MakeUppercase{\myFaculty}}}
                {\MakeUppercase{\myFaculty}}}
\addresses   {}
\subject     {}
\keywords    {}
\renewcommand\maketitle{
  \btypeout{Title Page}
  \hypersetup{pdftitle={\@title}}
  \hypersetup{pdfsubject=\subjectname}
  \hypersetup{pdfauthor=\authornames}
  \hypersetup{pdfkeywords=\keywordnames}
  \thispagestyle{empty}
  \begin{titlepage}
    \let\footnotesize\small
    \let\footnoterule\relax
    \let \footnote \thanks
    \setcounter{footnote}{0}
    \null\vfil
    \vskip 60\p@
    \begin{center}
      \setlength{\parskip}{0pt}
      {\large\textbf{\UNIVNAME}\par}
      \vfill
      {\LARGE \bf \@title \par}
      \vfill
      {\Large Autor: \par}
      \smallskip
      {\Large \authornames \par}
      \vfill
      {\Large Tutores: \par}
      \smallskip
      {\Large \mySupervisors \par}
      \vfill
      {\large \myPartyalFulfillment \par}
      {\large \myDegree \par}
      \bigskip
      \bigskip
      \bigskip
      \bigskip
      \bigskip
      {\Large \@date \par}
      \bigskip
    \end{center}
    \par
    \@thanks
    \vfil\null
  \end{titlepage}
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  \cleardoublepage
}
\newenvironment{abstract}
{
  \btypeout{Abstract Page}
  \thispagestyle{empty}
  %\null\vfil
  \begin{center}
    \setlength{\parskip}{0pt}
    \bigskip
    {\large{\textit{Abstract}} \par}
    \bigskip
  \end{center}
}
{
  \vfil\vfil\vfil\null
  \cleardoublepage
}
\addtocounter{secnumdepth}{1}
\setcounter{tocdepth}{6}
\newcounter{dummy}
\newcommand\addtotoc[1]{
\refstepcounter{dummy}
\addcontentsline{toc}{chapter}{#1}}
\renewcommand\tableofcontents{
\btypeout{Contenidos}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsname
        \@mkboth{
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}
    \@starttoc{toc}
    \if@restonecol\twocolumn\fi
   \cleardoublepage
}\end{spacing}
}
\renewcommand\listoffigures{
\renewcommand{\figurename}{Figura}
\btypeout{\'Indice de Figuras}
\addtotoc{\'Indice de Figuras}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename
      \@mkboth{\MakeUppercase\listfigurename}
              {\MakeUppercase\listfigurename}}
    \@starttoc{lof}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}
\renewcommand\listoftables{
\renewcommand{\tablename}{Tabla}
\btypeout{\'Indice de Tablas}
\addtotoc{\'Indice de Tablas}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename
      \@mkboth{
          \MakeUppercase\listtablename}{\MakeUppercase\listtablename}}
    \@starttoc{lot}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}
\newcommand\listsymbolname{Abreviaturas}
\usepackage{longtable}
\newcommand\listofsymbols[2]{
\btypeout{\listsymbolname}
\addtotoc{\listsymbolname}
    \chapter*{\listsymbolname
      \@mkboth{
          \MakeUppercase\listsymbolname}{\MakeUppercase\listsymbolname}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}

\newcommand\listconstants{Constantes F\'\i{}sicas}
\usepackage{longtable}
\newcommand\listofconstants[2]{
\btypeout{\listconstants}
\addtotoc{\listconstants}
    \chapter*{\listconstants
      \@mkboth{
          \MakeUppercase\listconstants}{\MakeUppercase\listconstants}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}
\newcommand\listnomenclature{S\'\i{}mbolos}
\usepackage{longtable}
\newcommand\listofnomenclature[2]{
\btypeout{\listnomenclature}
\addtotoc{\listnomenclature}
    \chapter*{\listnomenclature
      \@mkboth{
          \MakeUppercase\listnomenclature}{\MakeUppercase\listnomenclature}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}
\newcommand\acknowledgements[1]{
\btypeout{Agradecimientos}
\addtotoc{Agradecimientos}
\thispagestyle{plain}
\begin{center}{\LARGE{\textit{Agradecimientos}} \par}\end{center}
{\normalsize #1}
\vfil\vfil\null
}
\newcommand\dedicatory[1]{
\btypeout{Dedicatoria}
\addtotoc{Dedicatoria}
\thispagestyle{plain}
%\null\vfil
\vskip 60\p@
\begin{center}{\LARGE{\textit{Dedicatoria}} \par}\end{center}
{\normalsize #1}
\vfil\vfil\null
\cleardoublepage
}
\renewcommand\backmatter{
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
%  \addtotoc{Referencias bibliográficas}
  \btypeout{\bibname}
  \@mainmatterfalse}
\endinput
%%
%% Fin del fichero 'Tesis.cls'.
