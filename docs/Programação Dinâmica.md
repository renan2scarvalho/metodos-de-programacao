# Programação Dinâmica

Programação Dinâmica (PD) é uma técnica de otimização usada para resolver problemas complexos dividindo-os em subproblemas menores, resolvendo cada subproblema uma única vez e armazenando seu resultado (usando memoização ou tabulação), evitando cálculos repetidos.

---

- Características principais:

    - Divide o problema em subproblemas sobrepostos

    - Armazena soluções de subproblemas (memoização ou tabulação)

    - Reutiliza soluções já calculadas

    - Geralmente aplicada a problemas de otimização

---

- A PD é especialmente útil quando o problema possui:

    - Subproblemas sobrepostos: os mesmos subproblemas aparecem várias vezes.

    - Propriedade de subestrutura ótima: a solução ótima do problema pode ser construída a partir das soluções ótimas dos subproblemas.

---

## Exemplo clássico: Fibonacci com Programação Dinâmica


A versão ingênua é recursiva e ineficiente, pois recalcula várias vezes os mesmos valores:


```py
def fib(n):
    if n <= 1:
        return n
    return fib(n-1) + fib(n-2)
```

![img_fibo_naive](https://media.geeksforgeeks.org/wp-content/uploads/20241224121217170958/fibonaci-1024.webp)

A complexidade da abordagem é exponencial e com limite superior por $O(2^n)$, pois se faz duas chamadas recursivas em toda função.

Observe a imagem com subproblemas sobrepostos:

![img_overlapping](https://media.geeksforgeeks.org/wp-content/uploads/20241223141819419563/1.webp)

Como a PD trabalha o problema:

1. identifica subproblemas: divide o problema principal em subproblemas menores e independentes i.e. F(n-1) e F(n-2)
2. armazena soluções: resolve cada subproblema e armazena solução em uma tabela ou arranjo para que não seja necessário seu cálculo novamente
3. constrói soluções: usa as soluções construídas para construir a solução do problema principal. Para F(n), busque F(n-1) e F(n-2) na tabela e os adicione
4. evite recomputação: ao se armazenar soluções, PD assegura que cada subproblema é resolvido apenas uma vez, reduzindo tempo computacional


## Abordagens usando PD

![img_pd_methods](https://media.geeksforgeeks.org/wp-content/uploads/20241223140520452888/Dynamic-Programming.webp)

1. Memoização (top-down) - (O(n) no time e O(n) no espaço)

Mantém a solução recursiva e adiciona uma tabela de memoização para evitar chamadas repetidas dos mesmos subproblemas.

    - antes de fazer qualquer chamada recursiva, primeiro checa se a tabela de memoização já possui a solução
    - após a chamada recursiva, armazena a solução na tabela de memoização (dict)

```py
def fib(n, memo={}):
    if n in memo:
        return memo[n]

    # Caso base
    if n <= 1:
        return n

    memo[n] = fib(n - 1, memo) + fib(n - 2, memo)

    return memo[n]
```

2. Tabulação (bottom-up) - (O(n) no time e O(n) no espaço)

Se inicia com os menores subproblemas e gradualmente se constrói a solução final.

    - se escreve uma solução iterativa (evitando overhead de recursão) e constrói a solução de maneira bottom-up
    - utiliza uma tabela `dp` onde primeiro se preenche a solução dos casos base e após se preenche as entradas remanescentes da tabela utilizando fórmula recursiva
    - apenas se utiliza fórmula recursiva nas entradas da tabela e não se faz chamadas recursivas

```py
def fib(n):
    if n <= 1:
        return n

    # Cria uma tabela para armazenar os valores já calculados
    dp = [0] * (n + 1)
    dp[1] = 1

    for i in range(2, n + 1):
        dp[i] = dp[i - 1] + dp[i - 2]

    return dp[n]
```

Esta solução tem complexidade O(n) em tempo e espaço. Armazenamos cada resultado na tabela dp para reutilização.

Versão otimizada em espaço: O(n) no tempo e O(1) no espaço

```py
def fib(n):
    if n <= 1:
        return n

    prev, curr = 0, 1
    for _ in range(2, n + 1):
        prev, curr = curr, prev + curr

    return curr
```

Esta versão usa apenas O(1) de espaço adicional, mantendo apenas os dois valores anteriores necessários

---

## Quando usar Programação Dinâmica?

- Quando identificar subproblemas recorrentes.

- Quando a subestrutura ótima estiver presente.

- Quando puder ganhar desempenho ao evitar recomputações.


Exemplos:

   - Problema da mochila (Knapsack)

   - Maior subsequência comum (LCS)

   - Caminho mínimo em grafos (algoritmo de Floyd-Warshall)

   - Multiplicação de cadeia de matrizes

   - Troco de moedas


---

## Referências:

- https://www.geeksforgeeks.org/introduction-to-dynamic-programming-data-structures-and-algorithm-tutorials/
- https://www.geeksforgeeks.org/solve-dynamic-programming-problem/
