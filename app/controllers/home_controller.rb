class HomeController < ApplicationController
  def index
    @translation ||= Translation.new
  end

  def translate
    (redirect_to(root_path) && return) unless request.post?
    @translation = Translation.new(translation_params)
    @translation.translate!
    render :index
  end

private
  def translation_params
    params.require(:translation).permit(:input_text)
  end
end
