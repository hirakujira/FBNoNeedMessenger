TWEAK_NAME = FBNoNeedMessenger
FBNoNeedMessenger_OBJCC_FILES = Tweak.mm
FBNoNeedMessenger_CFLAGS = -F$(SYSROOT)/System/Library/CoreServices
FBNoNeedMessenger_FRAMEWORKS = Foundation

ARCHS = armv7 arm64
TARGET = iphone:clang::5.0
include theos/makefiles/common.mk
include theos/makefiles/tweak.mk

sync: stage
	rsync -e "ssh -p 2222" -z _/Library/MobileSubstrate/DynamicLibraries/* root@127.0.0.1:/Library/MobileSubstrate/DynamicLibraries/
	ssh root@127.0.0.1 -p 2222 killall Facebook