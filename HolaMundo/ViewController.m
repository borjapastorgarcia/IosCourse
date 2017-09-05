//
//  ViewController.m
//  HolaMundo
//  Copyright © 2017 Borja Pastor. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *texto;
@property (weak, nonatomic) IBOutlet UIButton *boton;

@end

@implementation ViewController
-(void)cambiaTexto {
    self.label.text = self.texto.text;
}
- (IBAction)accionHola:(id)sender {
    [self cambiaTexto];
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self cambiaTexto];
    [_texto resignFirstResponder];
    return YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
