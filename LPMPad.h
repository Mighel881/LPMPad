#import <ControlCenterUIKit/CCUIToggleModule.h>

@interface LPMPad : CCUIToggleModule {
BOOL _selected;
}

@end

@interface _CDBatterySaver
-(id)batterySaver;
-(BOOL)setPowerMode:(long long)arg1 error:(id *)arg2;
@end