THEOS_DEVICE_IP = 192.168.1.89

ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = StoreFeatures
${TWEAK_NAME}_FILES = Tweak.xm
${TWEAK_NAME}_EXTRA_FRAMEWORKS += Cephei
${TWEAK_NAME}k_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += storefeatures
include $(THEOS_MAKE_PATH)/aggregate.mk


install3::
		install3.exec
