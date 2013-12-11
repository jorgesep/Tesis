\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{usach-tesis}
              [2013/09/10 v1.0
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
\PassOptionsToClass{letterpaper}{\baseclass}
\ProcessOptions\relax
\LoadClass{\baseclass}


\makeatletter
\renewcommand\section{\@startsection {section}{1}{\z@}%
                                   {-3.5ex \@plus -1ex \@minus -.2ex}%
                                   {2.3ex \@plus.2ex}%
                                   {\normalfont\large\bfseries\MakeUppercase}}

\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\normalfont\normalsize\bfseries}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\normalfont\normalsize\bfseries\textit}}


\renewcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
                    \thispagestyle{plain}%
                    \global\@topnum\z@
                    \@afterindentfalse
                    \secdef\@chapter\@schapter}
\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
                       \if@mainmatter
                         \refstepcounter{chapter}%
                         \typeout{\@chapapp\space\thechapter.}%
                         \addcontentsline{toc}{chapter}%
                                   {\protect\numberline{\thechapter}\MakeUppercase{#1}}%
                       \else
                         \addcontentsline{toc}{chapter}{\MakeUppercase{#1}}%
                       \fi
                    \else
                      \addcontentsline{toc}{chapter}{\MakeUppercase{#1}}%
                    \fi
                    \chaptermark{#1}%
                    \addtocontents{lof}{\protect\addvspace{10\p@}}%
                    \addtocontents{lot}{\protect\addvspace{10\p@}}%
                    \if@twocolumn
                      \@topnewpage[\@makechapterhead{\MakeUppercase{#2}}]%
                    \else
                      \@makechapterhead{\MakeUppercase{#2}}%
                      \@afterheading
                    \fi}


%\renewcommand\listoffigures{
%\btypeout{List of Figures}
%\addtotoc{List of Figures}
%\begin{spacing}{1}{
%   \setlength{\parskip}{1pt}
%    \if@twocolumn
%      \@restonecoltrue\onecolumn
%    \else
%      \@restonecolfalse
%    \fi
%    \chapter*{\listfigurename
%      \@mkboth{\MakeUppercase\listfigurename}
%              {\MakeUppercase\listfigurename}}
%    \@starttoc{lof}
%    \if@restonecol\twocolumn\fi
%    \cleardoublepage
%}\end{spacing}
%}

\renewcommand\listoffigures{%
\btypeout{\listfigurename}
\addtotoc{\listfigurename}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename}%
      \@mkboth{\MakeUppercase\listfigurename}%
              {\MakeUppercase\listfigurename}%
    \@starttoc{lof}%
    \if@restonecol\twocolumn\fi
}


\renewcommand\listoftables{%
\btypeout{\listtablename}
\addtotoc{\listtablename}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename}%
      \@mkboth{%
          \MakeUppercase\listtablename}%
         {\MakeUppercase\listtablename}%
    \@starttoc{lot}%
    \if@restonecol\twocolumn\fi
    }


\makeatother







\newcounter{dummy}
\newcommand\addtotoc[1]{
\refstepcounter{dummy}
\addcontentsline{toc}{chapter}{#1}}

\newcommand\bhrule{\typeout{------------------------------------------------------------------------------}}


\newcommand\btypeout[1]{\bhrule\typeout{\space #1}\bhrule}


\newcommand{\agradecimientos}[1]{
\btypeout{Agradecimientos}
\addtotoc{Agradecimientos}
\thispagestyle{plain}
\begin{center}{\huge{\textit{Agradecimientos}} \par}\end{center}
{\normalsize #1}
\vfil\vfil\null
}


\newcommand{\resumen}[1]{
\btypeout{Resumen}
\addtotoc{Resumen}
\thispagestyle{plain}
\begin{center}{\huge{\textit{Resumen}} \par}\end{center}
{\normalsize #1}
\vfil\vfil\null
}







