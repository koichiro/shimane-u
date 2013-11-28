class EntriesController < ApplicationController
  def index
    @entries = Entry.all
  end

  def create
    @entry = Entry.new(params[:entry])

    respond_to do |format|
      if @entry.save
        format.html { redirect_to(:action => 'index', :notice => 'Task was successfully created.') }
      else
        format.html { render :action => "new" }
      end
    end
  end
end
