class Todo < ApplicationRecord
  SYNCHRONIZER_URL = ENV.fetch('SYNCHRONIZER_URL').freeze

  after_create :synchronize

  private

  def synchronize
    HTTP.post("#{SYNCHRONIZER_URL}/sync_todo", json: attributes)
  end
end
