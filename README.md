# App de Controle de Filmes Assistidos

## Descrição
Este projeto é um aplicativo que permite ao usuário marcar os filmes que já assistiu, adicionar comentários e receber recomendações de filmes.

## Escopo
O escopo deste projeto abrange:

- **Marcação de Filmes:** O usuário pode adicionar filmes à sua lista de assistidos e marcar como assistidos.
- **Comentários:** Os usuários podem adicionar comentários sobre os filmes assistidos.
- **Recomendações:** O aplicativo oferece recomendações baseadas nos filmes que o usuário já assistiu.

### Tecnologias e Widgets Utilizados
- **Widgets:**
  - `Text`: Para exibir informações dos filmes.
  - `Icon`: Para botões e ícones de interação.
  - `ListView`: Para mostrar a lista de filmes assistidos.
  - `Image`: Para exibir capas de filmes.

- **Stateful Widget:** Para adicionar e remover filmes da lista de assistidos.

- **Stateless Widget:** Para exibir a lista de filmes assistidos.

- **Scaffold:** Com AppBar contendo um botão para adicionar filmes.

- **List:** Para armazenar e exibir os filmes assistidos.

- **Map:** Para guardar informações dos filmes, como:
  ```dart
  {'titulo': 'Matrix', 'assistido': true}

Paleta de Cores
A paleta de cores escolhida para este projeto é a seguinte:

#651366
#a71a5b
#e7204e
