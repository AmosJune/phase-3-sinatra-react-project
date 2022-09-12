class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/authors" do
    Author.all.to_json
  end

  get "/quotes" do
    Quote.all.to_json
  end

  get "/authors/:email" do
    Author.find_by(email:params[:email]).to_json
  end

  post "/authors" do
    new_author = Author.create("name":params[:name], "email":params[:email], "password":params[:password])
    new_author.to_json
  end

  get "/reviews" do
    Review.all.to_json(include: [:author, :quote])
  end

  post "/reviews" do
    Review.create("quote_id" :params[:quote_id], "author_id":params[:author_id]) 
  end 

  delete "/review/:id" do
    Review.find(params[:id]).destroy
  end

end
