require 'pry'
module AdderBot
  module Commands
    class Calculate < SlackRubyBot::Commands::Base
      operator '=' do |client, data, _match|
        user_input = data['text']
        input = user_input.split("")
        remove_sign = input.shift
        expression = input.join("")
        if expression.match?(/^\d+\+\d+$/)
          result = expression.split("+")
          response = (result.first.to_i + result.last.to_i).to_s
          client.say(channel: data.channel, text: response)
        else
          client.say(channel: data.channel, text: "Sorry, I didn't understand that. I only add numbers in this format. eg: 5+6 or 6+3")
        end        
       end
    end
  end
end