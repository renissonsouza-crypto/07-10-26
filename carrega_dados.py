"""Etapa 1: ler o arquivo CSV com os dados da eleição."""

import pandas as pd

# Caminho do arquivo, a partir da pasta do projeto
CAMINHO_CSV = "dados/eleicoes.csv"


def carregar_dados():

    df = pd.read_csv(CAMINHO_CSV, dtype={"zona": str, "secao": str})
    return df


if __name__ == "__main__":
    df = carregar_dados()
    print(df.head())
