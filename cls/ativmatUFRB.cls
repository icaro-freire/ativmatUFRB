%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ativmatUFRB.cls, v2.2.0                                                   %%
%% Copyright 2021 Ícaro Vidal Freire                                         %%
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
\ProvidesClass{ativmatUFRB}[2022/11/07 v2.2.0
'Modelo de Lista de Atividade para Licenciatura em Matematica do CFP/UFRB']
\DeclareOption*{\PassOptionsToCLass{\CurrentOptions}{article}}
 \ProcessOptions\relax
 \LoadClass{article}%
%==============================================================================

%==============================================================================
% Pacotes da Classe
%==============================================================================
\RequirePackage{euler}
\RequirePackage{fontspec}
  \newfontfamily{\intimacy}{intimacy}
\RequirePackage{libertine}

\RequirePackage[brazil]{babel}

\RequirePackage{mathtools}
\RequirePackage{amsthm, amssymb}
\RequirePackage{systeme}
\RequirePackage{array}
  \setcounter{MaxMatrixCols}{20}
%\RequirePackage{esvect} % pacote com conflito

\RequirePackage
[
  a4paper,
  top    =1cm,
  bottom =1.5cm,
  outer  =1.5cm,
  inner  =1.5cm
]{geometry}

\RequirePackage{graphicx}
  \graphicspath{{./figs/}}

\RequirePackage[table]{xcolor}
  \definecolor{douradoUFRB}{rgb}{0.929411765, 0.603921569, 0.066666667}
  \definecolor{azulUFRB}{rgb}{0.160784314, 0.08627451, 0.435294118}

\RequirePackage{enumerate}
\RequirePackage{fancybox}
\RequirePackage{setspace}
\RequirePackage{tabularray}
\RequirePackage{multicol}
\RequirePackage[labelfont={bf, sf}, font={small, sf}]{caption}
\RequirePackage[sf, bf, explicit]{titlesec}

\RequirePackage
[
  colorlinks  = true, 
  linkcolor   = {blue}, 
  citecolor   = {azulUFRB}, 
  filecolor   = {azulUFRB}, 
  urlcolor    = {douradoUFRB}, 
  pdfproducer = {LaTeX2e}, 
  pdfsubject  = {lista-de-atividade},
  pdfauthor   = {Ícaro-Vidal-Freire---(autor-da-classe-ativmatUFRB.cls)}
]{hyperref}
\RequirePackage{siunitx}
\RequirePackage{microtype}
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
        \sffamily \@tituloDaLista \phantom{/} % --------------------------> Título da Lista
      }
      \hspace{\stretch{1}}
      $ \blacktriangleleft $ 
     \end{minipage}
    } \\
    \par\vspace{-0.1cm}
    \ovalbox
    {
     \begin{minipage}{0.99\linewidth}
       {\sffamily \textbf{Professor: } \@prof} % --------------------------------> Professor
      \hfill 
       {\sffamily \textbf{Disciplina:} \@disciplina} %--------------------------> Disciplina
      \phantom{/}
     \end{minipage}
    }
    \par\vspace{.1cm}
    \ovalbox
    {
     \begin{minipage}{0.99\linewidth}
       {\sffamily \textbf{Curso:} \@curso} %-----------------------------------------> Curso 
      \hfill 
      $ {\@semestre}^{\circ} $ {\sffamily semestre} %---------------------------------------> Semestre
      \phantom{/}
     \end{minipage}
    }
   \end{minipage}
   \vfill
   \ovalbox
   {
    \begin{minipage}{0.995\linewidth}
     {\sffamily \textbf{Aluno (a):}}\quad \hfill {\sffamily \textbf{Data:}}\qquad/\qquad/\qquad \, 
    \end{minipage}
   }
  \end{minipage}
  \par
  \vspace{0.5cm}
  \begin{center}
   \begin{minipage}{\textwidth}
    \centering
    \rule[2ex]{7cm}{0.8pt}\\%
     {\Large \intimacy Lista de Atividade \@numeroDaLista}\\ %---> nº da lista
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
{\normalfont\Large\sffamily\bfseries}{}{0em}{\colorbox{lightgray!70}{\parbox{\dimexpr\textwidth-2\fboxsep\relax}{\textcolor{black}{\thesection\quad#1}}}}
\titleformat{name=\section,numberless}
{\normalfont\Large\sffamily\bfseries}{}{0em}{\colorbox{lightgray!70}{\parbox{\dimexpr\textwidth-2\fboxsep\relax}{\textcolor{black}{#1}}}}
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
  \subsection{\sffamily #1}
}

\newcommand{\subsubtopico}[1]
{
  \setlength\parindent{0pt}
  \subsubsection{\sffamily #1}
}
%==============================================================================

%==============================================================================
% Ambiente para ``Questões''
%==============================================================================
\newenvironment{atividade}[1]
{
  \noindent
  \newcounter{quest}
  \begin{list}{\ovalbox{\sffamily \textbf{Questão \arabic{quest}.}}}
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
\newcommand{\Cis}[1]{\cos{\left(#1\right)} + i \sen{\left(#1\right)}}
\newcommand{\textbs}[1]{\textbf{\textsf{#1}}} %--------------------------------> negrico sem serifa
\newcommand{\vazio}{\varnothing} %---------------------------------------------> símbolo do vazio
\newcommand{\dd}{\,\mathrm{d}} %-----------------------------------------------> 'd' das derivadas em rm
\newcommand{\Resp}[1]{\hfill {\footnotesize\textbs{Resp.}:\;\,{#1}}} %-----------> 'Resp' no final da linha
\newcommand{\versor}[1]{\cdot\vec{\textbf{#1}}} %------------------------------> vetor em negrito
\newcommand{\vf}{(\quad)} %----------------------------------------------------> espaço para `V` ou `F`
\newcommand{\urlb}[1]{\textbf{\url{#1}}} %-------------------------------------> deixa em negrito a url
\newcommand{\duascolunas}[5] %-------------------------------------------------> alternativas em duas colunas
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
\newcommand{\ncolunas}[6] %----------------------------------------------------> alternativas em colunas: nº de colounas + 5 itens.
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
% 2022/11/08 ---> * Iniciada a versão v3.0.0 (?); 
%                 * Corrigido a fonte sem serifa nos subtítulos: opção 'sf' e 
%                   'bf' no 'titlesec';
%                 * Satisfeito com o resultado geral.
%
% 2022/11/07 ---> * Iniciada a versão v2.2.0;
%                 * Optei pela família de fontes Libertine, inclusive para a 
%                   fonte monoespaçada;
%                 * Mudei o caminho da fonte Intimacy: agora, é necessário 
%                   instalá-la no sistema. Disponibilizarei o arquivo '.ttf'; 
%                 * Criado o comando '\textbs{}' para deixar o texto em negrito 
%                   e sem serifa; 
%                 * Criado o comando '\Cis{}' para produzir 'cos() + i \sen()';
%                 * Usei fonte sem serifa em mais partes do Cabeçalho; 
%                 * Pequenas modificações/correções na organização do texto; 
%                 * Tentando encontrar o erro com o pacote 'esvect'
%                 * Retirado o pacote 'booktabs'. Optei por usar o pacote 
%                   'tabularray' para produzir as tabelas;
%                 * Retirei o pacote 'esvect' por conflitos internos ainda não 
%                   solucionados (dá erro com '\Resp{}' e '\footnote{}')
%
% 2022/10/20 ---> * Mudança nas fontes: família Libertine (serif, sans, small 
%                   caps); DejaVu Sans Mono, para monoespaçadas; e, euler, para 
%                   fonte Matemática. Ainda não estou gostando do 'Q' maiúsculo, 
%                   porém, ficará mais prático disponibilizar com o pacote 
%                   `libertine`. E, percebi que havia uma diferença substancial 
%                   em simbologias no pacote eulervm, vs euler.
%                 * Legendas em sans serif
%                 * Subtítulos em sans serif
%
% 08/12/2021 ---> * Classe atualizada ou para LuaLaTeX, ou para XeLaTeX;
%                 * Voltei para o pacote babel (que foi atualizado);
%                 * Organizei os arquivos em pastas;
%                 * Mudança para fonte Alegreya e Alegreya Sans para texto;
%                 * Mudança para fonte matemática mdput, do pacote mathdesign;
%                 * Cabeçalho, Títulos, Subtítulos, label Questão, etc., ficaram
%                   em fonte Alegreya Sans;
%                 * Retirei o pacote amsmath, pois mathtools já o carrega;
%                 * Foram criadas as cores azulUFRB e douradoUFRB;
%                 * Mudança nas configurações do pacote hyperref;
%                 * Atualização para o pacote siunitx, em detrimento do units;
%                 * Utilização do pacote microtype;
%                 * Criado o comando \urlb{} para deixar a url em negrito;
%                 * Mudança em nomes de comandos: \duascolunas e \ncolunas;
%                 * Início da versão v2.0.0 (mudança na semântica da versão).
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
