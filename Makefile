include $(THEOS)/makefiles/common.mk

TWEAK_NAME = CarrierChanger
CarrierChanger_FILES = Tweak.xm
CarrierChanger_EXTRA_FRAMEWORKS += Cephei
CarrierChanger_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += carrierchanger
include $(THEOS_MAKE_PATH)/aggregate.mk
