require 'rubygems'
require 'net/http'
require 'json'
require 'cgi'
require 'uri'
require 'htmlentities'
 
class GoogleTranslate
  attr_accessor :text, :to_language, :from_language
  
  def initialize(text, to_language = "en", from_language = "")
    @text = text
    @to_language = to_language
    @from_language = from_language
    @uri = URI.parse("http://ajax.googleapis.com/ajax/services/language/translate")
  end
  
  def translate(text = nil)
    coder = HTMLEntities.new
    coder.decode(JSON.parse(request)['responseData']['translatedText'])
  end
  
  private

  def request
    Net::HTTP.get(@uri.host, "#{@uri.path}?#{params}")
  end
  
  def params
    { :langpair => "#{@from_language}|#{@to_language}", 
      :q => @text,
      :v => 1.0 }.map { |k,v| "#{k}=#{CGI.escape(v.to_s)}" }.join('&')
  end
end
 
 
class String
  def method_missing(method, *args)
    if method.to_s =~ /^to_ja$/ || method.to_s =~ /^to_en$/
      GoogleTranslate.new(self, method.to_s.match(/^to_(\w{2})$/)[1], args[0]).translate
    else
      super(method, args)
    end
  end
end
