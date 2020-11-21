<p align = "center">
  <img
       width = "200"
       src   = "https://github.com/icaro-freire/ativmatUFRB/blob/master/img/user-guide.png"
       align = "center"
       alt   = "guia-do-usuario"
  >
  <h2 align = "center"> 
       Guia do Usuário <br>
       <tt> v1.61 </tt>
  </h2>
  <p align = "center">
      <a href = "/guia-ativmatUFRB.pdf">
        :link: Veja aqui o Guia do Usuário da classe ativmatUFRB
      </a>
  </p>
</p>

<hr>

# Guia da Classe ativmatUFRB.cls

Nesta parte do repositório encontram-se os arquivos para visualização do *Guida do Usuário da Classe ativmatUFRB*, em `.pdf`, bem como os arquivos `.tex` e `.cls` para reproduzí-lo.

## Erros ao compilar
> :warning: **Atenção!** <br>
> - Se você for reproduzir o `.pdf`, saiba que há alguns erros de compilação.
Tais erros não impedem a produção do `.pdf`, mas são conflitos entre o ambiente `list` e o pacote [`tcolorbox`](https://www.ctan.org/pkg/tcolorbox)
que não foram ainda solucionados por mim.
Se você conseguir solucionar antes de mim, considere abrir um [ISSUES](https://github.com/icaro-freire/ativmatUFRB/issues).

## Sobre a estruturação dessa pasta
A estruturação desta parte do repositório pode ser vista a seguir:

<pre>
📦v1.61
 ┣ 📂figs
 ┃ ┣ 📜aux-files.png
 ┃ ┗ 📜miktex.png
 ┣ 📂tex
 ┃ ┣ 📜00_resumo-sumario.tex
 ┃ ┣ 📜01_antes-de-comecar.tex
 ┃ ┣ 📜02_como-instalar.tex
 ┃ ┣ 📜03_explicando-a-classe.tex
 ┃ ┗ 📜04_lista-de-pacotes.tex
 ┣ 📜guia-ativmatUFRB.pdf
 ┣ 📜guia-ativmatUFRB.tex
 ┣ 📜guia_ativmatUFRB.cls
 ┗ 📜README.md
 </pre>
 
 Note que as seções do documento estão em arquivos separados, todos contidos na pasta `tex`.
 O arquivo `.tex` principal, ou seja, que "une" os outros (aquele que você deve fazer a "compilação"), é o `guia-ativmatUFRB.tex`.
 
 Segue a descrição:
 
 - **v1.161** é a parte do repositório onde estamos;
     + **figs** é pasta que contém as figuras usadas na produção do guia;
     + **tex** é a pasta que contém os arquivos `.tex` de cada seção que compõe o guia;
     + **guia-ativmatUFRB.pdf** é o `.pdf` final produzido;
     + **guia-ativmatUFRB.tex** é o `main`, ou seja, arquivo principal que é responsável pela produção do `.pdf`;
     + **guia_ativmatUFRB.cls** é um arquivo que contém os pacotes e customizações responsáveis pelo guia-ativmatUFRB.pdf;
     + **README.md** é um arquivo, usado no GitHub, para explicar essa parte do repositório.
 
 > :warning: **Atenção!** 
 > - Leia esse guia com calma, antes de escrever sua primeira lista de atividade com a classe `ativmatUFRB.cls`.
