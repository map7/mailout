class LettersController < InheritedResources::Base
  def create
    create!{letters_path}
  end

  def update
    update!{letters_path}
  end
end
