class HomeController < ApplicationController
  def index
    puts Rails.root.join("db/ack-data.json")
    file = File.read(Rails.root.join("db/ack-data.json"))
    data = JSON.parse(file)

    @info = data["info"]
    @social = data["social"]
    @kit = data["kit"]
  end
end
