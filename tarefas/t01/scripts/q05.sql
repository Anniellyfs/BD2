/* Questão 5.	Responda as perguntas:

a.	Explique os problemas de termos valores nulos nos dados.

Ter valores nulos nos dados pode levar a problemas de inconsistência e ambiguidade nas consultas e operações realizadas no banco de dados. Alguns problemas associados aos valores nulos incluem:
•	Dificuldade na comparação de valores: Como os valores nulos representam a ausência de um valor, eles não podem ser diretamente comparados com outros valores. Isso pode levar a resultados inesperados ou imprecisos em consultas que envolvem comparações.
•	Dificuldade na realização de cálculos e operações: Valores nulos podem afetar o resultado de cálculos e operações aritméticas. Por exemplo, se um valor nulo estiver envolvido em uma operação matemática, o resultado também será nulo.
•	Complexidade na manipulação dos dados: A presença de valores nulos pode exigir verificações adicionais e lógica complexa para lidar com esses valores durante consultas e manipulação de dados.
•	Dificuldade na interpretação dos dados: Valores nulos podem introduzir ambiguidade na interpretação dos dados, pois não fornecem informações concretas sobre a ausência de um valor. Isso pode dificultar a compreensão correta dos dados armazenados.

b.	Explique o funcionamento do Right e do Left Join.

O "Right Join" e o "Left Join" são tipos de junções (joins) utilizados em consultas SQL para combinar dados de duas ou mais tabelas com base em uma condição específica. A diferença entre eles está na forma como os dados são combinados:
•	Left Join: Retorna todas as linhas da tabela à esquerda (tabela esquerda) e as correspondentes da tabela à direita (tabela direita) com base na condição de junção. Se não houver correspondência na tabela à direita, os valores nulos serão retornados para as colunas correspondentes.
•	Right Join: Retorna todas as linhas da tabela à direita (tabela direita) e as correspondentes da tabela à esquerda (tabela esquerda) com base na condição de junção. Se não houver correspondência na tabela à esquerda, os valores nulos serão retornados para as colunas correspondentes.
Em resumo, o Left Join retorna todas as linhas da tabela à esquerda e as correspondentes da tabela à direita, enquanto o Right Join retorna todas as linhas da tabela à direita e as correspondentes da tabela à esquerda. Os valores nulos são usados quando não há correspondência entre as tabelas.


c.	Explique o funcionamento do Full Outer Join e como pode ser feito no MySQL ou MariaDB que não tem mais o comando Full.

O "Full Outer Join" é um tipo de junção que retorna todas as linhas de ambas as tabelas envolvidas na junção, incluindo as linhas que não têm correspondência entre si. Ou seja, ele combina os resultados do Left Join e do Right Join.
Em bancos de dados como MySQL ou MariaDB, que não possuem um comando "Full Outer Join" nativo, é possível obter o mesmo resultado utilizando a união (UNION) de um Left Join e um Right Join. A ideia é realizar ambos os joins e depois combinar os resultados usando a união, eliminando duplicatas.
