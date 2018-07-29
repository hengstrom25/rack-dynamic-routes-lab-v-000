class Application
 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
 
    if req.path.match(/items/)
      item.name = req.path.split()
        if items
      resp.write "#{items.price}"
    else
      resp.write "Route not found"
      resp.status = 404
    end
 
    resp.finish
  end
end