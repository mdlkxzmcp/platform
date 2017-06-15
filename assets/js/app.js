import "phoenix_html"

const elmContainer = document.querySelector(".elm-container");

if (elmContainer) {
  const elmApplication = Elm.Main.embed(elmContainer);
}
