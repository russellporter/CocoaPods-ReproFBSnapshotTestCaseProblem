//
//  ReproFBSnapshotTestCaseProblemObjCTests.m
//  ReproFBSnapshotTestCaseProblemTests
//
//  Created by Russell Porter on 10/29/18.
//  Copyright © 2018 Russell Porter. All rights reserved.
//

#import <FBSnapshotTestCase/FBSnapshotTestCase.h>

@interface ReproFBSnapshotTestCaseProblemObjCTests : FBSnapshotTestCase

@end

@implementation ReproFBSnapshotTestCaseProblemObjCTests

- (void)testObjcMacroAvailable {
    FBSnapshotVerifyView([[UIView alloc] initWithFrame:CGRectMake(0, 0, 10, 10)], @"")
}

@end
