
% -- --------------------------------------------------------------------------------------------------- -- %
% -- posteR-knitR: Templates for LaTeX (Beamer) and R Programming (knitR) for research posters           -- %
% -- --------------------------------------------------------------------------------------------------- -- %
% -- Description: Beamer poster LaTeX format and knitR R package bindings for research posters           -- %
% -- poster-theme.rnw: File with LaTeX and R codes                                                       -- %
% -- Author: IFFranciscoME - if.francisco.me@gmail.com                                                   -- %
% -- license: MIT License                                                                                -- %
% -- Repository: https://github.com/IFFranciscoME/posteR-knitR                                           -- %
% -- --------------------------------------------------------------------------------------------------- -- %

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{postertheme}

\DeclareOption{english}{\def\postertheme@lang{english}}

\DeclareOption{portrait} {
  \PassOptionsToPackage{orientation = portrait}{beamerposter}
  \def\postertheme@orientation{}}

\DeclareOption{landscape} {
  \PassOptionsToPackage{orientation = landscape}{beamerposter}
  \def\postertheme@orientation{landscape}}

\DeclareOption{a0paper}{\def\postertheme@size{a0paper}}
\DeclareOption{a4paper}{\def\postertheme@size{a4paper}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}

\ExecuteOptions{a4paper}
\ExecuteOptions{english}
\ExecuteOptions{portrait}
\ProcessOptions
\relax

\LoadClass[t]{beamer}

\RequirePackage[size = a0, scale = 1.5]{beamerposter}
\RequirePackage{etoolbox}
\RequirePackage{pgfpages}
\RequirePackage[utf8]{inputenx}
\RequirePackage[T1]{fontenc}
\RequirePackage{calc}
\RequirePackage[final]{microtype}
\RequirePackage{lmodern}
\RequirePackage[scaled]{beramono}

\hypersetup{colorlinks,
            urlcolor  = themelink,
            linkcolor =,
            citecolor =,
            filecolor =}

\renewcommand{\sfdefault}{phv}
\usefonttheme{serif}
\useinnertheme{rectangles}

\setbeamertemplate{navigation symbols}{}
\setbeamertemplate{caption}[numbered]
\setbeamertemplate{caption label separator}{: }
\setbeamertemplate{qed symbol}{\(\circ\)}
\setbeamertemplate{itemize items}{\color{itemize item.fg}\(\circ\)}

\setlength{\labelsep}{3ex}
\setlength{\leftmargini}{18ex}
\setbeamersize{text margin left = 2cm, text margin right = 2cm}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% \definecolor{themered}{cmyk}{0, 1, 1, 0}
% \definecolor{themewhite}{cmyk}{0, 0, 0, 0}
% \definecolor{themeblack}{cmyk}{0, 0, 0, 1}
% \definecolor{themeheader}{cmyk}{0, 0, 0, 0.6}
% \definecolor{themebackground}{cmyk}{0, 0, 0, 0.2}
% \definecolor{themelink}{HTML}{0B5A9D}

% Paleta 1: Fuente 1
\definecolor{1_themeblue1}{HTML}{21C6FF}
\definecolor{1_themeblue2}{HTML}{00A3FF}
\definecolor{1_themeblue3}{HTML}{0059A9}
\definecolor{1_themeblue4}{HTML}{00305D}

\definecolor{1_themegreen1}{HTML}{00E9DA}
\definecolor{1_themegreen2}{HTML}{62F3B3}
\definecolor{1_themegreen3}{HTML}{00B472}

\definecolor{1_themered1}{HTML}{FF6A7A}
\definecolor{1_themered2}{HTML}{FF653C}

\definecolor{1_themeyellow1}{HTML}{F9F871}
\definecolor{1_themeyellow2}{HTML}{E7E761}

\definecolor{1_themegrey1}{HTML}{D9E2E8}
\definecolor{1_themegrey2}{HTML}{A8B0B6}
\definecolor{1_themegrey3}{HTML}{798187}
\definecolor{1_themegrey4}{HTML}{4E555A}

\definecolor{1_themebluegrey1}{HTML}{C5DAE8}
\definecolor{1_themebluegrey2}{HTML}{99AEBB}
\definecolor{1_themebluegrey3}{HTML}{364954}

\definecolor{1_themewhite1}{HTML}{FFFFFF}
\definecolor{1_themewhite2}{HTML}{F7F7F7}

\definecolor{1_themeback}{RGB}{29, 2, 2}
\definecolor{1_themewhite}{HTML}{F2F2F0}
\definecolor{1_themedark}{HTML}{364954}
\definecolor{1_themedark1}{HTML}{99AEBB}
\definecolor{1_themeblue}{HTML}{00A3FF}
\definecolor{1_themeblue2}{HTML}{0059A9}
\definecolor{1_themegreen}{HTML}{62F3B3}
\definecolor{1_themeyellow}{RGB}{254, 238, 33}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% -- Encabezado
\setbeamercolor{headline}{fg = 1_themewhite2, bg = 1_themeblue2}
\setbeamercolor{title in headline}{fg = 1_themewhite2}
\setbeamercolor{author in headline}{fg = 1_themewhite2}

\setbeamercolor{background canvas}{fg = 1_themewhite1, bg = 1_themewhite1}
\setbeamercolor{footline}{fg = 1_themewhite, bg = 1_themeblue3}

\setbeamercolor{structure}{fg = 1_themeblue}
\setbeamercolor{alerted text}{fg = 1_themewhite}

\setbeamercolor{block title}{fg = 1_themewhite, bg = 1_themegrey3}
\setbeamercolor{block body} {fg = 1_themegrey4, bg = 1_themewhite1}

\setbeamercolor{block title highlighted}{fg = 1_themewhite, bg = 1_themewhite}
\setbeamercolor{block body highlighted} {fg = 1_themegrey4, bg = 1_themewhite}

\setbeamercolor{block title alerted}{fg = 1_themewhite, bg = 1_themewhite}
\setbeamercolor{block body alerted} {fg = 1_themegrey4, bg = 1_themewhite}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setbeamerfont{title in headline}{family = \sffamily,
                                  series = \bfseries,
                                  size   = \LARGE}
                                  
\setbeamerfont{author in headline}{family = \sffamily,
                                   series = \bfseries,
                                   size   = \large}
                                   
\setbeamerfont{institute}{family = \sffamily,
                          series = \mdseries,
                          size   = \small}

\setbeamerfont{block title}{family = \sffamily,
                            series = \bfseries,
                            size   = \small}
                            
\setbeamerfont{block title alerted}{family = \sffamily,
                                    series = \bfseries,
                                    size   = \large}
                                    
\setbeamerfont{block title highlighted}{family = \sffamily,
                                        series = \bfseries,
                                        size   = \large}

\setbeamerfont{block body}{family = \rmfamily,
                           series = \small,
                           size   = \small}
                           
\setbeamerfont{block body highlighted}{family = \rmfamily,
                                   series = \normalfont,
                                   size   = \normalsize}
                                   
\setbeamerfont{block body alerted}{family = \rmfamily,
                                   series = \normalfont,
                                   size   = \normalsize}

\setbeamerfont{item projected}{family = \sffamily,
                               series = \bfseries,
                               size   = \small}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setbeamertemplate{headline}
{
    \begin{beamercolorbox}[wd = \paperwidth, leftskip  = 3cm,
                           rightskip = 3cm plus 20cm]{headline}
        \vskip.5cm
        \usebeamerfont{title in headline}
        \usebeamercolor{title in headline}
        \color{fg}
        \vskip1.5ex
        \inserttitle
        \vskip1.75ex
        \usebeamerfont{author in headline}
        \usebeamercolor{author in headline}
        \color{fg}
        \insertauthor
        \ifdefempty{\insertinstitute}{}
        { \vskip1ex
          \usebeamerfont{institute}
          \def\beamer@andinst{\quad}
          \insertinstitute
        }
        \vskip1cm
    \end{beamercolorbox}
    \vskip1cm
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setbeamertemplate{footline}
{
    \leavevmode
    \begin{beamercolorbox}[wd = \paperwidth]{footline}
        \vskip.5cm
        \hskip1.5cm
        \vskip.5cm
    \end{beamercolorbox}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setbeamertemplate{block begin}
{
  \setbeamercolor{itemize item}  {fg = block title.bg}
  \setbeamercolor{item projected}{fg = block title.fg, bg = block title.bg}
  \setbeamercolor{description item}{fg = structure}

  \begin{beamercolorbox}[ht = 2.4 ex, dp = 1 ex,
                         leftskip = 2 ex, rightskip = 2 ex]{block title}

        \usebeamerfont*{block title}
        \insertblocktitle
        
    \end{beamercolorbox}

    \nointerlineskip

    \begin{beamercolorbox}[dp        = 2 ex,
                           leftskip  = 1 ex,
                           rightskip = 1 ex,
                           vmode]
                          {block body}

        \usebeamerfont{block body}
        \vskip1ex
        \begin{minipage}{\textwidth-2ex}
             \setlength{\parskip}{1.5ex}
             \setlength{\abovecaptionskip}{.1ex}
}


\setbeamertemplate{block end}
{
  \end{minipage}
  \vskip0.2ex
  \end{beamercolorbox}
  \vskip3cm
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setbeamertemplate{block highlighted begin}
{
    \setbeamercolor{itemize item}  {fg = block title highlighted.bg}
    \setbeamercolor{item projected}{fg = block title highlighted.fg,
                                    bg = block title highlighted.bg}
    \setbeamercolor{description item}{fg = structure}

    \begin{beamercolorbox}[ht        = 3.2 ex,
                           dp        = 1.3 ex,
                           leftskip  = 2 ex,
                           rightskip = 2 ex]
                          {block title highlighted}

        \usebeamerfont*{block title highlighted}
        \insertblocktitle

    \end{beamercolorbox}

    \nointerlineskip

    \begin{beamercolorbox}[dp        = 2 ex,
                           leftskip  = 2 ex,
                           rightskip = 2 ex,
                           vmode]
                          {block body highlighted}

        \usebeamerfont{block highlighted body}
        \vskip2ex
        \begin{minipage}{\textwidth-4ex}
             \setlength{\parskip}{1.5ex}
             \setlength{\abovecaptionskip}{1ex}
}


\setbeamertemplate{block highlighted end}
{
        \end{minipage}
    \vskip0.2ex
    \end{beamercolorbox}
    \vskip3cm
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setbeamertemplate{block alerted begin}
{
    \setbeamercolor{itemize item}  {fg = block title alerted.bg}
    \setbeamercolor{item projected}{fg = block title alerted.fg,
                                    bg = block title alerted.bg}
    \setbeamercolor{description item}{fg = structure}

    \begin{beamercolorbox}[ht        = 3.2 ex,
                           dp        = 1.3 ex,
                           leftskip  = 2 ex,
                           rightskip = 2 ex]
                          {block title alerted}

        \usebeamerfont*{block title alerted}
        \insertblocktitle

    \end{beamercolorbox}

    \nointerlineskip

    \begin{beamercolorbox}[dp        = 2 ex,
                           leftskip  = 2 ex,
                           rightskip = 2 ex,
                           vmode]
                          {block body alerted}

        \usebeamerfont{block body alerted}
        \vskip2ex
        \begin{minipage}{\textwidth-4ex}
             \setlength{\parskip}{1.5ex}
             \setlength{\abovecaptionskip}{1ex}
}


\setbeamertemplate{block alerted end}
{
        \end{minipage}
    \vskip0.2ex
    \end{beamercolorbox}
    \vskip3cm
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\enumitem}[1]
{
    \leavevmode\unskip
    \hbox
    {%
        \usebeamerfont*{item projected}%
        \usebeamercolor[bg]{item projected}%
        \vrule width2.25ex height1.85ex depth.4ex%
        \hskip-2.25ex%
        \hbox to2.25ex
        {%
            \hfil%
            \color{fg}#1%
            \hfil
        }%
    }%
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\pgfpagesdeclarelayout{resize and center}
{
    \def\pgfpageoptionborder{0pt}
}
{
    \pgfpagesphysicalpageoptions
    {
        logical pages   = 1,
        physical height = \pgfpageoptionheight,
        physical width  = \pgfpageoptionwidth
    }
    \pgfpageslogicalpageoptions{1}
    {
        resized width  = \pgfphysicalwidth,
        resized height = \pgfphysicalheight,
        border shrink  = \pgfpageoptionborder,
        center         = \pgfpoint{.5\pgfphysicalwidth}{.5\pgfphysicalheight}
    }
}


\ifdefstring{\postertheme@size}{a4paper}{}
{
    \pgfpagesuselayout{resize and center}[\postertheme@size,
                                          \postertheme@orientation]
}

\endinput