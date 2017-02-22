//
//  ViewController.h
//  SwipeGestureImageView
//
//  Created by chaitanya on 19/09/16.
//  Copyright © 2016 chaitanya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSArray *flowerImages;
    NSArray *storeData;


}

    


@property (strong, nonatomic) IBOutlet UIImageView *images;
@property (strong, nonatomic) IBOutlet UITextView *textViewData;

@end

