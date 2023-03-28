require_relative '../../sections/home/home_sections'
module Pages
    class HomePage < SitePrism::Page
        set_url '/'  
        section :home_sections, Sections::Home, '#page-home'                
    end    
end