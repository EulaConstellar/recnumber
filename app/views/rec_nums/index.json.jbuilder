json.array!(@rec_nums) do |rec_num|
  json.extract! rec_num, :id, :number
  json.url rec_num_url(rec_num, format: :json)
end
