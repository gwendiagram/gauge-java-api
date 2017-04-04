class PasswordResetController < ApplicationController
  def index
  end

  def show
    # pull back the created file and return last modified
    if File.exist? 'data/password_reset.json'
      last_modified = File.read('data/password_reset.json')
      render json: last_modified
    else
      render template: "data/password_reset/show"
    end
  end

  def create
      # setting the time of the request
      time = Time.now.utc.iso8601
      # check the media type received
      received_request_type = request.media_type
      puts received_request_type
      @received_request_type = received_request_type

      if received_request_type.include? 'json'
        @json_body = request.raw_post

        File.open("data/password_reset.json",'w') do |f|
          f.write("{\"password_reset\": [{\"lastUpdated\": \"#{time}\"}, {\"mediaTypeUsed\": \"#{received_request_type}\",\"bodyReceived\": #{@json_body}}]}")
        end
      else

        json_body = request.raw_post
        @json_body = '"'+json_body+'"'

        File.open("data/password_reset.json",'w') do |f|
          f.write("{\"password_reset\": [{\"lastUpdated\": \"#{time}\"}, {\"mediaTypeUsed\": \"#{received_request_type}\",\"bodyReceived\": #{@json_body}}]}")
        end
      end

      respond_to do |format|
        format.html { render status: 201}
        format.json { render status: 201 }
      end
  end

end
