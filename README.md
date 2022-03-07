# Wordle em Prolog (PLP)

Projeto realizado pelos alunos descritos abaixo na disciplina de PLP ministrada pelo professor Everton Leandro Galdino Alves no período 2021.1e.

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
Tendo o ??? instalado na sua máquina, instale as dependências ```???```:
```
$ ???
```
Depois acesse o diretório do projeto e utilize o comando: 
```
$ runhaskell Main.hs
```

## Instruções para o jogo WORDLE :

O JOGADOR irá receber uma palavra aleatória com 5 letras, e terá que tentar advinhar com 5 tentativas.
Após a primeira tentativa o JOGADOR terá um feedback via terminal, em cores, para cada letra da palavra, sendo assim:

+ VERDE : caso o JOGADOR receba uma letra em verde significa que a letra EXISTE e está na posição CORRETA;
+ AMARELO : a letra EXISTE, porém não está na posição CORRETA;
+ VERMELHO : a letra NÃO EXISTE

### Win
Caso o jogador consiga advinhar a palavra será exibida uma mensagem de vitória.
### Lose
Após a quinta tentativa, caso o jogador não consiga descobrir a palavra o jogo será encerrado e exibirá a mensagem de derrota.
