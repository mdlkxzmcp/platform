# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Platform.Repo.insert!(%Platform.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
Platform.Repo.insert!(%Platform.Accounts.Player{
  display_name: "José Valim", username: "josevalim", score: 1000})
Platform.Repo.insert!(%Platform.Accounts.Player{
  display_name: "Evan Czaplicki", username: "evancz", score: 2000})
Platform.Repo.insert!(%Platform.Accounts.Player{
  display_name: "Maximiliaan Strother III", username: "mdlkxzmcp", score: 0})
# Platform.Repo.insert!(%Platform.Accounts.Player{
  # display_name: "Karol Świerczek", username: "FungusAmongus", score: 9001})
Platform.Repo.insert!(%Platform.Accounts.Player{
  display_name: "Kurt Cobain", username: "Xx_22DaRkAnGeL22_xX", score: 42})
