INSTALL_TARGET_PROCESSES = UIKit

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Sledge

Sledge_FILES = Tweak.x
Sledge_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
