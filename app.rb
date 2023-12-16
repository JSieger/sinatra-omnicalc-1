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
