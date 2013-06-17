#import <QuartzCore/QuartzCore.h>
#import "SIMTextFieldFactory.h"
#import "UIColor+Additions.h"
#import "SimplifyPrivate.h"
#import "UIView+Additions.h"
#import "SIMModelDrivenTextField.h"

@implementation SIMTextFieldFactory

- (SIMTextField*)createTextFieldWithPlaceholderText:(NSString *)placeholderText
                                       keyboardType:(UIKeyboardType)keyboardType {
	SIMTextField*textField = [[SIMTextField alloc] init];
	[self setValuesForSIMTextField:textField usingKeyboardType:keyboardType placeholderText:placeholderText];
	return textField;
}

- (SIMModelDrivenTextField*)createModelDrivenTextFieldWithPlaceholderText:(NSString *)placeholderText
                                                             keyboardType:(UIKeyboardType)keyboardType {
	SIMModelDrivenTextField*textField = [[SIMModelDrivenTextField alloc] init];
	[self setValuesForSIMTextField:textField usingKeyboardType:keyboardType placeholderText:placeholderText];
	return textField;
}

- (SIMTextFieldWithPickerView*)createTextFieldWithPickerViewAndPlaceholderText:(NSString *)placeholderText
																  keyboardType:(UIKeyboardType)keyboardType {
	SIMTextFieldWithPickerView*textField = [[SIMTextFieldWithPickerView alloc] init];
	[self setValuesForSIMTextField:textField usingKeyboardType:keyboardType placeholderText:placeholderText];
	return textField;
}

- (void)setValuesForSIMTextField:(SIMTextField *)textField
			   usingKeyboardType:(UIKeyboardType)keyboardType
				 placeholderText:(NSString *)placeholderText {
	textField.leftView = [UIView paddedViewWithView:[[UIView alloc] init] andPadding:CGSizeMake(7, 0)];
	textField.leftViewMode = UITextFieldViewModeAlways;
	textField.borderStyle = UITextBorderStyleLine;
	textField.layer.borderColor = [UIColor simplifyBorderColor].CGColor;
	textField.layer.borderWidth = 1.0f;
	textField.layer.masksToBounds = YES;
	textField.keyboardType = keyboardType;
	textField.placeholder = placeholderText;
	textField.font = [SimplifyPrivate fontOfSize:16.0f];
	textField.textOffset = CGSizeMake(10, 2);
	textField.textColor = [UIColor colorWithHexString:@"4a4a4a"];
	textField.text = @"";
}


@end