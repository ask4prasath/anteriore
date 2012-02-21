require 'yaml'

class Storage
  include Anteriore::Helpers
  attr_accessor :path
  attr_reader :key, :username, :hostname

  def create_storage_path
    create_home_directory
    `touch #{self.class.yaml_path}`
  end

  def self.yaml_path
    path = File.join(home_directory, '.anteriore')
    File.join(path, 'storage.yml')
  end

  protected

  def create_home_directory
    @path = File.join(home_directory, '.anteriore')
    Dir::mkdir(path) unless File.directory? path
  end
end