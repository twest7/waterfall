module Waterfall
  class Chain < Base

    def initialize(root, var_name)
      @root, @var_name = root, var_name
    end

    def call(&block)
      output = yield(*yield_args)
      @root.update_outflow(@var_name, output) if @var_name
    end

  end
end