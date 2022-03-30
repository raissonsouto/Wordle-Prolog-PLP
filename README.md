# Wordle em Prolog (PLP)

Projeto realizado pelos alunos descritos abaixo na disciplina de PLP ministrada pelo professor Everton Leandro Galdino Alves no período 2021.1.

## Alunos

- [Gabriel Oliverira dos Santos](https://github.com/Gabriel-S1)
- [João Vitor Silva Luciano](https://github.com/joaovitorsl)
- [Luis Eduardo Fernandes Ricarte](https://github.com/luisricarte)
- [Raisson Souto](https://github.com/raissonsouto)
- [Rembrandt Costa](https://github.com/rembrandtcosta)

## Como jogar?

Para rodar o jogo basta clonar o repositório com o comando: 
```
$ git clone https://github.com/raissonsouto/Wordle-Prolog-PLP.git
```
<!--
Tendo o prolog instalado na sua máquina, instale as dependências ```???```:
```
$ ???
```
-->
Depois acesse o diretório do projeto e utilize o comando:
```
$ cd Wordle-Prolog-PLP
```
```
$ swipl -q -f Main.pl -t main
```

## Instruções para o jogo WORDLE :

O JOGADOR irá receber uma palavra aleatória com 5 letras, e terá que tentar advinhar com 6 tentativas.
Após a primeira tentativa o JOGADOR terá um feedback via terminal, em cores, para cada letra da palavra, sendo assim:

+ VERDE : caso o JOGADOR receba uma letra em verde significa que a letra EXISTE e está na posição CORRETA;
+ AMARELO : a letra EXISTE, porém não está na posição CORRETA;
+ VERMELHO : a letra NÃO EXISTE

### Win
Caso o jogador consiga advinhar a palavra será exibida uma mensagem de vitória.
### Lose
Após a seis tentativa, caso o jogador não consiga descobrir a palavra o jogo será encerrado e exibirá a mensagem de derrota.
