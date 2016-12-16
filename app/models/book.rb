class Book < ActiveRecord::Base
  belongs_to :author
  has_many :book_genres
  has_many :genres, through: :book_genres

  #   def initialize(opts)
  #     opts.each do |attribute, value|
  #       self.send("#{attribute}=", value)
  #     end
  #   end


  def author_name
    if author
      author.full_name
    else
      'No Author Found'
    end
  end

end
