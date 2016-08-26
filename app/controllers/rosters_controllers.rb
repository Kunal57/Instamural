class RostersController < ApplicationController
def new
    @roster = roster.new
  end

  def create
    @roster = roster.new(roster_params)
    if @roster.save
      redirect_to @roster
    else
      @errors = @roster.errors.full_messages
      render 'new'
    end
  end


end
