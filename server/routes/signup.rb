# Rename this file to hello.rb to try it out

class Routes::Signup < Bridgetown::Rack::Routes
  route do |r|
    # route: POST /hello/:name
    r.post "signup" do |email|
      Signup.create!(email: request.params["email"])
      r.redirect "/success"
    end
  end
end
