import XCTest

import MoreModuleTests

var tests = [XCTestCaseEntry]()
tests += MoreModuleTests.allTests()
XCTMain(tests)
