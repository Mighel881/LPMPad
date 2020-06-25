include $(THEOS)/makefiles/common.mk

export TARGET = iphone:clang:11.2:11.0
export ARCHS = arm64 arm64e

BUNDLE_NAME = LPMPad
LPMPad_BUNDLE_EXTENSION = bundle
LPMPad_FILES = LPMPad.m
LPMPad_PRIVATE_FRAMEWORKS = ControlCenterUIKit
LPMPad_INSTALL_PATH = /Library/ControlCenter/Bundles/

after-install::
	install.exec "killall -9 SpringBoard"

include $(THEOS_MAKE_PATH)/bundle.mk
