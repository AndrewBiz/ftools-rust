require 'aruba/cucumber'

# puts ENV['PATH']
# puts Dir.pwd
# /Users/anb/.rvm/gems/ruby-2.4.2/bin:/Users/anb/.rvm/gems/ruby-2.4.2@global/bin:/Users/anb/.rvm/rubies/ruby-2.4.2/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Apple/usr/bin:/Users/anb/.cargo/bin:/Users/anb/.rvm/bin
 
Aruba.configure do |config|
    # config.<option> = <value>
    # puts config.command_search_paths
    # puts config.home_directory.inspect
    # puts config.root_directory.inspect
    # puts config.command_search_paths.inspect
    # puts config.command_runtime_environment.inspect
    config.command_search_paths = [File.join(config.root_directory, 'target/debug')]
    puts
    puts "PATH to COMMANDS to be tested = " + config.command_search_paths.inspect
    puts
    # { |config| [File.join(config.root_directory.value, 'bin'), File.join(config.root_directory.value, 'exe')] }
end