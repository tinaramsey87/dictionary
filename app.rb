require('sinatra')
require('sinatra/reloader')
also_reload('./lib/**/*.rb')
require('./lib/term.rb')

get('/') do
  @terms = Term.all()
  erb(:index)
end

post('/term') do
  @word = params.fetch('word')
  @definition = params.fetch('definition')
  term = Term.new(@word, @definition)
  term.add()
  @terms = Term.all()
  erb(:index)
end

get('/term/:id') do
  @term = Term.find(params.fetch("id"))
  erb(:definition)
end

get('/delete/:id') do
  Term.delete(params.fetch("id"))
  @terms = Term.all()
  erb(redirect to("/"))
end
