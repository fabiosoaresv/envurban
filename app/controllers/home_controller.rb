class HomeController < ActionController::Base
  def check_for_mobile
    before_filter :check_for_mobile
    session[:mobile_override] = params[:mobile] if params[:mobile]
    prepare_for_mobile if mobile_device?
  end

  def prepare_for_mobile
    prepend_view_path Rails.root + 'app' + 'views_mobile'
  end

  def mobile_device?
    if session[:mobile_override]
      session[:mobile_override] == "1"
    else
      # Season this regexp to taste. I prefer to treat iPad as non-mobile.
      # Font http://scottwb.com/blog/2012/02/23/a-better-way-to-add-mobile-pages-to-a-rails-site/
      (request.user_agent =~ /(iPhone|iPod|Android|webOS|Mobile)/) && (request.user_agent !~ /iPad/)
    end
  end
  helper_method :mobile_device?
end
