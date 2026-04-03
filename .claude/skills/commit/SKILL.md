---
description: Cria commits seguindo Conventional Commits em portugues
user_invocable: true
---

# /commit

Crie um commit seguindo as convencoes do projeto:

1. Execute `git status` e `git diff --cached` para ver as mudancas staged
2. Se nao houver mudancas staged, faca `git add` dos arquivos relevantes (NUNCA use `git add .`)
3. Analise as mudancas e classifique: feat, fix, docs, refactor, chore, cleanup, build, test
4. Escreva a mensagem em portugues, descrevendo o **por que** da mudanca
5. Primeira linha com no maximo 72 caracteres
6. **NUNCA** inclua Co-Authored-By — nem `Co-Authored-By: Claude` nem qualquer variante
7. **NUNCA** commite arquivos sensiveis ou segredos
8. Execute o commit

Formato: `<tipo>: <descricao em portugues>`

Exemplos:
- `feat: adiciona notebook de programacao por restricoes`
- `fix: corrige calculo de custo futuro no PDDE toy`
- `docs: atualiza documentacao de Programacao Dinamica`
- `chore: atualiza dependencias do pyproject.toml`
