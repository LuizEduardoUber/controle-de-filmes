# App de Controle de Filmes Assistidos

## Descrição
Este projeto é um aplicativo que permite ao usuário marcar os filmes que já assistiu, adicionar comentários e receber recomendações personalizadas.

## Escopo
O escopo deste projeto abrange:

- **Marcação de Filmes:** O usuário pode adicionar filmes à sua lista de assistidos e marcá-los como assistidos.
- **Comentários:** Os usuários podem adicionar comentários sobre os filmes assistidos.
- **Recomendações:** O aplicativo oferece recomendações baseadas nos filmes que o usuário já assistiu.

## Tecnologias e Widgets Utilizados
- **Widgets:**
  - `Text`: Para exibir informações dos filmes.
  - `Icon`: Para botões e ícones de interação.
  - `ListView`: Para mostrar a lista de filmes assistidos.
  - `Image`: Para exibir capas de filmes.

- **Stateful Widget:** Utilizado para adicionar e remover filmes da lista de assistidos.

- **Stateless Widget:** Usado para exibir a lista de filmes assistidos.

- **Scaffold:** Com AppBar contendo um botão para adicionar filmes.

- **List:** Para armazenar e exibir os filmes assistidos.

- **Map:** Para guardar informações dos filmes, como:
  ```dart
  {'titulo': 'Matrix', 'assistido': true}

## Paleta de Cores

A paleta de cores escolhida para este projeto é a seguinte:

<div style="display: flex; gap: 10px;">
  <div style="width: 50px; height: 50px; background-color: #651366;"></div>
  <div style="width: 50px; height: 50px; background-color: #a71a5b;"></div>
  <div style="width: 50px; height: 50px; background-color: #e7204e;"></div>
</div>


## Contribuições
Sinta-se à vontade para contribuir com ideias, melhorias e sugestões. Juntos, podemos tornar este aplicativo ainda mais incrível!

## Como Usar
Adicionar Filme: Clique no botão "+" na AppBar para adicionar um filme à lista.
Marcar como Assistido: Selecione um filme da lista e marque como assistido.
Adicionar Comentários: Clique no filme para adicionar seus comentários e avaliações.
Receber Recomendações: Confira as sugestões de filmes baseadas no seu histórico.
