require 'bindata'
require 'oj'
require 'gltf/chunk'

module Gltf
  class Binary < BinData::Record
    endian :little
    string :magic, length: 4
    uint32 :version
    uint32 :len

    array :chunks, type: :chunk, read_until: :eof

    def json
      @json ||= Oj.load(chunks.find { |x| x.type == 'JSON' }.data.to_s)
    end
  end
end
