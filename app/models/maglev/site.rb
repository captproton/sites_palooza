class Maglev::Page < ApplicationRecord

    acts_as_tenant :account

    ## concerns ##
    include Maglev::Site::LocalesConcern
    include Maglev::SectionsConcern
    include Maglev::Translatable

    ## translations ##
    translates :sections

    ## validations ##
    validates :name, presence: true

    ## methods ##
    def api_attributes
    %i[id name]
    end

    def find_section(type)
    sections&.find { |section| section['type'] == type }
    end
end
