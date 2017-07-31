defmodule DevconElixir.Repo.Migrations.CreateUserTable do
  use Ecto.Migration

  def up do
    create table(:users) do
      add :name, :string
      add :email, :string
    end
  end

  def down do
    drop table(:users)
  end
end
