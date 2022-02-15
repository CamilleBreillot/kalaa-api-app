json.array! @indicators do |indicator|
  json.extract! indicator, :id, :name, :value
end
