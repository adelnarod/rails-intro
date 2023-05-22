class PagesController < ApplicationController
  def about
  end

  def home
    @array = (0..100).to_a
    @members = ["thanh", "dimitri", "germain", "damien", "julien"]
  end

  def contact
    @members = ["thanh", "dimitri", "germain", "damien", "julien"]

    if params[:member]
      @members = @members.select { |member| member.start_with?(params[:member]) }
    end
  end
end
