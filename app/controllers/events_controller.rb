class EventsController < ApplicationController
  before_action :set_event, only: %i[ show update destroy ]

  # GET /events
  def index
    @events = Event.latest

    render json: EventSerializer.new(@events).serializable_hash[:data].map{ |data| data[:attributes] }
  end

  # GET /events/1
  def show
    render json: @event
  end

  # POST /events
  def create
    @event = Event.create!(event_params) 
    render json: @event, status: :created, location: @event
  end

  # PATCH/PUT /events/1
  def update
    if @event.update(event_params)
      render json: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # DELETE /events/1
  def destroy
    @event.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_params
      params.permit(:name, :description, :image_url, :date, :time, :venue, :image)
    end
end
