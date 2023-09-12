class EndpointController < ApplicationController
    def info
      slack_name = 'Tom Udoh' 
      track = 'backend track' 
      current_day = Date.today.strftime("%A")
      utc_time = Time.now.utc.strftime("%FT%T%Z")
      github_file_url = "https://github.com/tomdan-ai/ruby-hngx-endpoints/blob/main/app/controllers/endpoint_controller.rb"
      github_repo_url = "https://github.com/tomdan-ai/ruby-hngx-endpoints"
      status_code = 200
  
      response_data = {
        slack_name: slack_name,
        current_day: current_day,
        utc_time: utc_time,
        track: track,
        github_file_url: github_file_url,
        github_repo_url: github_repo_url,
        status_code: status_code
      }
  
      render json: response_data
    end
  end
  