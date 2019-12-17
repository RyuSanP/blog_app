class AddUserIdToArticle < ActiveRecord::Migration[6.0]
  def change
    add_reference :articles, :user, index: true
  end
end
