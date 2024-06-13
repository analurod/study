# Aula 3 - Desfazendo Alterações no Repositório Local

</br>


## Comandos do Git
``` git restore ``` Descartar mudanças em arquivos no diretório de trabalho do seu repositório </br>
``` git amend -m"descrição" ``` Altera descrição do commit </br>
``` git reset <hash_do_commit> ``` Move o HEAD e a branch atual para o commit especificado, desfazendo todos os commits posteriores </br>
``` git reset HEAD~<n> ```  Move o HEAD e a branch atual para n commits atrás do HEAD atual </br>
``` git reset --soft ``` Desfaz os commits, mantendo as alterações nos arquivos no índice e no diretório de trabalho </br>
``` git reset --mixed ```  Desfaz os commits e atualiza o índice para corresponder ao HEAD, mas mantém as alterações nos arquivos no diretório de trabalho (PADRÃO) </br>
``` git reset --hard ```  Desfaz os commits, atualiza o índice e o diretório de trabalho para corresponder ao HEAD </br>
``` git reflog ``` Mostra um histórico mais detalhado, organizado em ordem cronológica de commits </br>
``` git diff ``` Mostra o que foi alterado </br>
