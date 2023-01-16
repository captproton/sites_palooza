class Site::GeneratePageSet
    # Generate site and its pages in the locales defined by the config file.
    attr_reader :theme_name

    def initialize(theme_name: 'Default')
        @theme_name = theme_name
    end

    include Injectable

    dependency(:config) { Maglev.config }
    dependency :setup_pages, class: Maglev::SetupPages

    argument :theme

    def call
    #   raise 'A Maglev Site already exists' if Maglev::Site.first

      Maglev::Site.transaction do
        Maglev::Site.create(name: theme_name, locales: config.default_site_locales).tap do |site|
          Maglev::I18n.available_locales = site.locale_prefixes
          Maglev::I18n.with_locale(site.default_locale_prefix) do
            setup_pages.call(site: site, theme: theme) if site.errors.empty?
          end
        end
      end
    end
  

end
