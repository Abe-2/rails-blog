class RemoveBodyFromArticles < ActiveRecord::Migration[6.1]
  def change
    remove_column :articles, :body, :string
  end
end
