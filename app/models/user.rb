class User < ActiveRecord::Base
  def self.search(search)
    if search
      where("last_name LIKE ?", "%#{search}%")
    else
      all
    end
  end
end
