class Application
  
  @@items = []
 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
 
    if req.path.match(/items/)
      item.name = req.path.split("/items/").last
      item = @@items.find {|i| i.name == item.name}
        if item
      resp.write "#{items.price}"
    else
      resp.write "Route not found"
      resp.status = 404
    end
 
    resp.finish
  end
end