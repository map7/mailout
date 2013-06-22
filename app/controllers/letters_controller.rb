class LettersController < InheritedResources::Base
  def new
    @fields = TheMerger.model_fields.map{|x| x="[#{x}]"}.join(", ")
    new!
  end
  
  def create
    create!{letters_path}
  end

  def update
    update!{letters_path}
  end
end
