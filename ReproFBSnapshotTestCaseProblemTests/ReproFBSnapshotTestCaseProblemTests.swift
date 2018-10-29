//
//  ReproFBSnapshotTestCaseProblemTests.swift
//  ReproFBSnapshotTestCaseProblemTests
//
//  Created by Russell Porter on 10/29/18.
//  Copyright © 2018 Russell Porter. All rights reserved.
//

import FBSnapshotTestCase
@testable import ReproFBSnapshotTestCaseProblem

class ReproFBSnapshotTestCaseProblemTests: FBSnapshotTestCase {

    func testSwiftSupportMethodsAvailable() {
        FBSnapshotVerifyView(UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 10)))
    }
}
