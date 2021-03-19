class AddCantentJaPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts,:cantent_ja,:string
  end
end
