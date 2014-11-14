module ChargesHelper
  def options_for_chargeables
  	options_str = ""
  	options_str += "<option>--- Please select ---</option>"
  	User.all.each do |o|
  	  options_str += "<option value='#{o.id}' data-option-type='user' id='#{o.id}_user'>#{o.name}</option>"
  	end
  	Company.all.each do |o|
  	  options_str += "<option value='#{o.id}' data-option-type='company' id='#{o.id}_company'>#{o.name}</option>"
  	end
  	options_str.html_safe
  end
end
