class BookController < ApplicationController
  def name
    if :format => 'xml'
      render :xml => "kontiwa"
    elsif :format == 'json'
      render :json => "kontiwa"
    end
  end
end
