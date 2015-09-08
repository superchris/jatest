defmodule Jatest.Thing do
  use Jatest.Web, :model

  schema "things" do
    field :foo, :string
    field :bar, :integer

    timestamps
  end

  @required_fields ~w(foo bar)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
