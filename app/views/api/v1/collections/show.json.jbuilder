json.extract! @collection, :id, :name, :asso, :date
json.indicators @collection.indicators do |indicator|
  json.extract! indicator, :id, :name, :value
end
