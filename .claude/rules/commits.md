---
description: Regras de commits do projeto Metodos de Programacao
---

# Commits - Metodos de Programacao

## Regra Critica

**NUNCA incluir co-autoria (Co-Authored-By) em commits.** Isso inclui qualquer variante do Claude (`Co-Authored-By: Claude`, `Co-Authored-By: Claude Sonnet`, etc.) ou qualquer outra ferramenta ou agente que gere commits automaticamente.

## Conventional Commits

Formato: `<tipo>: <descricao em portugues>`

### Tipos permitidos

| Tipo | Uso |
|------|-----|
| `feat` | Novo notebook ou funcionalidade |
| `fix` | Correcao de bug ou erro no notebook |
| `docs` | Documentacao (README, docs/, QUICKSTART) |
| `refactor` | Refatoracao sem mudanca de comportamento |
| `chore` | Tarefas de manutencao (deps, configs) |
| `cleanup` | Limpeza de codigo morto ou obsoleto |
| `build` | Alteracoes no build ou dependencias |
| `test` | Adicao ou correcao de testes |

### Exemplos

```
feat: adiciona notebook de programacao por restricoes
fix: corrige calculo de custo futuro no PDDE toy
docs: atualiza documentacao de Programacao Dinamica com exemplos
refactor: extrai funcao de memoization para modulo separado
chore: atualiza dependencias do pyproject.toml
build: migra gerenciador de pacotes para uv
```

## Boas Praticas

1. Mensagem descreve o **por que**, nao o **o que**
2. Primeira linha com no maximo 72 caracteres
3. Corpo opcional para contexto adicional
4. NUNCA commitar em `main` diretamente
5. NUNCA commitar arquivos sensiveis ou segredos
