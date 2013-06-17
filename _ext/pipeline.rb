require 'bootstrap-sass'

Awestruct::Extensions::Pipeline.new do
  extension Awestruct::Extensions::Posts.new('/archive', :posts)
  extension Awestruct::Extensions::Paginator.new(:posts, '/index', :per_page => 5)
  extension Awestruct::Extensions::Indexifier.new  
# Indexifier *must* come before Atomizer
  extension Awestruct::Extensions::Atomizer.new :posts, '/feed.atom'
end
