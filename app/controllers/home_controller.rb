class HomeController < ApplicationController
  def index
  end
  
  def create_job
    HardWorker.perform_async('bob', 5)
    redirect_to(root_path)
  end
end
