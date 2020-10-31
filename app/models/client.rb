class Client < ApplicationRecord
  extend FriendlyId
  friendly_id :slug, use: :slugged

  before_validation :generate_slug, if: -> (obj) { obj.slug.blank? }

  def name
    "#{first_name} #{last_name}"
  end

  private

    def generate_slug
      self.slug = "#{name}-#{id || Random.rand(99_999)}".parameterize
    end
end
