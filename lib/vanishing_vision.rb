# frozen_string_literal: true

require 'pathname'

require 'vanishing_vision/core'
require 'vanishing_vision/engine'

module VanishingVision
  def vanish(target_path, options = {})
    target = Pathname(target_path)

    if target.file?
      Engine.new(target).run(options[:auto_correct])
    else
      Dir[target.join('**/*')].each do |path|
        next if File.directory?(path)

        Engine.new(path).run(options[:auto_correct])
      end
    end
  end
  module_function :vanish
end
