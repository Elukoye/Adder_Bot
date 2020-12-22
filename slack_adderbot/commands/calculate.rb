module AdderBot
  module Commands
    class Calculate < SlackRubyBot::Commands::Base
      operator '=' do |client, data, _match|
        input = data['text']
        expression = input.split("")   
        expression_1 = expression.shift
        expression_2 = expression_1.join
        if expression_2.match?(/^\d+\+\d+$/)
          result = expression.split("")
          response = result.first.to_i + result.last.to_i
          client.say(channel: data.channel, text: response)
          binding pry
        else
          client.say(channel: data.channel, text: "Sorry, I didn't understand that. I only add numbers in this format. eg: 5+6 or 6+3")
        end
        
      

        
       end
    end
  end
end