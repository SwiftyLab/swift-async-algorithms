#!/usr/bin/env node
const { execSync } = require('child_process');
const core = require('@actions/core');

[
  '_CAsyncSequenceValidationSupport.podspec',
  'AsyncAlgorithms.podspec',
  'AsyncSequenceValidation.podspec',
  'AsyncAlgorithms_XCTest.podspec',
].forEach((spec) => {
  core.startGroup(`Pushing ${spec} to CocoapPods trunk`);
  execSync(`pod trunk push --allow-warnings --synchronous --skip-tests --skip-import-validation --verbose ${spec}`, {
      stdio: ['inherit', 'inherit', 'inherit'],
      encoding: 'utf-8'
    }
  );
  core.endGroup();
});