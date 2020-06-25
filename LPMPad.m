#import "LPMPad.h"
#include <objc/runtime.h>

@implementation LPMPad

- (UIImage *)iconGlyph {
	return [UIImage imageNamed:@"normal" inBundle:[NSBundle bundleForClass:[self class]] compatibleWithTraitCollection:nil];
}

- (UIImage *)selectedIconGlyph {
	return [UIImage imageNamed:@"selected" inBundle:[NSBundle bundleForClass:[self class]] compatibleWithTraitCollection:nil];
}

- (UIColor *)selectedColor {
	return [UIColor blackColor];
}

- (BOOL)isSelected {
	return _selected;
}

- (void)setSelected:(BOOL)selected {
	_selected = selected;

	[super refreshState];

	if(_selected) {
		// Enable Low Power Mode
		[[objc_getClass("_CDBatterySaver") batterySaver] setPowerMode:1 error:nil];
	}
	else {
		// Disable Low Power Mode
		[[objc_getClass("_CDBatterySaver") batterySaver] setPowerMode:0 error:nil];
	}
}

@end
