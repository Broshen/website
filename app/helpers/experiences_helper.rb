module ExperiencesHelper

	def parse_date(date)

		date_arr = date.split('-')

		if Date::MONTHNAMES[date_arr[1].to_i] && date_arr[0]
			return Date::MONTHNAMES[date_arr[1].to_i] + " "+ date_arr[0]
		else
			return " - "
		end
	end
end
