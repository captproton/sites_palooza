class Project < ApplicationRecord
  acts_as_tenant :account
  has_many :maglev_sites, as: :siteable
end
