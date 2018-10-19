include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = CarrierChanger
CarrierChanger_FILES = ccgRootListController.m
CarrierChanger_INSTALL_PATH = /Library/PreferenceBundles
CarrierChanger_FRAMEWORKS = UIKit
CarrierChanger_PRIVATE_FRAMEWORKS = Preferences
CarrierChanger_EXTRA_FRAMEWORKS = Cephei CepheiPrefs

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/CarrierChanger.plist$(ECHO_END)
