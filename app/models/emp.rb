class Emp < ActiveRecord::Base
  has_many :resumes
  has_one :photo, dependent: :destroy

  attr_accessor :password
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :name, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
  validates :email, :presence => true, :uniqueness => true, :format => EMAIL_REGEX
  validates :password, :presence => true #password_confirmation attr
  validates_length_of :password, :in => 6..20, :on => :create

  def self.search(search_skills,search_city )
    self.where("lower(skills) LIKE '#{search_skills.downcase}%' AND lower(city) LIKE '#{search_city.downcase}%'")
  end

  def self.authenticate(login_email="",login_password="")
    if EMAIL_REGEX.match(login_email)
      emp = Emp.fing_by_email(login_email)
    end
    if emp && emp.match_password(login_password)
      return emp
    else
      return false
    end
  end

  def match_password(login_emp, login_password)
    password = login_emp.password
    if login_password == password
       true
    else
      false
    end
  end
end
