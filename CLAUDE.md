# Metodos de Programacao

Projeto de estudo dos principais metodos de programacao, com foco em Programacao Dinamica e metodos de decomposicao estocastica (PDDE/NEWAVE). O conteudo e entregue via Jupyter notebooks interativos e documentacao estruturada.

## Tech Stack

Python 3.12+ | UV | Pandas | Matplotlib | ipykernel | pytest | Ruff | isort | taskipy

## Comandos

```bash
uv run jupyter notebook                        # Inicia o servidor Jupyter
uv run task lint                               # Verifica qualidade do codigo
uv run task format                             # Formata codigo com ruff
uv run task sort                               # Ordena imports com isort
uv run task fix                                # Corrige problemas automaticamente
uv run task test                               # Roda testes com cobertura
uv run task check                              # lint + test
uv run task clean                              # Limpa cache e artefatos
```

## Estrutura de Pastas

```
jupyter/                       # Notebooks interativos de estudo
  programacao_dinamica.ipynb   # Programacao Dinamica (memoization, tabulation)
  pdde_newave_toy_v0.ipynb     # PDDE aplicado ao modelo NEWAVE toy
  newave_toy_pdde.ipynb        # Exploracao PDDE/NEWAVE
docs/                          # Documentacao em Markdown
  Programacao Dinamica.md      # Guia completo de Programacao Dinamica
```

## Regras Universais

1. **Commits**: Conventional Commits em portugues (feat/fix/docs/refactor/chore/cleanup/build/test). Mensagens descrevem o "por que". NUNCA incluir co-autoria em commits (nem `Co-Authored-By: Claude` ou qualquer variante)
2. **Codigo**: Ruff com line-length=105, quote-style=single, target-version=py311
3. **Imports**: isort com `profile=black`
4. **Variaveis**: Nomes em portugues, snake_case. Prefixos: `lst_` (listas), `df_` (DataFrames)
5. **Branch protegida**: Nunca commitar diretamente em `main`

## Documentacao Modular (.claude/)

### Regras (rules/)

| Arquivo | Descricao |
|---------|-----------|
| [code-style.md](.claude/rules/code-style.md) | Convencoes de estilo de codigo |
| [architecture.md](.claude/rules/architecture.md) | Arquitetura e estrutura de diretorios |
| [review.md](.claude/rules/review.md) | Metodologia de revisao de codigo |
| [testing.md](.claude/rules/testing.md) | Convencoes de testes |
| [gotchas.md](.claude/rules/gotchas.md) | Armadilhas e cuidados conhecidos |
| [security.md](.claude/rules/security.md) | Seguranca e gestao de secrets |
| [commits.md](.claude/rules/commits.md) | Conventional Commits e boas praticas |
| [workflow.md](.claude/rules/workflow.md) | Fluxo de trabalho e branches |

### Skills (skills/)

| Skill | Comando | Descricao |
|-------|---------|-----------|
| [commit](.claude/skills/commit/SKILL.md) | `/commit` | Conventional Commits em portugues |
| [check](.claude/skills/check/SKILL.md) | `/check` | Lint + testes |

## Gatilhos Contextuais

Ao realizar cada tipo de tarefa, leia o arquivo indicado ANTES de comecar:

| Tarefa | Ler primeiro |
|--------|-------------|
| Modificar codigo Python | [code-style.md](.claude/rules/code-style.md) |
| Revisar codigo ou diagnosticar bug | [review.md](.claude/rules/review.md) |
| Criar/modificar notebook ou modulo | [architecture.md](.claude/rules/architecture.md) + [gotchas.md](.claude/rules/gotchas.md) |
| Criar/modificar testes | [testing.md](.claude/rules/testing.md) |
| Fazer commits ou branches | [commits.md](.claude/rules/commits.md) |
| Fluxo de trabalho | [workflow.md](.claude/rules/workflow.md) |
