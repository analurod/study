# Notas - Pense em Python 📖🐍

Este arquivo contém anotações e conceitos importantes aprendidos durante a leitura do livro *Pense em Python: Pense como um cientista da computação* do *Allen B. Downey*.


## 📚 Sumário  

- [Capítulo 1 - A Jornada do programa](#-capítulo-1---a-jornada-do-programa)
- [Capítulo 2 - Variáveis, expressões e instruções](#-capítulo-2---variáveis-expressões-e-instruções)  
- [Capítulo 3 - Funções](#-capítulo-3---funções)  
- [Capítulo 4 - Estudo de caso: projeto de interface](#-capítulo-4---estudo-de-caso-projeto-de-interface)  
- [Capítulo 5 - Condicionais e recursividade](#-capítulo-5---condicionais-e-recursividade)  
- [Capítulo 6 - Funções com resultado](#-capítulo-6---funções-com-resultado)  
- [Capítulo 7 - Iteração](#-capítulo-7---iteração)  
- [Capítulo 8 - Strings](#-capítulo-8---strings)  
- [Capítulo 9 - Estudo de caso: jogos de palavras](#-capítulo-9---estudo-de-caso-jogos-de-palavras)  
- [Capítulo 10 - Listas](#-capítulo-10---listas)  
- [Capítulo 11 - Dicionários](#-capítulo-11---dicionários)  
- [Capítulo 12 - Tuplas](#-capítulo-12---tuplas)  
- [Capítulo 13 - Estudo de caso: seleção de estrutura de dados](#-capítulo-13---estudo-de-caso-seleção-de-estrutura-de-dados)  
- [Capítulo 14 - Arquivos](#-capítulo-14---arquivos)  
- [Capítulo 15 - Classes e objetos](#-capítulo-15---classes-e-objetos)  
- [Capítulo 16 - Classes e funções](#-capítulo-16---classes-e-funções)  
- [Capítulo 17 - Classes e métodos](#-capítulo-17---classes-e-métodos)  
- [Capítulo 18 - Herança](#-capítulo-18---herança)  
- [Capítulo 19 - Extra](#-capítulo-19---extra)  
- [Capítulo 20 - Depuração](#-capítulo-20---depuração)  
- [Capítulo 21 - Análise de algoritmos](#-capítulo-21---análise-de-algoritmos)  

---
## 📌 Capítulo 1 - A Jornada do programa  
   🔹 Um **programa** é uma sequência de instruções que especifica como executar uma operação da computação.

   🔹 A operação da computação pode ser:
   - Algo matemático.
   - Operação da computação simbolica, como a busca e substituição de textos em um documento.

   🔹 Instruções básicas independente da linguagem: *entrada*, *saída*, *matemática*, *execução condicional* e *repetição*.

   🔹 O comando `print()` exibe saída no console.  
   ```python
   print("Olá, mundo!") 

   # Saída: Olá, mundo!
   ```

   🔹 Os **operadores matématicos** são simbolos especiais que representam operações de computação. 
   ```python
   40 + 2 # Representa adição
   # Saída: 42

   43 - 2 # Representa subtração
   # Saída: 41

   6 * 7 # Representa divisão
   # Saída: 42

   10 / 2 # Representa divisão real
   # Saída: 5.0 (float)

   6 ** 2 # Representa exponenciação
   #Saída: 36
   ```

   🔹 Um **valor** é a coisa mais básica com as quais o programa trabalha. Esses valores pertencem a **tipos** diferentes. A função `type()` nos diz o tipo do valor.
   ```python
   type(2)
   # Saída: class 'int'
   # int -> números  inteiros

   type(5.0)
   # Saída: class 'float'
   # float -> números de ponto flutuante

   type('Hello, World!')
   # Saída: class 'str'
   # str -> string
   ```
   
   🔹 Os erros de programação são chamados de **bugs** e o processo para achar esses erros é chamado de **depuração**

---

## 📌 Capítulo 2 - Variáveis, expressões e instruções
   🔹 Uma **variável** é um nome que se refere a um valor.
   🔹 Uma **instrução de atribuição** cria uma nova varia´vel e dá valor a ela:
   ```python
   mensagem = 'And now for something completely different' # String
   num = 17 # Int
   pi_aprox = 3.141592653589793 # Float
   ```

   🔹 Uma forma comum de representar variáveis por rescrito é colocar o nome com uma flecha apontando para o seu valor, isso é chamado de **diagram de estado**:
   ```
   mensagem ---> 'And now for something completely different'
    
   num ---> 17
      
   pi_aprox ---> 3.141592653589793
   ```

   🔹Se você der um nome "ilegal" para uma variável vai receber um erro de sintaxe

   ```python
   1teste = 'Oi!' # Começa com número 
   >>> SyntaxError: invalid syntax

   more@ = 10000 # Caracter especial (@)
   >>> SyntaxError: invalid syntax

   class = 'Classe' # Palavra-chave da linguagem
   >>> SyntaxError: invalid syntax
   ```

   🔹Uma **expressão** é uma combinação de valores, variáveis e operadores.

   🔹Uma **instrução** é uma unidade de código que tem um efeito, como criar uma variável e exibir um valor:

   ```python
   n = 17
   print(n)

   # Saída: 17
   ```

   🔹 Em geral não é possível realizar operações matemáticas com strings, com exeção dos operadores + e *:

   ```python
   # Função de concatenação
   text = 'He' + 'llo' 
   print(text)
   # Saída: Hello

   # Função de repetição
   print(texto*3)
   # Saída: HelloHelloHello
   ```

   🔹Há três tipos de erros que podem ocorrer em um programa:
   - Erro de sintaxe.
   - Erro de tempo de execução.
   - Erro semântico.

---

## 📌 Capítulo 3 - Funções  

   🔹 Uma **função** é uma sequencia nomeada de intruções que executa uma operação de computação. Ao definir a função você especifica o nome e a sequencia de intruções. Depois, pode "chamar" a função pelo nome. 

   🔹O Python oferece funções que convertem valores de um tipo para o outro:

   ```python
   int(35.4) # Convertendo valor float para inteiro
   >>> 35

   float('34.55555') # Convertendo string para valor float
   >>> 34.55555

   str(32) # Convertendo inteiro para string
   >>> '32'
   ```

   🔹 O Python tem um módulo matemático que oferece a maioria das funções matemáticas comuns: `math`

   🔹 **Módulo** é um arquivo que contém uma coleção de funções relacionadas. Antes de usarmos as funções do módulo temos que importá-lo: `import math`. Essa instrução cria um **objeto de módulo** chamado *math*

   🔹 **Notação de ponto** é uma forma de chamar as funções:
   ```python
   import math

   # Encontra o seno de radianos
   graus = 45
   radianos = graus / 180.0 * math.pi
   math.sin(radianos)
   ```
   
   🔹 É possível acrescentar/criar novas funções:
   ```python
   def diga_oi(n):
      print('Oii {n}!')

   diga_oi('Samanta')

   # Saída: Oii Samanta!
   ```

   🔹 A palavra `def` indica uma definição de função. Uma vez a função definida é possível usar ela dentro de outra função:

   ```python
   def diga_oi(nome):
      print('Oii {n}!')

   def cumprimento(nome):
      diga_oi(nome)
      print('Como vai?')

   cumprimento('Roberta')

   # Saída: Oii Roberta!
   #        Como vai?
   ```

   🔹 Argumentos são os valores passados para uma função quando ela é chamada, enquanto parâmetros são as variáveis definidas na assinatura da função que recebem esses valores.

---  

## 📌 Capítulo 4 - Estudo de caso: projeto de interface 
   🔹 Uso do módulo turtle: - [Testando Turtle](https://github.com/analurod/study/blob/main/Python/Livro%20-%20Pense%20em%20Python/Outros/testando_turtle.py)

---  

## 📌 Capítulo 5 - Condicionais e recursividade  

---  

## 📌 Capítulo 6 - Funções com resultado

---  

## 📌 Capítulo 7 - Iteração 

---  

## 📌 Capítulo 8 - Strings  

---  

## 📌 Capítulo 9 - Estudo de caso: jogos de palavras 

---  

## 📌 Capítulo 10 - Listas

---  

## 📌 Capítulo 11 - Dicionários

---  

## 📌 Capítulo 12 - Tuplas

---  

## 📌 Capítulo 13 - Estudo de caso: seleção de estrutura de dados

---  

## 📌 Capítulo 14 - Arquivos

---  

## 📌 Capítulo 15 - Classes e objetos

---  

## 📌 Capítulo 16 - Classes e funções

---  

## 📌 Capítulo 17 - Classes e métodos

---  

## 📌 Capítulo 18 - Herança

---  

## 📌 Capítulo 19 - Extra

---  

## 📌 Capítulo 20 - Depuração

---  

## 📌 Capítulo 21 - Análise de algoritmos

---  
