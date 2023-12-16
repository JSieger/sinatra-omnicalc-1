require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/square/new") do
  erb(:new_square_calc)
end

get("/square/results") do
  @users_number = params.fetch("users_number").to_i

  @square = @users_number ** 2.0

  erb(:square_results)
end

get("/square_root/new") do
  erb(:new_sqrt_calc)
end

get("/square_root/results") do
  @users_number = params.fetch("users_number").to_i

  @square_root = @users_number ** 0.5

  erb(:sqrt_results)
end

get("/payment/new") do
  erb(:new_payment_calc)
end

get("/payment/results") do
  @user_apr = params.fetch("user_apr").to_f
  @user_years = params.fetch("user_years").to_i
  @user_pv = (params.fetch("user_pv").to_f).round(2)

  r = (@user_apr / 100.0) / 12.0
  n = @user_years * 12

  top = @user_pv * r
  bottom = 1 - ((1 + r) ** (-n))

  @payment = (top / bottom).round(2)

  erb(:new_payment_results)
end

get("/random/new") do 
  erb(:new_random_calc)
end
