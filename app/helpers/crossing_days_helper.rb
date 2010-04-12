module CrossingDaysHelper
	def today_date_in_russian_style
		format_date_to_russian(Date.today)
	end
	
	def format_date_to_russian(date)
		date.strftime('%d.%m.%Y')
	end
		
	def where_is(user)
		user.abroad? ? 'Эстонии' : 'России'
	end
end
