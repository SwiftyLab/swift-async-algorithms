Pod::Spec.new do |s|
  require_relative 'utils/spec'
  s.extend AsyncAlgorithms::Spec
  s.define
  s.preserve_paths = 'Sources/AsyncAlgorithms/Locking.swift'
  s.dependency 'AsyncAlgorithms', "= #{s.version}"
  s.dependency '_CAsyncSequenceValidationSupport', "= #{s.version}"
end
