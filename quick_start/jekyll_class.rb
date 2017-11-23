require 'jekyll'

# p Jekyll.ancestors
#
# p Jekyll::Plugin.ancestors
#
# p Jekyll::Generator.ancestors
#
# p Jekyll::Site.ancestors
#
# p Jekyll::Page.ancestors
#
# p Jekyll::Document.ancestors
#
# p Jekyll::StaticFile.ancestors
#
# p Jekyll::Convertible.ancestors

class MyGenerator < Jekyll::Generator
  def generate(site)
    ongoing, done = Book.all.partition(&:ongoing?)

    reading = site.pages.detect {|page| page.name == 'reading.html'}
    reading.data['ongoing'] = ongoing
    reading.data['done'] = done
  end
end


p Jekyll::Plugin.descendants.to_a