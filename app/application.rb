#If it's before noon, greet the user with "Good Morning!"
#If it's after noon, greet the user with "Good Afternoon!". Remember
#that getting the time may return results in 24 hour time! Anytime after 12 is the afternoon.

class Application

  def call(env)
    resp = Rack::Response.new

    t = Time.now
    if t.hour < 12  && t.hour > 0
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
    end

end
