import XCTest

import TorTests

var tests = [XCTestCaseEntry]()
tests += TorTests.allTests()
XCTMain(tests)
