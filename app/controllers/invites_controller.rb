class InvitesController < ApplicationController
  before_action :set_invite, only: [:show, :edit, :update, :destroy]

  # GET /invites
  # GET /invites.json
  def index
    @invites = Invite.all.select do |invite|
        invite.event_id == params[:event_id].to_i
    end
  end

  # GET /invites/1
  # GET /invites/1.json
  def show
  end

  # GET /invites/new
  def new
    @event = Event.find(params[:event_id])
    @invite = @event.invites.build
    # binding.pry
  end

  # GET /invites/1/edit
  def edit
    @event = Event.find(params[:event_id])
    @invite = @event.invites.find(params[:id])
  end

  # POST /invites
  # POST /invites.json
  def create
    @event = Event.find(params[:event_id])
    @invite = @event.invites.build(invite_params)
    if @invite.save
      redirect_to event_invite_path(@event, @invite), 
        notice: 'Invite was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /invites/1
  # PATCH/PUT /invites/1.json
  def update
    @event = Event.find(params[:event_id])
    @invite = @event.invites.find(params[:id])
    respond_to do |format|
      if @invite.update(invite_params)
        format.html { redirect_to this_invite_path, notice: 'Invite was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @invite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invites/1
  # DELETE /invites/1.json
  def destroy
    @event = @invite.event
    @invite.destroy
    redirect_to @event
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invite
      @invite = Invite.find(params[:id])
    end

    def this_invite_path
      event_invite_path(@invite.event, @invite)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def invite_params
      params.require(:invite).permit(:name, :rsvp)
    end

end
