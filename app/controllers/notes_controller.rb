class NotesController < ApplicationController
  def index
    @note = Note.all
  end

  def create
    @note = Note.new(note_params)
    @note.save
    redirect_to action: "index"
  end
  
  def edit
  end

  def update
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