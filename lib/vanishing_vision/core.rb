module VanishingVision
  class Core
    def initialize(source)
      @source = source
    end

    def vanish
      lines = @source.dup.split("\n")

      lines.map!(&:rstrip)

      lines = remove_leading_blank_lines(lines)
      lines = remove_leading_blank_lines(lines.reverse).reverse

      lines.join("\n") << "\n"
    end

    private

    def remove_leading_blank_lines(lines)
      delete_line_count = 0

      lines.each do |line|
        if line == ''
          delete_line_count += 1
        else
          break
        end
      end

      delete_line_count.times { lines.delete_at(0) }

      lines
    end
  end
end
