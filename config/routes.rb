Rails.application.routes.draw do

  scope :v1 do
    get "/:format/book/list/summary" => "book#name"
  end

end
