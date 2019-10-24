# frozen_string_literal: true

class NotifyWorker
  include Sidekiq::Worker

  def perform(name)
    puts "New wolf joined the pack: #{name}"
  end
end
