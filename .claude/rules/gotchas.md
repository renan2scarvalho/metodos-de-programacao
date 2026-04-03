---
description: Armadilhas e comportamentos nao-obvios do projeto Metodos de Programacao
---

# Gotchas - Metodos de Programacao

## Notebooks e Estado Global

Notebooks Jupyter mantem estado entre celulas. Se reexecutar uma celula fora de ordem, variaveis podem estar em estado inconsistente. Sempre usar "Restart & Run All" para garantir reproducibilidade.

## Dependencias de Celulas

Celulas de notebook dependem da ordem de execucao, NAO da posicao no arquivo. Sempre documentar dependencias entre celulas via comentarios ou celulas Markdown explicativas.

## Visualizacoes Matplotlib

Usar `plt.show()` explicitamente ao final de cada bloco de visualizacao para evitar sobreposicao de figuras em ambientes interativos.

## Nomenclatura dos Notebooks

Os notebooks `pdde_newave_toy_v0.ipynb` e `newave_toy_pdde.ipynb` cobrem conteudo similar com abordagens ligeiramente diferentes. O `newave_toy_pdde.ipynb` e a versao mais atual.

## pyproject.toml com packages = []

O projeto nao define pacotes Python distribuiveis (`packages = []`). O setuptools e usado apenas para suporte a ferramentas de desenvolvimento. NAO adicionar pacotes de aplicacao sem necessidade real.

## Testes sem app/

A configuracao de testes em `pyproject.toml` usa `--cov=app`, mas o projeto nao tem diretorio `app/`. Se adicionar testes, ajustar o path de cobertura conforme o modulo real.
