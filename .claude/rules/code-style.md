---
description: Convencoes de estilo de codigo do projeto Metodos de Programacao
paths: ["**/*.py", "tests/**/*.py"]
---

# Convencoes de Estilo - Metodos de Programacao

## Imports

Ordem obrigatoria (isort profile=black):

```python
# Bibliotecas padrão
import os
from pathlib import Path
from typing import List, Tuple

# Bibliotecas de terceiros
import matplotlib.pyplot as plt
import pandas as pd
from tqdm import tqdm

# Módulos locais
from modulo_local import funcao
```

- isort config: `profile = "black"`, `sections = ["FUTURE", "STDLIB", "THIRDPARTY", "FIRSTPARTY", "LOCALFOLDER"]`

## Nomenclatura

- **Modulos**: snake_case (`programacao_dinamica`, `pdde_newave`)
- **Classes**: PascalCase (`ProgramacaoDinamica`, `ModeloNewave`)
- **Funcoes/metodos**: snake_case (`calcular_fibonacci`, `resolver_mochila`)
- **Constantes**: UPPER_SNAKE_CASE (`NUM_ESTAGIOS`, `CAPACIDADE_MAX`)
- **Variaveis**: Portugues, snake_case
- **Prefixos de variaveis**: `lst_` (listas), `df_` (DataFrames)

## Formatacao

- **Ruff format**: single quotes, line-length=105, target-version=py311
- **Indentacao**: 4 espacos
- **Strings**: aspas simples (enforced pelo ruff)
- **f-strings**: preferidas para interpolacao

## Type Hints

- **Funcoes publicas**: sempre tipar parametros e retorno
- **Variaveis complexas**: tipar quando nao obvio pelo contexto

```python
def calcular_fibonacci(n: int) -> int: ...
def resolver_mochila(pesos: List[int], valores: List[int], capacidade: int) -> int: ...
```

## Notebooks

- Celulas de codigo: maxima 30 linhas por celula
- Celulas Markdown: documentar o que cada bloco faz
- Variaveis de resultado intermediario: nomes descritivos em portugues
- Nao usar `print()` em excesso — preferir visualizacoes com matplotlib ou display()
