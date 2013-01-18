//
//  ViewController.h
//  audio
//
//  Created by Dário on 15/01/13.
//  Copyright (c) 2013 Dário's. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <AudioToolbox/AudioToolbox.h>

#import <AVFoundation/AVFoundation.h>

int clicked;

@interface ViewController : UIViewController {
    AVAudioPlayer *audioPlayer;
    IBOutlet UIButton *start;
    
}
- (IBAction)play;
- (void)theActionMethod;



@end
