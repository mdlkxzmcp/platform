import "phoenix_html"

const elmContainer = document.querySelector(".elm-container");
const elmGameContainer = document.querySelector(".elm-game-container");

if (elmContainer) {
  const elmApplication = Elm.Main.embed(elmContainer);
}

if (elmGameContainer) {
  const elmGame = Elm.Game.embed(elmGameContainer);
}
