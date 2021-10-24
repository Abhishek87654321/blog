# frozen_string_literal: true

class AddColumnsToArticle < ActiveRecord::Migration[6.1]
  def change
    remove_column :articles, :name
    add_column :articles, :title, :string
    add_column :articles, :body, :text
  end
end
