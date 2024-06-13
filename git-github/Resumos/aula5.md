## Aula 5 - Trabalhando com Branches - Criando, Mesclando, Deletando e Tratando Conflitos

</br>

## O que é Branch?
Um branch no Git é um ponteiro móvel para um commit no histórico do repositório, de maneira simplista é uma ramificação do seu projeto. O nome do branch padrão no Git é master(main). Conforme você começa a fazer commits, você recebe um branch master que aponta para o último commit que você fez. Cada vez que você faz um novo commit, ele avança automaticamente. Podemos criar mais de um branch, útil principalmente quando estamos trabalhando em conjunto com outras pessoas, evitando confusões e perdas.

</br>

## Ponteiro HEAD
O Git mantém um ponteiro especial chamado de HEAD, é um ponteiro para o branch local em que você está. Na imagem abaixo, podemos ver que estamos no branch master. 

</br>

<img src="https://git-scm.com/book/en/v2/images/head-to-master.png" width=800px/>

</br>

Se mudarmos para o branch testing, conforme abaixo, e fizermos um novo commit o branch atual avança mas o master continua no commit anterior.

<img src="https://git-scm.com/book/en/v2/images/advance-testing.png" width=800px/>

</br>

Agora voltando ao branch master, os arquivos no diretório de trabalho foram revertidos ao snapshot (registro do estado de um sistema, aplicação ou arquivos em determinado ponto no tempo, como uma fotograifa) para qual o master aponta. Agora, fazemos um novo commit na branch master, então temos duas mudanças isoladas, conforme abaixo.

</br>

<img src="https://git-scm.com/book/en/v2/images/advance-master.png" width=800px/>

</br>

## Mesclando Branches
Após fazer as duas commits do exemplo acima agora queremos mesclar as duas, então para isso utilizamos o comando "git merge testing" para mesclarmos o branch "testing" com o branch atual (master).

</br>

### Conflitos de Merge
Acontece quando temos alterações concorrentes, duas pessoas alterando a mesma linha de código, quando é mesclado devolve o erro pois não é possível fazer as duas, assim devemos escolher qual alteração manter.

</br>

## Excluindo Branches
Agora podemos excluir a branch "testing" já que não vamos mais utiliza-lá, para isso utilizamos o comando "git branch -d testing".

</br>

## Comandos no Git
``` git branch testing ``` Cria um novo branch nomeado de "testing" para o mesmo commit que você está atualmente </br>
```git checkout testing``` Move o HEAD e o aponta para o branch "testing" </br>
``` git checkout -b testing ``` Cria ma nova branch com o nome "testing" e alterna para essa branch ao mesmo tempo </br>
```git branch -v``` Lista todas as branches do repositório Git, juntamente com o último commit em cada uma delas </br>
```git merge testing``` Mescla a branch chamada "testing" na branch atual </br>
```git branch -d testing``` Deleta a branch "testing" </br>
