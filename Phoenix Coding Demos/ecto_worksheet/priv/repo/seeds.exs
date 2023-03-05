# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     EctoWorksheet.Repo.insert!(%EctoWorksheet.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
1..10 |> Enum.each(fn _ -> EctoWorksheet.Repo.insert!(
  %EctoWorksheet.Accounts.User{
    name: Faker.Person.name(),
    title: Faker.Person.title()})
  end)
