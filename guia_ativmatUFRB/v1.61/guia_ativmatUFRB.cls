%==============================================================================
% Identificações Internas
%==============================================================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{guia_ativmatUFRB}[2020/11/12 v1.61
'Classe para Producao do Guia de Usuario ativmatUFRB']
\DeclareOption*{\PassOptionsToCLass{\CurrentOptions}{article}}
\ProcessOptions\relax
\LoadClass{article}
%==============================================================================

%==============================================================================
% Pacotes da Classe
%==============================================================================
\RequirePackage[T1]{fontenc}
\RequirePackage{emerald}
\RequirePackage{lmodern}
\RequirePackage[brazilian]{babel}
\RequirePackage{lipsum}
\RequirePackage{verbatim}
\RequirePackage{amsmath, amsthm, amssymb, amscd}
\RequirePackage{mathtools}
\RequirePackage{esint}
\RequirePackage{systeme}
\RequirePackage{array}
 \setcounter{MaxMatrixCols}{20}
\RequirePackage{esvect}
\RequirePackage{units}
\RequirePackage[table]{xcolor}
\RequirePackage{tikz}
\RequirePackage[most, listings]{tcolorbox}
 \newtcolorbox{citacao}
 {
  enhanced,
  boxrule=0pt,
  frame hidden,
  borderline west={3pt}{0pt}{red!95!black},
  colback=gray!5!white,
  sharp corners
 }
\RequirePackage{enumerate}
\RequirePackage{fancybox}
\RequirePackage{fancyhdr}
  \pagestyle{fancy}
  \lhead{Guia do Usuário v\@versao} %--------------------------------> `\versao`
  \chead{}
  \rhead{\rightmark}
\RequirePackage{booktabs}
\RequirePackage{multicol}
\RequirePackage{setspace}
\RequirePackage{units}
\RequirePackage{comment}
\RequirePackage[labelfont = bf, font = small]{caption}
\RequirePackage{graphicx}
  \graphicspath{{./figs/}}
\RequirePackage{qrcode}
%
\RequirePackage[edges]{forest}
 \definecolor{folderbg}{RGB}{124,166,198}
 \definecolor{folderborder}{RGB}{110,144,169}
 \newlength\Size
 \setlength\Size{4pt}
 \tikzset
  {%
    folder/.pic=
    {%
     \filldraw [draw=folderborder, top color=folderbg!50, bottom color=folderbg]
      (-1.05*\Size,0.2\Size+5pt) rectangle ++(.75*\Size,-0.2\Size-5pt);
     \filldraw [draw=folderborder, top color=folderbg!50, bottom color=folderbg]
      (-1.15*\Size,-\Size) rectangle (1.15*\Size,\Size);
    },
    file/.pic=
    {%
     \filldraw [draw=folderborder, top color=folderbg!5, bottom color=folderbg!10]
      (-\Size,.4*\Size+5pt) coordinate (a) 
      |- (\Size,-1.2*\Size) coordinate (b)
      -- ++(0,1.6*\Size) coordinate (c) 
      -- ++(-5pt,5pt) coordinate (d) 
      -- cycle (d) |- (c) ;
    },
  }
 \forestset{%
   declare autowrapped toks={pic me}{},
   declare boolean register={pic root},
   pic root=0,
   pic dir tree/.style={%
     for tree={%
       folder,
       font=\ttfamily,
       grow'=0,
     },
     before typesetting nodes={%
       for tree={%
         edge label+/.option={pic me},
       },
       if pic root={
         tikz+={
           \pic at ([xshift=\Size].west) {folder};
         },
         align={l}
       }{},
     },
   },
   pic me set/.code n args=2{%
     \forestset{%
       #1/.style={%
         inner xsep=2\Size,
         pic me={pic {#2}},
       }
     }
   },
   pic me set={directory}{folder},
   pic me set={file}{file},
 }
%
\RequirePackage{hyperref}
 \hypersetup
 {
  colorlinks  = true,
  linkcolor   = blue,
  citecolor   = blue,
  filecolor   = blue,
  urlcolor    = blue,
  pdfproducer = {XeLaTeX},
  pdfcreator  = {LaTeX},
  pdfauthor   = {Ícaro Vidal Freire (autor da classe ativmatUFRB.cls)},
  pdfsubject  = {guia da classe ativmatUFRB},
  pdfkeywords = {Lista de Atividade, LaTeX, Modelo de Lista de Atividade,
                 Matemática, Física, Química}
 }
%==============================================================================

%==============================================================================
% Definições Internas
%==============================================================================
\def\versao#1{\gdef\@versao{#1}}
\def\data#1{\gdef\@data{#1}}
\def\titulacao#1{\gdef\@titulacao{#1}}
%==============================================================================

%==============================================================================
% Título 
%==============================================================================
\title
{
 \textbf
 {
  Guia do Usuário
 }\\
 \Large \hspace{.5em}\{\,\texttt{\textcolor{red}{\textbf{ativmatUFRB.cls}}}\,\}
}

\author
{
 Ícaro Vidal Freire
 \thanks
 {
  Professor \@titulacao\ da Área de Matemática do Centro de Formação de 
  Professores (CFP) da Universidade Federal do Recôncavo da Bahia (UFRB).
  \newline 
  \emph{e-mail}: 
  \href{mailto:icarofreire@ufrb.edu.br}{icarofreire@ufrb.edu.br}
 }
}

\date
{
 \normalsize{\texttt{Versão~\@versao}}\\ \small{\texttt{\@data}}
}
%==============================================================================

%==============================================================================
% Operadores Matemáticos
%==============================================================================
\DeclareMathOperator{\sen}{sen}
\DeclareMathOperator{\tg}{tg}
\DeclareMathOperator{\cossec}{cossec}
\DeclareMathOperator{\cotg}{cotg}
\DeclareMathOperator{\arcsen}{arcsen}
\DeclareMathOperator{\arctg}{arctg}
\DeclareMathOperator{\arcsec}{arcsec}
\DeclareMathOperator{\Ln}{Ln}
\DeclareMathOperator{\Arg}{Arg}
\DeclareMathOperator{\cis}{cis}
%==============================================================================

%==============================================================================
% Simbolos e Atalhos Úteis
%==============================================================================
\newcommand{\vf}{(\quad)}
\newcommand{\vazio}{\varnothing} %----------------------------------------------> Símbolo do Vazio
\newcommand{\dd}{\mathrm{d}} %--------------------------------------------------> Texto romano para o ``d'' das derivadas 
\newcommand{\intc}{\varointctrclockwise} %--------------------------------------> Integral para curva fechada do sentido anti-horário
\newcommand{\Resp}[1]{\hfill {\footnotesize\textbf{Resp.}:\;\,#1}} %------------> Coloca ``Resposta'' no final de cada item.
\newcommand{\versor}[1]{\cdot\vec{\textbf{#1}}} %-------------------------------> Vetor em negrito
\newcommand{\alterdce}[5]
{
 \begin{enumerate} %------------------------------------------------------------> Alternativas em duas colunas
  \begin{minipage}{0.45\linewidth}
   \item #1
   \item #2
   \item #3
  \end{minipage}
  \hfill
  \begin{minipage}{0.45\linewidth}
   \item #4
   \item #5
  \end{minipage}
 \end{enumerate}
}
\newcommand{\altercols}[6] %--------------------------------------> alternativas em colunas (quantas quiser): nº de colounas + 5 itens.
{
 \begin{multicols}{#1}
  \begin{enumerate}
   \item{#2}
   \item{#3}
   \item{#4}
   \item{#5}
   \item{#6}
  \end{enumerate}
 \end{multicols}
}
%==============================================================================

%==============================================================================
% Ambiente para `Questões` e `itens`
%==============================================================================
\newenvironment{atividade}[1]
{
  \noindent
  \newcounter{quest}
  \begin{list}{\ovalbox{\textbf{Questão \arabic{quest}.}}}
  {
   \usecounter{quest}
   \setlength{\labelwidth}{-2mm} 
   \setlength{\parsep}{0mm}
   \setlength{\topsep}{0mm} 
   \setlength{\leftmargin}{0mm}
  }
  \renewcommand{\labelenumi}{(\alph{enumi})}
  \newcommand{\questao}{\item}
  \onehalfspacing
  #1
}
{
  \end{list}
}
	
\newenvironment{itens}
{
  \begin{enumerate}
}
{
  \end{enumerate}
}
%==============================================================================

%==============================================================================
% Caixa estilizada
%==============================================================================
\newtcolorbox{codbox}[1]
{
  title     = #1,
  fonttitle = \bfseries,
  box align = top,
  colback   = white,
  colframe  = gray!90,
  breakable
}
%==============================================================================
