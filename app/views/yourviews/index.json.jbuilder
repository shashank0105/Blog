json.array!(@yourviews) do |yourview|
  json.extract! yourview, :id, :article_id, :body
  json.url yourview_url(yourview, format: :json)
end
