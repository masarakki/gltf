require 'gltf/version'
require 'gltf/binary'

module Gltf
  module_function

  def load(file)
    Gltf::Binary.read(file)
  end
end
