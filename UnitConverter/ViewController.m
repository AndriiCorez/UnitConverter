//
//  ViewController.m
//  UnitConverter
//
//  Created by Andres on 12/29/15.
//  Copyright (c) 2015 Andres. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentControl;
@property (weak, nonatomic) IBOutlet UILabel *outputLabel;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)doConvert:(id)sender {
    double values[3] = {0.62, 1093, 3280};
    int selectedValue = self.segmentControl.selectedSegmentIndex;
    double inputValue = [self.inputField.text doubleValue];
    double result;
    
    switch(selectedValue){
        case 0:
            result = inputValue * values[0];
            break;
        case 1:
            result = inputValue * values[1];
            break;
        case 2:
            result = inputValue * values[2];
            break;
    }
    
    self.outputLabel.text = [@(result) stringValue];
}

@end
