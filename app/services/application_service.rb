# frozen_string_literal: true

class ApplicationService
  def self.run(*args)
    new(*args).run
  end
end
