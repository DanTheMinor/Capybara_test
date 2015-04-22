require('sinatra')
require('sinatra/reloader')
require('./lib/scrabblescore')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/word') do
  @score = params.fetch('word').scrabblescore()
  erb(:score)
end
