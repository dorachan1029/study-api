class BookController < ApplicationController
  def name
    if params[:format] == 'xml'
      render :xml => "xmlkontiwa"
    elsif params[:format] == 'json'
      render :json => ["jsonkontiwa", "json"]
    else
      render :text => "error"
    end
  end
end