class LogLineParser
    def initialize(line)
        level, message = line.split(':')

        @level = level.gsub(/\[|\]/, '').downcase
        @message = message.strip
    end

    def print_line
        puts @level
        puts @message
    end
end

parser = LogLineParser.new('[ERROR]: Invalid operation')
parser.print_line