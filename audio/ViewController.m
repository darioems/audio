//
//  ViewController.m
//  audio
//
//  Created by Dário on 15/01/13.
//  Copyright (c) 2013 Dário's. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(IBAction)play {
  /*  CFBundleRef mainBundle = CFBundleGetMainBundle();
    CFURLRef soundFileURLRef;
    
//    soundFileURLRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef) @"t0101", CFSTR ("mp3"), NULL);
    soundFileURLRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef) @"Bark", CFSTR ("caf"), NULL);
    UInt32 soundID;
    
    AudioServicesCreateSystemSoundID(soundFileURLRef, &soundID);
    
    AudioServicesPlaySystemSound(soundID);*/
    
        NSURL *url = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/t0101.mp3", [[NSBundle mainBundle] resourcePath]]];
        
        NSError *error;
        
        audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
        
        audioPlayer.numberOfLoops = 0;
        
        NSTimeInterval intervalo = 12.906;
        
        NSTimeInterval duracao = 0.993;
        
        audioPlayer.currentTime = intervalo;
        
        [audioPlayer play];
    
        NSDate *future = [NSDate dateWithTimeIntervalSinceNow:duracao];
        
        [NSThread sleepUntilDate:future];
        
        [audioPlayer release];

    
}

-(void)theActionMethod {
    [audioPlayer release];
}




- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)dealloc {

    [super dealloc];
}

@end
