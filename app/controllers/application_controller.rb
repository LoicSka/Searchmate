class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  require "google-search"

  private

  def find_search test, category
    source = ""
    case category
      when "Book"
        Google::Search::Book.new do |search|
          search.query = test
          search.size = :large
        end.each do |item| 
          source +="<a href= \" #{item.uri}\">#{item.title}</a><br />"
        end
        return source  
      when "News"
        Google::Search::News.new do |search|
          search.query = test
          search.size = :large
        end.each do |item| 
          source +="<a href= \" #{item.uri}\">#{item.title}</a><br />"
        end
        return source
      when "Blog"
        Google::Search::Blog.new do |search|
          search.query = test
          search.size = :large
        end.each do |item| 
          source +="<a href= \" #{item.uri}\">#{item.title}</a><br />"
        end
        return source
      when "Video"
        Google::Search::Video.new do |search|
          search.query = test
          search.size = :large
        end.each do |item| 
          source +="<a href= \" #{item.uri}\">#{item.title}</a><br />"
        end
        return source
      when "Image"
        Google::Search::Image.new(:query => test, :image_size => :icon).each do |image|
        source += "<img id='im' class='img-responsive img-thumbnail' src=#{image.uri} width='212' height='200'>"
        end
        return source
      else 
        Google::Search::Web.new do |search|
          search.query = test
          search.size = :large
        end.each do |item| 
          source +="<a href= \" #{item.uri}\">#{item.title}</a><br />"
        end
        return source
      end
    end
end