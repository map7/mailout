class LettersController < InheritedResources::Base
  require 'redcarpet'

  def create
    create!{letters_path}
  end

  def show
    @letter = Letter.find(params[:id])
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, :autolink => true, :space_after_headers => true)
    @body = markdown.render(@letter.body)
    
  end
  
  def update
    update!{letters_path}
  end
end
