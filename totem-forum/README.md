# Totem interativo – Fórum de Tecnologia

Protótipo da tela touch do estande: 4 projetos em destaque. Ao tocar em um projeto, o vídeo abre em tela cheia; ao terminar, aparece "Obrigado por assistir!" e a tela volta sozinha para o início.

## Como funciona

1. **Tela inicial** – grade 2x2 com os 4 projetos (área, título, descrição, turma e botão ▶).
2. **Toque no cartão** – o vídeo do projeto abre em tela cheia, com barra de progresso.
3. **Fim do vídeo** – aviso de 3 segundos e retorno automático à tela inicial.
4. **Botão "Voltar ao início"** – sai do vídeo a qualquer momento.
5. **Segurança do totem** – se o vídeo ficar pausado por 1 minuto, volta sozinho; menu de toque longo e zoom de pinça desativados; a tela não apaga (quando o navegador permite).

Enquanto os vídeos reais não estiverem na pasta, o totem mostra um **vídeo simulado** de 12 segundos, para apresentar o fluxo completo à gestão.

## Como colocar os vídeos reais

1. Salve os vídeos na pasta `videos/` com estes nomes:
   - `projeto-1.mp4`, `projeto-2.mp4`, `projeto-3.mp4`, `projeto-4.mp4`
2. Formato recomendado: **MP4 (H.264 + AAC), 1920x1080**.
3. (Opcional) Coloque fotos de capa em `imagens/` e preencha o campo `imagem` do projeto.

## Como trocar textos e projetos

Abra `index.html` em qualquer editor de texto e altere o bloco **CONFIGURAÇÃO** (no início do `<script>`):

- `CONFIG` – nome do evento, chamada, instituição, tempos de retorno, esconder cursor.
- `PROJETOS` – para cada projeto: `area`, `titulo`, `descricao`, `equipe`, `video`, `imagem`, `cor`.

> Os 4 projetos atuais são **exemplos** para o protótipo. Substitua pelos projetos reais.

## Como rodar no evento (Windows)

Dê dois cliques em `iniciar-totem.bat`. Ele abre o Google Chrome em **modo quiosque** (tela cheia, sem barra de endereço) e com o som do vídeo liberado.

Para sair do modo quiosque: `Alt + F4`.

Dicas para o dia:
- Em `CONFIG`, mude `esconderCursor` para `true`.
- Desative a suspensão de tela e as notificações do Windows.
- Funciona sem internet. Sem internet, apenas a fonte do título muda para a fonte padrão do sistema.
- A tela também funciona em pé (retrato): os cartões ficam um embaixo do outro.
