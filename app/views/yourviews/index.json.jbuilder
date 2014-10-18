json.array!(@yourviews) do |yourview|
<<<<<<< HEAD
  json.extract! yourview, :id, :article_id, :body
=======
  json.extract! yourview, :id, :post_id, :body
>>>>>>> 8d36c7b124e85e35b34a20759d6f392241cfcb51
  json.url yourview_url(yourview, format: :json)
end
