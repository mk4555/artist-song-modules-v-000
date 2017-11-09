require 'pry'
require_relative '../lib/concerns/memorable.rb'

class Song
  extend Memorable, Findable
  include Paramable
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  # def self.find_by_name(name)
  #   @@songs.detect{|a| a.name == name}
  # end

  def artist=(artist)
    @artist = artist
  end



  def self.all
    @@songs
  end
end
