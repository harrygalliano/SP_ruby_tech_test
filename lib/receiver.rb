class Receiver 
    def initialize(file)
        @content = {}
        @file = file
        file_reader
    end



      def file_reader
        target_file = File.open(@file, 'r')
        target_file.each_line do |line|
          line_split = line.split(" ")
          @content.has_key?(line_split.first) == true ? @content[line_split.first] << line_split.last : @content[line_split.first] = [line_split.last]
        end
      end

      def most_views
        p 'Sites with most views: '
        @content.sort_by { |address| address[1].length }.reverse.each do |values|
          p "#{values.first} #{values.last.count} visits"
        end
      end
    end