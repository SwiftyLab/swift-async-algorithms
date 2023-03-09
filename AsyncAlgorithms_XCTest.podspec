Pod::Spec.new do |s|
  require_relative 'utils/spec'
  s.extend AsyncAlgorithms::Spec
  s.define
  s.framework = 'XCTest'
  s.dependency 'AsyncAlgorithms', "= #{s.version}"
  s.dependency 'AsyncSequenceValidation', "= #{s.version}"
end
