Pod::Spec.new do |s|
  require_relative 'utils/spec'
  s.extend AsyncAlgorithms::Spec
  s.define
  s.dependency 'SwiftyCollections', '~> 1.0.3'

  s.test_spec do |ts|
    ts.source_files = "Tests/#{s.name}Tests/**/*.swift"
    ts.dependency 'AsyncSequenceValidation', "= #{s.version}"
    ts.dependency 'AsyncAlgorithms_XCTest', "= #{s.version}"
  end
end
