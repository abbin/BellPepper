//
//  ViewController.m
//  BellPepper
//
//  Created by Abbin Varghese on 13/10/16.
//  Copyright © 2016 ABN. All rights reserved.
//

#import "ViewController.h"
#import <CloudKit/CloudKit.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CKContainer *defaultContainer = [CKContainer defaultContainer];
    [defaultContainer fetchUserRecordIDWithCompletionHandler:^(CKRecordID * _Nullable recordID, NSError * _Nullable error) {
        CKRecordID *userRecordID = [[CKRecordID alloc] initWithRecordName:recordID.recordName];
        CKDatabase *publicDatabase = [defaultContainer publicCloudDatabase];
        [publicDatabase fetchRecordWithID:userRecordID completionHandler:^(CKRecord *artworkRecord, NSError *error) {
            if (error) {
                // Error handling for failed fetch from public database
            }
            else {
                // Display the fetched record
            }
        }];

    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
