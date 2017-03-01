get '/' do
  @poops = Poop.all
  erb :"index"
end

post '/poop' do
  @poop = Poop.new(params[:poop])

  if @poop.save
    if request.xhr?
      erb :"_poop", locals: { poop: @poop }, layout: false
    else
      redirect "/"
    end
  else # if it didn't save
    @errors = @poop.errors.full_messages
    # @errors = ["This is a custom message"]
    erb :"index"
  end
end
