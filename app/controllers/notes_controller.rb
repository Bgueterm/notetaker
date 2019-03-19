class NotesController < ApplicationController
  def index
    @note = Note.all
  end

  def show
    @note = Note.find(params[:id])
  end

  def create
    @note = Note.new(note_params)
    redirect_to action: "index"
  end
  
  def edit
    @note = Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])
    if @note.update(note_params)
      redirect_to action: "index"
    else
      render 'edit'
    end
  end
  
  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    redirect_to action: "index"
  end
end

private
    def note_params
        params.require(:notes).permit(:text)
    end