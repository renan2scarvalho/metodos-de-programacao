---
description: Fluxo de trabalho e convencoes do projeto Metodos de Programacao
---

# Workflow - Metodos de Programacao

## Branches

- `main`: Branch principal, apenas via pull request
- `feature/<descricao>`: Novos notebooks ou funcionalidades
- `fix/<descricao>`: Correcoes de bugs ou erros
- `docs/<descricao>`: Documentacao

## Fluxo de Desenvolvimento

1. Criar branch a partir de `main`
2. Implementar mudancas com commits atomicos
3. Executar `uv run task check` antes de push (quando houver codigo Python isolado)
4. Abrir pull request para `main`

## Qualidade de Codigo (Python isolado)

Antes de cada commit com arquivos `.py`:

```sh
uv run task sort      # Ordenar imports
uv run task format    # Formatar codigo
uv run task lint      # Verificar qualidade
uv run task test      # Rodar testes
```

Ou simplificado:

```sh
uv run task check     # lint + test
```

## Adicionando Novo Topico de Estudo

1. Criar notebook em `jupyter/<topico>.ipynb`
2. Documentar em `docs/<Topico>.md` (opcional)
3. Atualizar tabela de notebooks no `QUICKSTART.md`
4. Commit: `feat: adiciona notebook de <topico>`
