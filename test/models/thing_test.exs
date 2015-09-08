defmodule Jatest.ThingTest do
  use Jatest.ModelCase

  alias Jatest.Thing

  @valid_attrs %{bar: 42, foo: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Thing.changeset(%Thing{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Thing.changeset(%Thing{}, @invalid_attrs)
    refute changeset.valid?
  end
end
