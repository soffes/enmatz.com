require 'open-uri'
require 'json'
require 'google_translate'

class TweetController < ApplicationController

  def index
    url = 'http://twitter.com/statuses/user_timeline/yukihiro_matz.json'
    buffer = open(url, "UserAgent" => "Ruby-Wget").read
    @tweets = JSON.parse(buffer)
  end

end
