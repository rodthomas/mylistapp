json.array!(@mylists) do |mylist|
  json.extract! mylist, :id, :productName, :quantity, :itemsPerPack, :unit, :price
  json.url mylist_url(mylist, format: :json)
end
