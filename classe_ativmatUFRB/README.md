<p align = "center">
  <img
      width = "300px"
      align = "center"
      src   = "https://github.com/icaro-freire/ativmatUFRB/blob/master/img/logo_preto-e-branco.png"
      alt   = "Mementos GitHub" 
  >
  <h1 align = "center">
      ativmatUFRB.cls
  </h1> 
</p>

# A Classe ativmatUFRB

## Informções Importantes

<p align="justify">
  Como já dito, essa é uma classe (não oficial) para padronização e suporte em atividades para 
  o curso de Lecenciatura ou Bacharelado em Matemática, bem como disciplinas afins da UFRB.
  Basicamente, oferece um <i>cabeçalho estilizado</i> (com o logo da universidade e informações 
  relevantes sobre disciplina, professor, semestre, data, aluno e título da lista), bem como 
  comandos úteis que julgamos importantes na confecção de tal lista de atividades. 
  O objetivo é facilitar o uso por professores/estudantes iniciantes no LaTeX.
</p>

> Toda informação sobre a utilização da mesma deve ser vista no [:link: Guia do Usuário](https://github.com/icaro-freire/ativmatUFRB/blob/master/guia_ativmatUFRB/v1.61/guia-ativmatUFRB.pdf).

## Sobre a organização desde repositório

Uma visualização desse repositório é dada a seguir:

<pre>
📦classe_ativmatUFRB
 ┣ 📂figs
 ┃ ┣ 📜espiral.pdf
 ┃ ┗ 📜ufrb.jpg
 ┣ 📂fonts
 ┃ ┗ 📂intimacy
 ┃ ┃ ┣ 📜intimacy.ttf
 ┃ ┃ ┗ 📜intimcy2.ttf
 ┣ 📜ativmatUFRB.cls
 ┣ 📜modelo_ativmatUFRB.pdf
 ┣ 📜modelo_ativmatUFRB.tex
 ┗ 📜README.md
</pre> 

- **classe_ativmatUFRB** é a pasta principal, onde nos encontramos agora!
  + **figs** é a pasta onde se encontra o logo da UFRB (que não dese ser apagado), a saber, `ufrb.jpg`;
  e uma figura, denominada `espiral.pdf`, que foi usada na demonstração dos comandos da classec(esta, pode ser deletada depois). 
  Lembre-se: **todas** as figuras de sua lista de atividade devem ser depositadas nesta pasta!
  + **fonts** é a pasta onde se encontram arquivos `.ttf` de uma fonte utilizada no cabeçalho estilizado.
  Se você (ainda) usa o `pdfLaTeX`, pode deletar essa pasta.
  Mas, se seu compilador for XeLaTeX ou LuaLaTeX, tal pasta é imprescindível.
  + **ativmatUFRB.cls** é a classe em si. Todos os comandos e pacotes necessários para a utilização da classe, estão nesse arquivo!
  Leia o *Guia do Usuário* para dicas de como armazenar esse arquivo em seu computador.
  + **modelo_ativmatUFRB.pdf** é o resultado final do arquivo modelo que está disponível como exemplo.
  + **modelo_ativmatUFRB.tex** é o arquivo onde estão as questões usadas como modelo para explicação da classe.
  É nesse arquivo que você deve digitar as suas questões.
  São necessários comandos no preâmbulo desse arquivo. Falaremos rapidamente (uma abordagem mais completa, encontra-se no *Guia do Usuário*) sobre isso logo abaixo.
  + **README.md** é um arquivo, usado no contexto do GitHub, para explicação da classe. Ele pode ser deletado.

### Cuidados com o arquivo .tex
No arquivo `.tex`, no qual você esvreverá suas questões, deve conter alguns comandos (são obrigatórios) no preâmbulo e um outros no corpo do documento.
São obrigatórios no preâmbulo:

- ou `\usandoXeLuaLaTeX` ou `\usandopdfLaTeX`;
- `\tituloDaLista{}`
- `\prof{}
- `\disciplina{}`
- `\curso{} 
- `\semestre{}`
- `\numeroDaLista{}

São obrigatórios no corpo do documento:
- `\titulo`
- `\begin{atividade} \questao ... \end{atividade}`

De maneira geral, segue um exemplo de código, com explicações:

```tex
\documentclass{ativmatUFRB}
%
\usandoXeLuaLaTeX % -------------------> Esse comando indica que você está 
%                                        usando o `LuaLaTeX` ou o `XeLaTeX` como
%                                        compiladores. Mas, se (ainda) estiver
%                                        usando `pdfLaTeX` deve usar o comando
%                                        `\usandopdfLaTeX`.
%=======================================
% Informações do Título da Lista
%=======================================
\tituloDaLista{Título da Lista} %------> Coloque aqui o título da sua lista.
\prof{Fulado Cicrano de Tal} %---------> Nome do Professor.
\disciplina{Miscelânea} %--------------> Disciplina ministrada (Cálculo I, Funções de uma Variável Complexa, etc).
\curso{Licenciatura em Matemática} %---> Curso onde ministra a disciplina.
\semestre{8} %-------------------------> Semestre que onde está inserida a DISCIPLINA.
\numeroDaLista{I} %--------------------> Número da Lisda de Atividade (colocar números em algarismos romanos).
%=======================================

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Início da Lista de Atividade
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\begin{document} %---------------------> Início do documento.
%
\titulo %------------------------------> Gerar o cabeçalho estilizado (com logo da UFRB). Não apagar esse comando!
%
\begin{atividade} %--------------------> Início do ambiente para questões!
%
\questao Primeira questão
%
\end{atividade}
%
\end{document}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
```

## Sobre o Projeto de Extensão

Para saber mais sobre o projeto de extensão **LaTeX para o Professor de Matemática**, [veja aqui](https://sites.google.com/view/latexcfp/p%C3%A1gina-inicial).

## Expectativas
<p align="justify">
  Esperamos que o material disponibilizado seja útil na elaboração de suas listas de atividades.
  Qualquer erro encontrado, ou colaboração significativa, entre em contado <sup>[1]</sup> . :wink:
</p>  

<hr>

[1]: Considere abrir uma [ISSUES](https://github.com/icaro-freire/ativmatUFRB/issues)


