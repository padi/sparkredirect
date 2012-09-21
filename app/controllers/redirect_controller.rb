class RedirectController < ApplicationController
  def index
    if request_from_mobile?
      redirect_to "/redirect.html"
    else
      redirect_to "/default.html"
    end
  end

  private

  def request_from_mobile?
    request.user_agent =~ /Mobile|webOS/
  end
end
