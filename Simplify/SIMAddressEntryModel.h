#import "SIMTextRequiredTextFieldModel.h"
#import "SIMStateTextFieldModel.h"

@interface SIMAddressEntryModel : NSObject
@property (nonatomic, readonly) SIMTextRequiredTextFieldModel *nameModel;
@property (nonatomic, readonly) SIMStateTextFieldModel *stateModel;
@property (nonatomic, readonly) NSDictionary *stateOptions;
@end