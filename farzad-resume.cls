% Intro Options
\ProvidesClass{farzad-resume}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=0.7cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage{hyperref}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{babel}
\usepackage[UKenglish]{isodate}
\usepackage{fontspec,xltxtra,xunicode}

% Color definitions
\definecolor{date}{HTML}{666666}
\definecolor{primary}{HTML}{2b2b2b}
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}
\definecolor{myred}{HTML}{FF0000}

% Set main fonts
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Color=primary, Path = fonts/lato/]{Lato-Lig}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-ExtraLight}
\newcommand{\custombold}[1]{\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Reg}\selectfont #1 \normalfont}
\newcommand{\custombolder}[1]{\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\selectfont #1 \normalfont}
% Date command
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\textblockorigin{0mm}{5mm} % start everyth
\newcommand{\lastupdated}{\begin{textblock}{60}(165,0)
\color{date}\fontspec[Path = fonts/raleway/]{Raleway-ExtraLight}\fontsize{7pt}{9pt}\selectfont
Last Updated on
\today
\end{textblock}}

% Name command-----------------------------------------------
% \newcommand{\namesection}[3]{
% 	\centering{
% 		\sffamily
% 		\fontspec[Path = fonts/lato/]{Lato-Hai}\fontsize{15pt}{5cm}\selectfont #1
% 		\fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont #2
% 	} \\
% 	\vspace{5pt}
% 	\centering{ \color{headings}\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{9pt}{11pt}\selectfont #3}
% 	\noindent\makebox[\linewidth]{\rule{\paperwidth}{0.4pt}}
% 	\vspace{-15pt}
% }
\newcommand{\namesection}[3]{
	\centering{
		\sffamily
		\fontspec[Path = fonts/lato/]{Lato-Hai}\fontsize{15pt}{5cm}\selectfont #1
		\fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont #2
		\color{headings}\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{9pt}{11pt}\selectfont #3
	} \\
	\noindent\makebox[\linewidth]{\rule{\paperwidth}{0.4pt}}
	\vspace{-15pt}
}
% \newcommand{\namesection}[3]{
%     \centering
%     \sffamily
%     \fontspec[Path = fonts/lato/]{Lato-Hai}\fontsize{15pt}{5cm}\selectfont #1
%     \fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont #2
%     \hspace{1em} % Adjusts space between name and additional info
%     \color{headings}\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{9pt}{11pt}\selectfont #3
%     \par % Ensures the text is properly centered
%     \vspace{5pt}
%     \noindent\makebox[\linewidth]{\rule{\paperwidth}{0.4pt}}
%     \vspace{-15pt}
% }
\titlespacing{\section}{0pt}{0pt}{0pt}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{13pt}{20pt}\selectfont \raggedright\uppercase}{} {0em}{}

% Subeadings command
\titleformat{\subsection}{\color{subheadings}
\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{9pt}{9pt}\selectfont\bfseries\uppercase}{}{0em}{}
\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}
\titlespacing{\subsubsection}{0pt}{\parskip}{-\parskip}
\newcommand{\runsubsection}[1]{\color{subheadings}
\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{9pt}{9pt}\selectfont\bfseries\uppercase {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{8pt}{10pt}\selectfont {#1 \\} \normalfont}

% Location command
\newcommand{\location}[1]{\color{headings}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{7pt}{9pt}\selectfont {#1\\} \normalfont}

% Section seperators command
\newcommand{\sectionsep}[0]{\vspace{8pt}}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}{\end{itemize}\vspace{-\topsep}}

\newenvironment{skillsection}{%
    \vspace{\parsep} % Add some space before the skills section
    \noindent\hspace*{\leftmargini} % Match tightemize left margin
    \begin{minipage}{\dimexpr\textwidth-\leftmargini\relax}
	\fontsize{8}{10.4}\selectfont
}{
    \end{minipage}
    \par\vspace{\parsep} % Add some space after the skills section
}
