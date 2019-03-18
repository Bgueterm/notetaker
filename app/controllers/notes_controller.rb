class NotesController < ApplicationController
  def index
    @note = Note.all
  end
  
  def new
  end
  
  def create
    @note = Note.new(note_params)
    @note.save
    redirect_to action: "index"
  end
end

private
    def note_params
        params.require(:notes).permit(:text)
    end