\ProvidesClass{cover-letter}
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{letter}
}
\ProcessOptions\relax
\LoadClass{letter}

\usepackage[UKenglish]{isodate}

\usepackage{geometry}
\geometry{a4paper,top=2cm,left=2cm,right=2cm}

% Color definitions
\usepackage[usenames,dvipsnames]{xcolor}
\definecolor{date}{HTML}{666666}
\definecolor{primary}{HTML}{2b2b2b}
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

% Set main fonts
\usepackage{fontspec}
\setmainfont[
    Color=primary,
    Path = fonts/lato/,
    BoldItalicFont=Lato-RegIta,
    BoldFont=Lato-Reg,
    ItalicFont=Lato-LigIta,
    SmallCapsFont=Lato-Reg
]{Lato-Reg}
\setsansfont[
    Scale=MatchLowercase,
    Mapping=tex-text,
    Path = fonts/raleway/
]{Raleway-ExtraLight}


\usepackage{hyperref}
%\usepackage[absolute]{textpos}

%\usepackage{cite}
%\renewcommand\refname{\vskip -1.5cm}

% headers and footers
\RequirePackage{fancyhdr}
\fancypagestyle{plain}{
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
  \fancyhf{}}
\pagestyle{plain}

% Name command
\newcommand*{\namesection}[3]{
	\begin{center}
		\fontsize{20pt}{10pt}
        \fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont #1
        \fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont #2
        \noindent\makebox[\linewidth]{\color{headings}\rule{\textwidth}{0.4pt}}\\
        [5pt]
		\begin{center}
        	\color{headings}
        	\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{5pt}\selectfont #3
        \end{center}
	\end{center}
}

\newcommand{\lpipe}{\rule[-0.4ex]{0.41pt}{2.3ex}}

%\renewcommand\subjectname{RE:}

% Last updated
\usepackage[absolute]{textpos}
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\newcommand{\re}[1]{
    \color{subheadings}
    \fontspec[Path = fonts/raleway/]{Raleway-Medium}
    \fontsize{10pt}{12pt}\selectfont
%    RE: #1
	#1
}

\renewcommand{\opening}[2]{\ifx\@empty\fromaddress
  \thispagestyle{firstpage}%

  \else  % home address
    \thispagestyle{empty}%
    {\raggedleft\begin{tabular}{l@{}}\ignorespaces
      \fromaddress \\*[2\parskip]%
       \end{tabular}\par}%
  \fi
  \vspace{2\parskip}%
  {\raggedright \toname \\ \toaddress \par}%
  {\raggedleft\@date\par}
  {\raggedright\re{#2}\par}
  \vspace{2\parskip}%
  #1\par\nobreak}

\renewcommand{\closing}[1]{\par\nobreak\vspace{\parskip}%
  \stopbreaks
  \noindent
  \ifx\@empty\fromaddress\else
  \hspace*{\longindentation}\fi
  \parbox{\textwidth}{\raggedright
       \ignorespaces #1\\[3\medskipamount]%
       \ifx\@empty\fromsig
           \fromname
       \else \fromsig \fi\strut}%
   \par}

\renewcommand{\encl}[1]{%
  \par\noindent
  \parbox[t]{\textwidth}{%
    \@hangfrom{\normalfont\enclname: }%
     #1\strut}\par}

\usepackage[usenames,dvipsnames]{xcolor}
\definecolor{primary}{HTML}{2b2b2b}
%\definecolor{date}{HTML}{666666}
%\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

\usepackage{fontspec}
\setromanfont[Color=primary, Path = fonts/lato/,BoldItalicFont=Lato-RegIta,BoldFont=Lato-Reg,ItalicFont=Lato-LigIta]{Lato-Lig}
%\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-ExtraLight}

%\usepackage[utf8]{inputenc}
%\usepackage[T1]{fontenc}
