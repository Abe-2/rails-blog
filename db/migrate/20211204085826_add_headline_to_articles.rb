class AddHeadlineToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :headline, :string
  end
end
