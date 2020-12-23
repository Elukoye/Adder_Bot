$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'dotenv'
require 'slack_adderbot'
require 'web'

Thread.abort_on_exception = true

Thread.new do
  begin
    AdderBot::Bot.run
    rescue Exception => e
      STDERR.puts "ERROR:#{e}"
      STDERR.puts e.backtrace
      raise e 
  end
end

run AdderBot::Web