json.array! @fields do |field|
  json.extract! field, :id, :name, :value
end
