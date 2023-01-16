class Site::PageSet
    attr_reader :page_source

    def initialize(page_source: "maglev")
        @page_source = page_source
    end

    def self.generate
        # error if first site exists
        # Maglev::GenerateSite.call(
        # theme: Maglev.local_themes.first
        # )
        # we want 
        Site::GeneratePageSet.new.call(
            theme: Maglev.local_themes.first
        )
    end

end
