module ApplicationHelper

	def ringgit(price)
		number_to_currency(price, unit: "RM")
	end

	Student.class_eval do 
		def due_month
			if self.payments.empty?
				Date.today
			else
				(self.payments.last.paid_for_month.to_i) + 1
			end
		end
	end
end
