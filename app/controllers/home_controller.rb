class HomeController < ApplicationController
  def index
  end

  def data
  	render json: Datapoint.group_by_hour(:interval).average(:value)
  end

  def generatedata
		for i in 1..10
			@datapoint = Datapoint.new
    	@datapoint.interval = Time.now
    	@datapoint.value = 1 + rand(30)
    	@datapoint.save
 		end
 		render home_index_path   
  end
end
