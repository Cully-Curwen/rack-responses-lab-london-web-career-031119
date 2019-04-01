class Application
 
  def call(env)
    resp = Rack::Response.new

    time = Time.now
    t = time.hour
    if t < 12
      resp.write "Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end
 
end