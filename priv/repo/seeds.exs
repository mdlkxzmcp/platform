# Players

Platform.Repo.insert!(%Platform.Accounts.Player{
  display_name: "José Valim", username: "josevalim", password: "josevalim", score: 1000})
Platform.Repo.insert!(%Platform.Accounts.Player{
  display_name: "Evan Czaplicki", username: "evancz", password: "evanczapl", score: 2000})
Platform.Repo.insert!(%Platform.Accounts.Player{
  display_name: "Max Strother", username: "mdlkxzmcp", password: "mdlkxzmcp", score: 0})
Platform.Repo.insert!(%Platform.Accounts.Player{
  display_name: "Karol Świerczek", username: "FungusAmongus", password: "charless", score: 9001})
Platform.Repo.insert!(%Platform.Accounts.Player{
  display_name: "Kurt Cobain", username: "Xx_22DaRkAnGeL22_xX", password: "rip_sweet_prince", score: 42})

# Games

Platform.Repo.insert!(%Platform.Products.Game{
  title: "Megaman Battle Network 6", description: "RPG game example.", author_id: 1})
Platform.Repo.insert!(%Platform.Products.Game{
  title: "Initial D", description: "Driving game example.", author_id: 2})
Platform.Repo.insert!(%Platform.Products.Game{
  title: "Else Heart.Break()", description: "Adventure game example.", author_id: 3})
