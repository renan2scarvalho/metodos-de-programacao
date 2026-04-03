---
description: Executa lint e testes do projeto
user_invocable: true
---

# /check

Execute a verificacao completa do projeto:

1. `uv run task lint` — Verifica qualidade do codigo com ruff
2. `uv run task test` — Roda testes com cobertura (pytest -s -x --cov=app -vv)

Se houver erros de lint, tente corrigir automaticamente com `uv run task fix` e `uv run task format`.
Se houver falhas nos testes, analise e proponha correcoes.
