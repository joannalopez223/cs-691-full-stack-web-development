defmodule HtmlDemo.ExamplesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `HtmlDemo.Examples` context.
  """

  @doc """
  Generate a employee.
  """
  def employee_fixture(attrs \\ %{}) do
    {:ok, employee} =
      attrs
      |> Enum.into(%{
        name: "some name",
        titke: "some titke"
      })
      |> HtmlDemo.Examples.create_employee()

    employee
  end
end
