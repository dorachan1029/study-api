require "json"
require "date"
require "jsonpath"

class BookController < ApplicationController

  def listSummary

    # パラメータの値を引数に格納
    year = params[:year]
    month = params[:month]
    day = params[:day]

    book_list = {
      list: {
        year: year,
        month: month,
        day: day,
      }
    }

    if params[:format] == 'xml'
      render :xml => book_list
    elsif params[:format] == 'json'
      render :json => book_list
    else
      render :text => "error"
    end
  end
end