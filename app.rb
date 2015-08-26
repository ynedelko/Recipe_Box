require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  @tags = Tag.all()
  erb(:index)
end

post('/tags') do
  name = params.fetch("name")
  tag = Tag.new({:name => name, :id => nil})
  tag.save()
  @tags = Tag.all()
  erb(:index)
end

get('/tags/:id') do
  @tag = Tag.find(params.fetch("id").to_i())
  erb(:tag_detail)
end

delete('/tags/:id/delete') do
  id = params.fetch("id").to_i()
  @tag = Tag.find(id)
  @tag.destroy()
  redirect("/")
end

patch('/tags/:id') do
  new_name = params.fetch("name")
  id = params.fetch("id").to_i()
  @tag = Tag.find(id)
  @tag.update({:name => new_name})
  erb(:tag_detail)
end
