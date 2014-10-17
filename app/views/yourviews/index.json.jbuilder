json.array!(@yourviews) do |yourview|
  json.extract! yourview, :id, :post_id, :body
  json.url yourview_url(yourview, format: :json)
end
