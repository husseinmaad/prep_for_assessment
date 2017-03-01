get '/categories' do
  @categories = Category.all 
  erb :'categories/index.html'
end 

get '/categories/:id' do
  p params
  @category = Category.find(params[:id])
  erb :'categories/show.html'
end 
