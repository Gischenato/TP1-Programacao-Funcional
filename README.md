# TP1-Programacao-Funcional

## Objetivo
Consolidar o conhecimento sobre conceitos e construção de funções recursivas em Haskell.

## Enunciado
Estamos interessados na implementação de diversas funções de manipulação de “valores binários”.
Em todos os exercícios que lidam com representação em binário, considere que um número binário é 
armazenado como uma lista de zeros e uns. Utilize as listas do Haskell nestas soluções: [Int]. 
Para cada exercício apresente também um exemplo de chamada da função implementada. 
Cuidado para a interpretação da codificação binária solicitada em cada exercício, sugere-se fortemente 
que sejam revisados os conceitos de representação numérica em binários antes de realizar a atividade!

1. Definir uma função recursiva que recebe um número binário (interpretado como número inteiro sem sinal) e retorna o valor equivalente em decimal. 𝑏𝑖𝑛2𝑑𝑒𝑐∷[𝐼𝑛𝑡]→𝐼𝑛𝑡
1. Definir uma função recursiva que recebe umnúmero decimal inteiro não-negativo e retorna o valor equivalente em binário (interpretado como número inteiro sem sinal). 𝑑𝑒𝑐2𝑏𝑖𝑛∷𝐼𝑛𝑡→[𝐼𝑛𝑡]
1. Definir uma função recursiva que recebe um número binário na representação de complemento de dois e retorna o valor equivalente em decimal inteiro. 𝑏𝑖𝑛𝑐𝑜𝑚𝑝𝑙2𝑑𝑒𝑐∷[𝐼𝑛𝑡]→𝐼𝑛𝑡 
1. Definir uma função recursiva que recebe um número decimal inteiro e retorna o valor equivalente em binário na representação de complemento de dois. 𝑑𝑒𝑐2𝑏𝑖𝑛𝑐𝑜𝑚𝑝𝑙∷𝐼𝑛𝑡→[𝐼𝑛𝑡]
1. Definir uma função recursiva que recebe dois números binários na representação de complemento de dois e retorna a soma binária destes dois valores. 𝑠𝑜𝑚𝑎𝑟𝑏𝑖𝑛∷[𝐼𝑛𝑡]→[𝐼𝑛𝑡]→[𝐼𝑛𝑡]
1. Definir uma função recursiva que recebe dois números binários na representação de complemento de dois e retorna a subtração binária destes dois valores. 𝑠𝑢𝑏𝑡𝑟𝑎𝑖𝑟𝑏𝑖𝑛∷[𝐼𝑛𝑡]→[𝐼𝑛𝑡]→[𝐼𝑛𝑡]
1. Definir uma função recursiva que recebeum número fracionário decimal por parâmetro e devolve uma tupla com dois números binários representando, respectivamente, a parte inteira (na representação de complemento de dois com no máximo32 bits) e a parte fracionária (na representação de binário fracionado com no máximo 32 bits). 𝑓𝑟𝑎𝑐2𝑏𝑖𝑛∷𝐷𝑜𝑢𝑏𝑙𝑒→([𝐼𝑛𝑡],[𝐼𝑛𝑡])
1. Definir uma função recursiva que recebe uma tupla com dois números binários representando, respectivamente, a parte inteira (na representação de complemento de dois com no máximo32 bits) e a parte fracionária (na representação de binário fracionado com no máximo 32 bits), e retorna o correspondente valor fracionário decimal.𝑏𝑖𝑛2𝑓𝑟𝑎𝑐∷([𝐼𝑛𝑡],[𝐼𝑛𝑡])→𝐷𝑜𝑢𝑏𝑙𝑒
