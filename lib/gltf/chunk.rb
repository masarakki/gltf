# frozen_string_literal: true

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

    def snapshot
      { type: type, length: len }
    end
  end
end
