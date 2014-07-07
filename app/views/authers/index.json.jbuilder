json.array!(@authers) do |auther|
  json.extract! auther, :id, :name, :date_of_birth, :book_id
  json.url auther_url(auther, format: :json)
end
