---
description: Regras de seguranca do projeto Metodos de Programacao
---

# Seguranca - Metodos de Programacao

## Arquivos Sensiveis

Este projeto nao possui credenciais, tokens ou segredos por padrao. Caso sejam adicionados no futuro:

| Arquivo | Conteudo | Git-ignored? |
|---------|----------|--------------|
| `.env` | Variaveis de ambiente | Sim |
| `*.secrets.*` | Qualquer credencial | Sim |

## Regras ao Modificar

1. **NUNCA** commitar arquivos com tokens, senhas ou chaves de API
2. **NUNCA** logar informacoes sensiveis em notebooks ou scripts
3. Ao adicionar integracao com API externa: criar `.env.example` como template git-versionado e `.env` como git-ignored
4. Verificar `.gitignore` antes de adicionar arquivos de configuracao local
