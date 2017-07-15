class Profile < ActiveRecord::Base
  belongs_to :user, dependent: :delete
  validates :gender, inclusion: { in: %w(male female) }
  
  validate :at_least_one_name
  validate :sue_only_female_name
  
  def at_least_one_name
    if first_name.nil? && last_name.nil?
      errors.add(:first_name, 'Must contain first or last name')
    end
  end
  
  def sue_only_female_name
    if (gender.eql? 'male') && (first_name.eql? 'Sue')
      errors.add(:first_name, 'Sue is only female name')
    end
  end
  
  def self.get_all_profiles(min, max)
    Profile.where('birth_year BETWEEN ? AND ?', min, max).order('birth_year ASC')
  end
end
