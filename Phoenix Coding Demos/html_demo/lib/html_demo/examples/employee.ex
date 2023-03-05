defmodule HtmlDemo.Examples.Employee do
  use Ecto.Schema
  import Ecto.Changeset

  schema "employees" do
    field :name, :string
    field :titke, :string

    timestamps()
  end

  @doc false
  def changeset(employee, attrs) do
    employee
    |> cast(attrs, [:name, :titke])
    |> validate_required([:name, :titke])
  end
end
