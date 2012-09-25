module ApplicationHelper
  def format_datetime(datetime)
    if datetime.nil?
      datetime
    else
      datetime.strftime("%Y-%m-%d %H:%M:%S")
    end
  end
end
