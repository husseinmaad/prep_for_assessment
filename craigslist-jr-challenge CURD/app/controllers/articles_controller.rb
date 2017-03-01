get '/articles/:id' do 
  erb :'articles/edit.html'
end 
get '/categories/:id/articles' do
  redirect "/categories/#{params[:id]}"
end 

get '/categories/:category_id/articles/:id' do
  @category = Category.find(params[:category_id])
  
  @article = @category.articles.find(params[:id])
  erb :'articles/show.html'
end 

post '/categories/:id/articles/new' do
 
  @category= Category.find(params[:id])
  
  article = Article.create(params[:article])
  if article.save
    @category.articles << article
    redirect "/categories/#{@category.id}/articles"
  end 
end 

get '/categories/:category_id/articles/:id/edit' do
  @category = Category.find(params[:category_id])
  
  @article = Article.find (params[:id])
  # require 'pry-byebug'
  # binding.pry
  erb :'/articles/edit.html'
end

put '/categories/:category_id/articles/:id' do

  @category = Category.find(params[:category_id])

  @article = @category.articles.find(params[:id])
  #  require 'pry-byebug'
  # binding.pry

  if @article.update_attributes(params[:article])
    redirect "/categories/#{@category.id}/articles"
  else 
    erb :'articles/edit' #show edit articles view again(potentially displaying errors)
  end
end 

delete '/categories/:category_id/articles/:id' do
  @category = Category.find(params[:category_id])
  
  @article = @category.articles.find(params[:id])
  @article.destroy
  redirect "/categories/#{@category.id}/articles"
end 