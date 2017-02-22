//
//  ViewController.m
//  SwipeGestureImageView
//
//  Created by chaitanya on 19/09/16.
//  Copyright © 2016 chaitanya. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic) int imageIndex;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    flowerImages = [[NSArray alloc]initWithObjects:[UIImage imageNamed:@"img1.png"], [UIImage imageNamed:@"img2.png"], [UIImage imageNamed:@"img3.png"], [UIImage imageNamed:@"img4.png"], [UIImage imageNamed:@"img5.png"], [UIImage imageNamed:@"img6.png"] ,nil];
    
    storeData = [[NSArray alloc]initWithObjects:@"Flowers1", @"Flowers2", @"Flowers3", @"Flowers4", @"Flowers5", @"Flowers6", nil];
    _imageIndex = 0;
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)swipeLeft:(id)sender {
    
    if (self.imageIndex == ([flowerImages count] ))
    {
        _imageIndex = 0;
        //self.images.image = [flowerImages objectAtIndex:_imageIndex];
        
        //self.imageIndex++;
        

    }
          // adjust the index of the next card to be shown
    
    self.images.image = [flowerImages objectAtIndex:_imageIndex];
    self.textViewData.text = [storeData objectAtIndex:_imageIndex];
    _imageIndex++;
    
    

        }


- (IBAction)swipeRight:(id)sender {
    if (self.imageIndex == ([flowerImages count] ))
    {
        _imageIndex = 0;
        
        
    }
    self.images.image = [flowerImages objectAtIndex:_imageIndex];
    self.textViewData.text = [storeData objectAtIndex:_imageIndex];
    
      _imageIndex++;
    
    
}
@end
