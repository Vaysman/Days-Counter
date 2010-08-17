$VERBOSE = nil
Dir["#{Gem.searcher.find('yaml_db').full_gem_path}/**/tasks/*.rake"].each { |ext| load ext }
