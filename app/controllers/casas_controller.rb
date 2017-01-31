class CasasController < ApplicationController
	before_action :set_casa, only: [:new]

	def new
		@casa = Casa.new
	end

	def create
		@casa = Casa.new(casa_params)
		respond_to do |format|
      if @casa.save
        format.html { redirect_to root_url, notice: 'La ciudad se creo correctamente' }
        format.json { render root_url, status: :created, location: @casa }
      else
        format.html { render :new }
        format.json { render json: @casa.errors, status: :unprocessable_entity }
      end
    end
	end

	def set_casa
		@casa = Casa.find(params[:id])
	end

	def casa_params
		params.require(:casa).permit(:metros, :habitacion, :precio)
	end
end
