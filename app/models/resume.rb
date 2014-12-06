class Resume < ActiveRecord::Base
  belongs_to :emp
  def self.search(search_skills,search_city )
    self.where("lower(skills) LIKE '#{search_skills.downcase}%' AND lower(city) LIKE '#{search_city.downcase}%'")
  end
end
