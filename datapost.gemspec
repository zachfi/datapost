Gem::Specification.new do |gem|

  gem.name    = 'datapost'
  gem.version = '0.0.1'
  gem.date    = Date.today.to_s

  gem.summary     = "Read json from STDIN and post it to a designated REST endpoint."
  gem.description = "Read json from STDIN and post it to a designated REST endpoint.  Useful for things like cronjobs, when you just need to post the json output to your application server."

  gem.author   = 'Zach Leslie'
  gem.email    = 'xaque208@gmail.com'
  gem.homepage = 'https://github.com/xaque208/datapost'

  # ensure the gem is built out of versioned files
   gem.files = Dir['Rakefile', 'bin/**/*', 'README*', 'LICENSE*'] & %x(git ls-files -z).split("\0")

   gem.executables << 'datapost'

   gem.add_dependency('json')
   gem.add_dependency('rest-client')
   gem.add_dependency('cri')

end


