Pod::Spec.new do |s|
  require_relative 'utils/spec'
  s.extend AsyncAlgorithms::Spec
  s.define(false)
  s.source_files = "Sources/#{s.name}/**/*.h", 'Sources/AsyncAlgorithms/Rethrow.swift'
  s.public_header_files = "Sources/#{s.name}/*.h"
  s.preserve_paths = "Sources/#{s.name}/**/*.*"
end
