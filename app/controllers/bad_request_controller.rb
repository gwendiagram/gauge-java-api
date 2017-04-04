class BadRequestController < ApplicationController
  def index
  end

  def show
    # pull back the created file and return last modified
    if File.exist? 'data/bad_request.json'
      last_modified = File.read('data/bad_request.json')
      render json: last_modified
    else
      render template: "data/bad_request/show"
    end
  end

  def create
    # setting the time of the request
    time = Time.now.utc.iso8601
    # check the media type received
    received_request_type = request.media_type
    puts received_request_type

    if received_request_type.include? 'json'
      @json_body = request.raw_post

      File.open("data/bad_request.json",'w') do |f|
        f.write("{\"bad_request\": [{\"lastUpdated\": \"#{time}\"}, {\"mediaTypeUsed\": \"#{received_request_type}\",\"bodyReceived\": #{@json_body}}]}")
      end
    else

      json_body = request.raw_post
      @json_body = '"'+json_body+'"'

      File.open("data/bad_request.json",'w') do |f|
        f.write("{\"bad_request\": [{\"lastUpdated\": \"#{time}\"}, {\"mediaTypeUsed\": \"#{received_request_type}\",\"bodyReceived\": #{@json_body}}]}")
      end
    end
    render status: 400
  end
end
