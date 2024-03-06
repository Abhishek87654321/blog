json.extract! book, :id, :name, :quantity, :price, :user_id, :created_at, :updated_at
json.url book_url(book, format: :json)
