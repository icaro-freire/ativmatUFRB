<p align="center">
  <img 
      align  = "center" 
      src    = "/img/logo_leao-chapeu.png" 
      width  = "300"
      alt    = "ativmatUFRB"
  >
  <h1 align = "center">
      ativmatUFRB.cls
  </h1>
  <h3 align = "center">
      :straight_ruler: :triangular_ruler: (Classe LaTeX -não oficial- para Listas de Atividade da UFRB) :straight_ruler: :triangular_ruler:
  </h3>
  <p align = "center">
      <a align = "center" href = "/classe_ativmatUFRB/modelo_ativmatUFRB.pdf">
          :link: Veja aqui o resultado final em pdf 
      </a>
  </p>
</p>

<p align = "center">
  <img
      align = "center"
      alt   = "GitHub last commit"
      src   = "https://img.shields.io/github/last-commit/icaro-freire/ativmatUFRB"
  >
  <a align = "center" href = "https://github.com/icaro-freire/ativmatUFRB/network">
    <img 
         align = "center"
         alt   = "GitHub forks" 
         src   = "https://img.shields.io/github/forks/icaro-freire/ativmatUFRB"
    >
  </a>
  <a align = "center" href="https://github.com/icaro-freire/ativmatUFRB/stargazers">
    <img 
         align = "center"
         alt   = "GitHub stars" 
         src   = "https://img.shields.io/github/stars/icaro-freire/ativmatUFRB"
    >
  </a>
  <a align = "center" href="https://github.com/icaro-freire/ativmatUFRB/issues">
    <img 
         align = "center"
         alt   = "GitHub issues" 
         src   = "https://img.shields.io/github/issues/icaro-freire/ativmatUFRB"
    >
  </a>
</p>

<p align = "center">
  <a href = "https://t.me/IcaroFreire">
      <img 
          align = "center" 
          alt   = "GitHub issues" 
          src   = "https://img.shields.io/badge/contact-Telegram-2CA5E0?logo=Telegram&style=for-the-badge"
      >
  </a>
</p>

> `ativmatUFRB.cls` é um acrónimo para a classe não oficial de latex para listas de **ativ**idades para o curso de **mat**emática da **UFRB**.
<hr>    

# Status
<h5 align = "center">
  :construction: 
  EM CONSTRUÇÃO 
  :construction:
  <p align = "center">
      Volte em alguns dias!
  </p>
</h5>

# Sobre a Classe ativmatUFRB
## :bulb: Motivação

<p align = "justify">
  A motivação para desenvolver esta classe vem do Projeto de Extensão, cadastrado no <a href = "https://www.ufrb.edu.br/cfp/">Centro de Formação de Professores</a>, 
  intitulado: <i>LaTeX para o Professor de Matemática</i>. 
  Tal projeto é ofertado (parcialmente) em forma de curso, que versa sobre a confecção de materiais didáticos impressos (e também visuais, como apresentações) 
  com alta qualidade tipográfica usando o programa <a href = "https://sites.google.com/view/latexcfp/sobre/mas-o-que-%C3%A9-latex?authuser=0"><tt>LaTeX</tt></a>; bem como, 
  no desenvolvimento de classes extra-oficiais (lista de atividade, avaliações, trabalho de conclusão de curso, etc.) para o curso de Licenciatura ou 
  Bacharelado em Matemática da UFRB.
</p>

## :memo: Conteúdo

<p align = "justify">
  Essa classe é derivada da classe <i>standard</i> <a href = "https://ctan.dcc.uchile.cl/macros/latex/base/classes.pdf"><tt>article.cls</tt></a>.
  Apenas foi acrescentado um cabeçalho estilizado com o logotipo da UFRB e informações sobre o título da lista, professor, disciplina, curso, semestre e número 
  da lista; bem como, comandos internos que julgamos úteis na construção de uma lista com questões de matemática ou área correlacionada.
</p>

## :floppy_disk: Como instalar?

<p align = "justify">
  Toda informação sobre o uso da classe, cuja versão atual é <tt>v1.61</tt>, está disponível no <i>Guia do Usuário</i>, cujo <i>download</i> pode ser realizado no <i>link</i>:
</p>

<p align = "center">
  <a align = "center" href = "/guia_ativmatUFRB/v1.61/guia-ativmatUFRB.pdf">
      :link: guia-ativmatUFRB.pdf
  </a>
</p>

> **Atenção!** É essencial ler o [Guia do Usuário](https://github.com/icaro-freire/ativmatUFRB/blob/master/guia_ativmatUFRB/v1.61/guia-ativmatUFRB.pdf) para usar a classe em questão.

<p align = "justify">
  Todavia, dependendo de qual compilador esteja usando, algumas sutis diferenças são necessárias.
  Essa classe considera, apenas, três possibilidades de compiladores: 
  <a href = "http://www.luatex.org/">LuaLaTeX</a> 
  ou 
  <a href = "https://tug.org/xetex/">XeLaTeX</a>,
  que são os mais atuais; e, o 
  <a href = "https://www.tug.org/applications/pdftex/">pdfLaTeX</a>,
  o clássico.
</p>

### Compilando com pdfLaTeX
Se você (ainda) produz o `.pdf`com `pdfLaTeX`, na pasta de sua lista de atividade (que denotaremos por `01_lista_assunto`) deverá conter:
- `ativmatUFRB.cls`; ou seja, a classe LaTeX para produção de lista atividade para Matemática (e afins);
- `modelo_ativmatUFRB.tex`; ou seja, um arquivo `.tex` onde você escreverá sua lista de atividade.
                            Obviamente, o nome pode ser alterado. 
                            Nela, deverá especificar no preâmbulo, dentre outras coisas (veja o guia) `\documentclass{ativmatUFRB}`;
- `figs/`; ou seja, uma _pasta_ que deverá conter o lodo da UFRB, bem como **todas** as imagens que serão utilizadas na lista;
Visualmente, seria assim:

<pre>
 📦01_lista_assunto
  ┣ 📂figs
  ┃ ┗ 📜ufrb.png
  ┣ 📜ativmatUFRB.cls
  ┗ 📜modelo_ativmatUFRB.tex
</pre>

### Compilando com LuaLaTeX ou XeLaTeX

<p align = "justify">
  Além dos itens citados no pdfLaTeX, a pasta <tt>fonts</tt> deve ser acrescentada.
  Essa pasta contém arquivos <tt>.ttf</tt> de uma fonte usada em uma parte específica do texto (a saber, no cabeçalho).
  Logo, visualmente fica:
</p>

<pre>
📦01_lista_assunto
 ┣ 📂figs
 ┃ ┗ 📜ufrb.png
 ┣ 📂fonts
 ┃ ┗ 📂intimacy
 ┃ ┃ ┣ 📜intimacy.ttf
 ┃ ┃ ┗ 📜intimcy2.ttf
 ┣ 📜ativmatUFRB.cls
 ┗ 📜modelo_ativmatUFRB.tex
</pre>

> :warning: **Atenção!** 
> - Geralmente o tempo da primeira compilação é um pouco maior do que os subsequentes, visto que, possivelmente, muitos pacotes serão instalados no seu computador;
> - É aconselhável, também, compilar umas três ou quatro vezes no início, para que possíveis mensagens de alertas (_warning_) sejam reduzidas.
> - Existem maneiras de organizar seus arquivos temporários gerados na produção do `.pdf`. Para isso, leia o <a href = "/guia_ativmatUFRB/v1.61/guia-ativmatUFRB.pdf"> guia_ativmatUFRB.pdf</a>

# Sobre a Descrição desse repositório
Visualmente, este repositório possui a seguinte descrição:

<pre>
📦ativmatUFRB 
 ┣ 📂classe_ativmatUFRB 
 ┣ 📂guia_ativmatUFRB 
 ┣ 📂img 
 ┣ 📜.gitignore
 ┣ 📜LICENSE 
 ┗ 📜README.md 
</pre> 

A descrição de cada um desses itens é dada a seguir:
- **ativmatUFRB** É a pasta principal, onde nos encontramos;
    + **classe_ativmatUFRB** Nesta pasta, econtram-se arquivos para produção do `.pdf` desejado. 
                             É nela que se encontra, dentre outras coisas, o arquivo `.cls`, resposável por produzir as 
                             alterações no cabeçalho e comandos para confecção da lista de atividade padronizada;
    + **guia_ativmatUFRB** Nesta pasta, econtram-se arquivos para produção do Guia do Usuário da classe `ativmatUFRB.cls`;
    + **img** Aqui se encontra a imagem do logo exposto nesta página do GitHub;
    + **.gitignore** Arquivo usado, dentro do contexto do GitHub, para ignorar certas extensões ou pastas que o autor julga não necessárias para exibir o que deseja;
    + **LICENSE** Arquivo usado, dentro do contexto do GitHub, para exibição da Licença do material;
    + **README.md** Arquivo usado, também dentro do contexto do GitHub, para explicar, por exemplo, os objetivos do repositório.

# Licença
ativmatUFRB.cls, v1.61 <br>
_Copyright_ :copyright: **⋅** 2020 **⋅** **Ícaro Vidal Freire** <br>
<a href="https://github.com/icaro-freire/ativmatUFRB/blob/master/LICENSE"><img alt="GitHub license" align="center" src="https://img.shields.io/github/license/icaro-freire/ativmatUFRB">
</a>
