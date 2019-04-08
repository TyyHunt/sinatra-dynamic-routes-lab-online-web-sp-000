require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @squared = @num * @num
    "#{@squared}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @speech = "#{@phrase}" * @num
    "#{@speech}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @first = params[:word1]
    @sec = params[:word2]
    @third = params[:word3]
    @fourth = params[:word4]
    @fifth = params[:word5]
    @sentence = "#{@first} #{@sec} #{@third} #{@fourth} #{@fifth}."
    "#{@sentence}"
  end

  get '/:operation/:number1/:number2' do
    @sign = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    
  end
end
