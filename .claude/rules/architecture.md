---
description: Arquitetura e estrutura de diretorios do projeto Metodos de Programacao
---

# Arquitetura - Metodos de Programacao

## Estrutura de Diretorios

```
metodos-de-programacao/
├── jupyter/                         # Notebooks interativos de estudo
│   ├── programacao_dinamica.ipynb   # Programacao Dinamica (memoization, tabulation)
│   ├── pdde_newave_toy_v0.ipynb     # PDDE aplicado ao modelo NEWAVE toy (v0)
│   └── newave_toy_pdde.ipynb        # Exploracao PDDE/NEWAVE (versao atual)
├── docs/                            # Documentacao em Markdown
│   └── Programacao Dinamica.md      # Guia completo de Programacao Dinamica
├── tests/                           # Testes (pytest) — quando houver codigo Python isolado
├── .claude/                         # Configuracoes e regras do Claude Code
│   ├── settings.json
│   ├── rules/                       # Regras de governanca do projeto
│   └── skills/                      # Skills customizadas do Claude Code
├── CLAUDE.md                        # Entrada principal para o Claude Code
├── QUICKSTART.md                    # Guia rapido de uso
├── setup.sh                         # Script de configuracao do ambiente
└── pyproject.toml                   # Configuracao do projeto Python
```

## Principios de Organizacao

- **Notebooks**: toda exploracao interativa vai em `jupyter/`
- **Documentacao**: todo material explicativo em Markdown vai em `docs/`
- **Codigo Python isolado**: se extraido de notebook para modulo reutilizavel, vai na raiz ou subpacote dedicado
- **Testes**: cobertura de qualquer modulo Python isolado via pytest em `tests/`

## Novos Topicos de Estudo

Ao adicionar um novo metodo/topico:
1. Criar notebook em `jupyter/<nome_do_topico>.ipynb`
2. Criar documentacao em `docs/<Nome do Topico>.md` (opcional, mas recomendado)
3. Registrar no QUICKSTART.md na tabela de notebooks
