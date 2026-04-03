# LEITURA RAPIDA

Projeto de estudo dos principais metodos de programacao, com foco em Programacao Dinamica e metodos de decomposicao estocastica aplicados ao modelo NEWAVE (PDDE). O conteudo e entregue via Jupyter notebooks interativos e documentacao estruturada em Markdown.

## SETUP

Execute o script de setup para configurar o ambiente:

```sh
./setup.sh
```

Ou manualmente:

```sh
# Instalar dependencias
uv sync --extra dev

# Ativar ambiente virtual
source .venv/bin/activate
```

## JUPYTER

Iniciando o servidor Jupyter:

```sh
uv run jupyter notebook
```

Notebooks disponiveis em `jupyter/`:

| Notebook | Descricao |
|----------|-----------|
| `programacao_dinamica.ipynb` | Programacao Dinamica: memoization e tabulation |
| `pdde_newave_toy_v0.ipynb` | PDDE aplicado ao modelo NEWAVE toy (versao inicial) |
| `newave_toy_pdde.ipynb` | Exploracao PDDE/NEWAVE (versao atual) |

## QUALIDADE DE CODIGO

```sh
uv run task lint      # Verificar qualidade do codigo
uv run task format    # Formatar codigo com ruff
uv run task sort      # Ordenar imports com isort
uv run task fix       # Corrigir problemas automaticamente
uv run task test      # Rodar testes com cobertura
uv run task check     # lint + test
uv run task clean     # Limpar cache e artefatos
```

## DOCUMENTACAO

A documentacao tecnica esta em `docs/`:

- `Programacao Dinamica.md` — Guia completo com definicao, exemplos, memoization e tabulation
