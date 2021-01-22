require 'pry'
class Application

    def call(env)
        binding.pry
      resp = Rack::Response.new
      time_in_day = rand(1..24)
  
      if time_in_day >= 12
        resp.write "Good Afternoon!"
      else
        resp.write "Good Morning!"
      end
      
      resp.finish
    end
  
  end