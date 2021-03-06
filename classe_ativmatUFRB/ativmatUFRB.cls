%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ativmatUFRB.cls, v1.61                                                    %%
%% Copyright 2020 Ícaro Vidal Freire                                         %%
%%---------------------------------------------------------------------------%%
%% Este trabalho está licenciado com a                                       %%
%%                           The MIT License                                 %%
%%---------------------------------------------------------------------------%%
%% Permissões ======   Limitações ==========   Condições ====================%%
%%  * Uso comercial; &  * Responsabilidade   &  * Licença e aviso de         %%
%%  * Modificações;  &  * Garantia           &     direitos autorais         %%
%%  * Distribuição;  &                       &                               %%
%%  * Uso privado.   &                       &                               %%
%%---------------------------------------------------------------------------%%
%%                              A Licença MIT                                %%
%%                   (https://opensource.org/licenses/MIT)                   %%
%%---------------------------------------------------------------------------%%
%% A permissão é concedida, gratuitamente, a qualquer pessoa que obtenha uma %%
%% cópia deste software e arquivos de documentação associados (o "Software"),%% 
%% para lidar com o Software sem restrição, incluindo, sem limitação, os     %%
%% direitos de usar, copiar, modificar, mesclar , publicar, distribuir,      %%
%% sublicenciar e / ou vender cópias do Software, e permitir que as pessoas  %%
%% a quem o Software é fornecido o façam, sujeito às seguintes condições:    %%
%%           * O aviso de direitos autorais acima e este aviso de permissão  %%
%%             devem ser incluídos em todas as cópias ou partes substanciais %%
%%             do Software.                                                  %%
%%---------------------------------------------------------------------------%%
%%           - O SOFTWARE É FORNECIDO "NO ESTADO EM QUE SE ENCONTRA", SEM    %%
%%             QUALQUER TIPO DE GARANTIA, EXPRESSA OU IMPLÍCITA, INCLUINDO   %%
%%             MAS NÃO SE LIMITANDO ÀS GARANTIAS DE COMERCIALIZAÇÃO,         %%
%%             ADEQUAÇÃO A UM DETERMINADO FIM E NÃO VIOLAÇÃO.                %%
%%           - EM NENHUMA HIPÓTESE OS AUTORES OU TITULARES DOS DIREITOS      %%
%%             AUTORAIS SERÃO RESPONSÁVEIS POR QUALQUER RECLAMAÇÃO, DANOS OU %%
%%             OUTRA RESPONSABILIDADE, SEJA EM UMA AÇÃO DE CONTRATO, DELITO  %%
%%             OU DE OUTRA FORMA, DECORRENTE DE, FORA DE OU EM CONEXÃO COM O %%
%%             SOFTWARE OU O USO OU OUTRAS NEGOCIAÇÕES NO PROGRAMAS.         %%
%%---------------------------------------------------------------------------%%
%% Essa classe consiste no arquivo 'ativmatUFRB.cls' que é derivado da       %%
%% classe padrão 'article.cls'. Diz respeito a uma classe para confecção de  %%
%% lista de atividade, extra-oficial, da UFRB, com cabeçalho estilizado,     %%
%% para o curso de Licenciatura ou Bacharelado em Matemática.                %%
%%---------------------------------------------------------------------------%%
%% Para atualizações, acesse:                                                %%
%%             https://github.com/icaro-freire/ativmatUFRB                   %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%==============================================================================
% Identificações Internas
%==============================================================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ativmatUFRB}[2020/11/10 v1.61
'Modelo de Lista de Atividade para Licenciatura em Matematica do CFP/UFRB']
\DeclareOption*{\PassOptionsToCLass{\CurrentOptions}{article}}
 \ProcessOptions\relax
 \LoadClass{article}%
%==============================================================================

%==============================================================================
% Pacotes da Classe
%==============================================================================
\RequirePackage{ifluatex, ifxetex}
 \ifluatex
  \RequirePackage{fontspec}
   \newfontfamily{\intimacy}[Path = fonts/intimacy/]{intimacy}
   \RequirePackage{polyglossia}
    \setdefaultlanguage[variant = brazilian]{portuguese} 
 \else
  \ifxetex
   \RequirePackage{fontspec}
    \newfontfamily{\intimacy}[Path = fonts/intimacy/]{intimacy}			 
   \RequirePackage{polyglossia}
    \setdefaultlanguage[variant = brazilian]{portuguese} 
  \else
   \RequirePackage[T1]{fontenc}
   \RequirePackage{emerald}
   \RequirePackage{lmodern}
   \RequirePackage[brazilian]{babel}
  \fi
 \fi

\RequirePackage[explicit]{titlesec}
\RequirePackage
[
 a4paper,
 top    =1cm,
 bottom =1.5cm,
 outer  =1.5cm,
 inner  =1.5cm
]{geometry}
\RequirePackage{lipsum}
\RequirePackage{amsmath, amsthm, amssymb, amscd}
\RequirePackage{mathtools}
\RequirePackage{esint}
\RequirePackage{systeme}
\RequirePackage{array}
 \setcounter{MaxMatrixCols}{20}
\RequirePackage{esvect}
\RequirePackage{graphicx}
 \graphicspath{{./figs/}}
\RequirePackage[table]{xcolor}
\RequirePackage{enumerate}
\RequirePackage{fancybox}
\RequirePackage{setspace}
\RequirePackage{booktabs}
\RequirePackage{multicol}
\RequirePackage[labelfont = bf, font = small]{caption}
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
  pdfsubject  = {Lista de Atividade},
  pdfkeywords = {Lista de Atividade, LaTeX, Modelo de Lista de Atividade, Matemática, Física, Química}
 }
 \RequirePackage{units}
%==============================================================================

%==============================================================================
% Definições Internas
%==============================================================================
\def\tituloDaLista#1{\gdef\@tituloDaLista{#1}}
\def\curso#1{\gdef\@curso{#1}}
\def\semestre#1{\gdef\@semestre{#1}}
\def\disciplina#1{\gdef\@disciplina{#1}}
\def\prof#1{\gdef\@prof{#1}}
\def\numeroDaLista#1{\gdef\@numeroDaLista{#1}}
%
\def\usandoXeLuaLaTeX{\gdef\@compXLp{\intimacy}}
\def\usandopdfLaTeX{\gdef\@compXLp{\ECFIntimacy}}
\def\@compXLp{\@latex@warning@no@line{Compilador inadequado \\% 
Use \textbackslash\/pdfLaTeX ou \textbackslash\/ XeLaTeX ou \textbackslash\/LuaTeX}\stop}
%==============================================================================

%==============================================================================
% Cabeçalho
%==============================================================================
\newcommand{\titulo}
{
  \noindent
  \begin{minipage}[t][2.5cm]{1\textwidth}
   \begin{minipage}{0.26\linewidth}
    \centering
    {
     \includegraphics[width = 3.5cm]{ufrb}
    }
   \end{minipage}\hfill
   \begin{minipage}{0.74\linewidth}
    \ovalbox
    {
     \begin{minipage}{0.99\linewidth}
      $ \blacktriangleright $
      \hspace{\stretch{1}}
      \textbf 
      {
       \@tituloDaLista \phantom{/} % --------------------------> Título da Lista
      }
      \hspace{\stretch{1}}
      $ \blacktriangleleft $ 
     \end{minipage}
    } \\
    \par\vspace{-0.1cm}
    \ovalbox
    {
     \begin{minipage}{0.99\linewidth}
      \textbf{Professor: } \@prof % --------------------------------> Professor
      \hfill 
      \textbf{Disciplina:} \@disciplina %--------------------------> Disciplina
      \phantom{/}
     \end{minipage}
    }
    \par\vspace{.1cm}
    \ovalbox
    {
     \begin{minipage}{0.99\linewidth}
      \textbf{Curso:} \@curso %-----------------------------------------> Curso 
      \hfill 
      {\@semestre}º semestre %---------------------------------------> Semestre
      \phantom{/}
     \end{minipage}
    }
   \end{minipage}
   \vfill
   \ovalbox
   {
    \begin{minipage}{0.995\linewidth}
     \textbf{Aluno (a):}\quad \hfill \textbf{Data:}\qquad/\qquad/\qquad \, 
    \end{minipage}
   }
  \end{minipage}
  \par
  \vspace{0.5cm}
  \begin{center}
   \begin{minipage}{\textwidth}
    \centering
    \rule[2ex]{7cm}{0.8pt}\\%
     {\Large \@compXLp Lista de Atividade \@numeroDaLista}\\ %---> nº da lista
    \rule{7cm}{2pt}\\
    \vspace{-0.35cm}
    \rule{7cm}{0.8pt} 
   \end{minipage}
  \end{center}
  \vspace{-0.2cm}
}
%==============================================================================

%==============================================================================
% Modificação na Seção da classe ``article''
%==============================================================================
\titleformat{\section}
{\normalfont\Large\bfseries}{}{0em}{\colorbox{lightgray!70}{\parbox{\dimexpr\textwidth-2\fboxsep\relax}{\textcolor{black}{\thesection\quad#1}}}}
\titleformat{name=\section,numberless}
{\normalfont\Large\bfseries}{}{0em}{\colorbox{lightgray!70}{\parbox{\dimexpr\textwidth-2\fboxsep\relax}{\textcolor{black}{#1}}}}
%==============================================================================

%==============================================================================
% Criando comandos para tópicos, subtópicos e subsubtópicos da Atividade
%==============================================================================
\newcommand{\topico}[1]
{
  \setlength\parindent{0pt}
  \section{#1}
}

\newcommand{\subtopico}[1]
{
  \setlength\parindent{0pt}
  \subsection{#1}
}

\newcommand{\subsubtopico}[1]
{
  \setlength\parindent{0pt}
  \subsubsection{#1}
}
%==============================================================================

%==============================================================================
% Ambiente para ``Questões''
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
%==============================================================================

%==============================================================================
% Ambiente para ``itens'' 
%==============================================================================
\newenvironment{itens}
{%
  \begin{enumerate}
}
{
  \end{enumerate}
}
%==============================================================================

%==============================================================================
% Operadores
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
\newcommand{\vazio}{\varnothing} %----------------------------------------------> Símbolo do Vazio
\newcommand{\dd}{\,\mathrm{d}} %------------------------------------------------> texto romano para o ``d'' das derivadas 
\newcommand{\intc}{\varointctrclockwise} %--------------------------------------> Integral para curva fechada do sentido anti-horário
\newcommand{\Resp}[1]{\hfill {\footnotesize\textbf{Resp.}:\;\,#1}} %------------> Coloca ``Resposta'' no final de cada item.
\newcommand{\versor}[1]{\cdot\vec{\textbf{#1}}} %-------------------------------> vetor em negrito
\newcommand{\vf}{(\quad)} %-----------------------------------------------------> espaço para `V` ou `F`
\newcommand{\alterdce}[5] %-----------------------------------------------------> Alternativas em duas colunas
{
  \begin{enumerate} 
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
\newcommand{\altercols}[6] %----------------------------------------------------> alternativas em colunas: nº de colounas + 5 itens.
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


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% História da Classe
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% 20/03/2020 ---> * Acrescentado informações sobre o ambiente itens;
%                 * Criado o comando \vf.
%
% 10/11/2020 ---> * Retirado o `twoside` e `a4paper` do `\LoadClass{}`;
%                 * Acrescentado os pacotes `ifluatex` e `ifxetex` para que os
%                   principais compiladores possam ser usados. Porém, se for 
%                   usado o pdfLaTeX deve ser ativado o comando `\ECFIntimacy`
%                   em lugar oportuno;
%                 * Retirado o pacote `inputenc`;
%                 * Retirado o pacote `emerald`;
%                 * Retirado o pacote `amsfonts`, incluso no pacote `amssymb`;
%                 * Acrescentado o pacote `polyglossia`;
%                 * Descoberto um conflito entre o `systeme` e o LuaLaTex;
%                 * Trocado o nome `Figuras` por `figs`;
%                 * Tirado `\large` do ``Título da Lista'';
%                 * Colocado no lugar de `\rule{0pt}{9pt}`, o comando 
%                   `\phantom{/}`. Para harmonizar a largura das caixas do 
%                   cabeçalho;
%                 * Acrescentado o pacote `units`;
%
% 11/11/2020 ---> * Percebi que não há conflito entre o pacote `systeme` e o
%                   compilador LuaLaTeX (era apenas uma questão de atualização 
%                   do MiKTeX);
%
% 16/11/2020 ---> * Incluí um comando para sanar o problema da fonte do 
%                   cabeçalho quando muda-se o compilador. Agora, não precisa
%                   alterar comandos no arquivo `.cls`. Os comandos são:
%                   `\usandoXeLuaLaTeX` ou `\usandopdfLaTeX`
%
%
%
%
%
%
%
%
%
%
%
%