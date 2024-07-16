# frozen_string_literal: true

class ApplicationService
  def self.run(*args)
    new(*args).run
  end

  class Result
    attr_accessor :succeed, :object, :errors

    def initialize(succeed:, object:, errors:)
      @succeed = succeed
      @object = object
      @errors = errors
    end
  end
end
