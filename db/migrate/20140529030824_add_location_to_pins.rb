class AddLocationToPins < ActiveRecord::Migration
  def change
    add_column :pins, :locale, :string
  end
end
