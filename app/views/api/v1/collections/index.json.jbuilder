json.array! @collections do |collection|
  json.extract! collection, :id, :name, :asso, :date
end
