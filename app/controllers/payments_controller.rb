class PaymentsController < ApplicationController
	def index
		@payments = Payment.all
	end

	def show
		@payment = Payment.find(params[:id])
	end

	def new
		@payment = Payment.new
		@student = Student.find(params[:student_id])
	end

	def create
		@payment = Payment.new(payment_params)

		respond_to do |format|
		 	if @payment.save
		  		format.html { redirect_to @payment, notice: 'Payment successfully made.'}
		  		format.json { render action: 'show', status: :created, location: @payment }
		  	else
		    	format.html { render action: 'new' }
		    	format.json { render json: @payment.errors, status: :unprocessable_entity }	
		  	end
		end
	end

	private
	def payment_params
		params.require(:payment).permit(:amount, :paid_for_month, :student_id)
	end

end
