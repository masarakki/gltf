require 'bindata'
module Gltf
  class Chunk < BinData::Record
    endian :little
    uint32 :len
    string :chunk_type, length: 4
    string :data, read_length: :len

    def type
      chunk_type.strip
    end
  end
end
