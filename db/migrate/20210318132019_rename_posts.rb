class RenamePosts < ActiveRecord::Migration[5.1]
  def change
    rename_column :posts,:cantent_ja,:content_ja
  end
end
