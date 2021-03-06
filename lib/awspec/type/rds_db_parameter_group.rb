module Awspec::Type
  class RdsDbParameterGroup < Base
    attr_reader :parameters

    def initialize(name)
      super
      @parameters = {}
      res = @rds_client.describe_db_parameters({
                                                 db_parameter_group_name: name
                                               })

      loop do
        res.parameters.each do |param|
          @parameters[param.parameter_name] = param.parameter_value
        end
        (res.next_page? && res = res.next_page) || break
      end

      @id = name unless @parameters.empty?
      @resource = @parameters
    end

    def method_missing(name)
      param_name = name.to_s
      if @parameters.include?(param_name)
        @parameters[param_name].to_s
      else
        super
      end
    end
  end
end
