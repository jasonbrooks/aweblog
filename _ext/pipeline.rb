require 'bootstrap-sass'

Awestruct::Extensions::Pipeline.new do
  extension Awestruct::Extensions::Posts.new '/archive'
  extension Awestruct::Extensions::Indexifier.new
  extension Awestruct::Extensions::Paginator.new(:posts, '/index', :per_page => 2)
  # Indexifier *must* come before Atomizer
  extension Awestruct::Extensions::Atomizer.new :posts, '/feed.atom'
end
