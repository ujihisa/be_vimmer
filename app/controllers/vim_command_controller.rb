class VimCommandController < ApplicationController
  def index
    lang = params[:lang].presence || 'jp'
    @vim_commands = VimCommand.find_all_by_language lang
  end
end
