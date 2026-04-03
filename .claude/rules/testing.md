---
description: Convencoes de teste do projeto Metodos de Programacao
paths: ["tests/**/*.py"]
---

# Testing - Metodos de Programacao

## Framework

- **pytest** >= 8.3.5
- **pytest-cov** >= 6.0.0
- **Comando**: `uv run task test` (pytest -s -x --cov=app -vv)

## Quando Escrever Testes

Testes sao aplicaveis quando ha **codigo Python isolado** (modulos `.py` fora de notebooks). Para notebooks, a verificacao e feita via execucao manual.

## Padroes

### Nomenclatura

- Prefixo `test_` obrigatorio
- Funcoes descritivas: `test_fibonacci_base_case`, `test_mochila_capacidade_zero`
- Sem classes de teste (funcoes soltas)

### Exemplos

```python
def test_fibonacci_retorna_correto():
    assert calcular_fibonacci(0) == 0
    assert calcular_fibonacci(1) == 1
    assert calcular_fibonacci(10) == 55

def test_mochila_capacidade_zero():
    resultado = resolver_mochila([1, 2], [10, 20], capacidade=0)
    assert resultado == 0
```

## Ao Criar Novos Modulos Python

1. Criar arquivo de teste correspondente em `tests/test_<modulo>.py`
2. Cobrir casos basicos: entrada vazia, caso base, caso geral
3. Usar `pytest.mark.parametrize` para testes repetitivos com multiplos inputs
