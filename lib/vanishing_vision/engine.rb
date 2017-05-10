require 'diffy'

Diffy::Diff.default_format = :color

module VanishingVision
  class Engine
    SKIP_ENCODINGS = [NKF::BINARY, NKF::UNKNOWN]

    def initialize(path)
      @path = path
    end

    def run(auto_correct)
      source = File.read(@path)

      return if SKIP_ENCODINGS.include?(NKF.guess(source))

      core = Core.new(source)

      changed_source = core.vanish

      unless source == changed_source
        puts "diff #{@path}"
        puts Diffy::Diff.new(source, changed_source)

        File.open(@path, 'w+') {|f| f.write(changed_source) } if auto_correct
      end
    end
  end
end
