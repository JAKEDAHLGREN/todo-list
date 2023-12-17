module SitesHelper

    def title(name,show_title = true)
        @show_title = show_title
        content_for(:title) do
            name
        end
    end


    def nav_link(text, path, options = {})
        classes = 'button-link hover:bg-blue-600'
        classes += ' active' if current_page?(path)

        link_to(text, path, class: classes, **options)
    end
end