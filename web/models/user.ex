defmodule Support.User do
  use Support.Web, :model

  schema "users" do
    field :name, :string
    field :email, :string
    field :encrypted_password, :string

    field :password, :string, virtual: true
    field :password_confirmation, :string, virtual: true

    timestamps
  end

  @required_fields ~w(name email password password_confirmation)
  @optional_fields ~w()

  def changeset(model, :register, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
    |> validate_length(:name, min: 1, message: "cannot be blank")
    |> validate_length(:email, min: 1, message: "cannot be blank")
    |> validate_format(:eamil, ~r/@/)
  end
end
