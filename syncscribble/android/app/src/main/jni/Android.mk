#include $(call all-subdir-makefiles)

# Note that symlinking source dirs is a terrible idea which can create a huge mess when trying to open files,
#  esp. when debugging
# Use relative paths instead of absolute paths for CI/CD compatibility
LOCAL_PATH_BACKUP := $(LOCAL_PATH)
LOCAL_PATH := $(LOCAL_PATH)/../../../../../..
include $(LOCAL_PATH)/SDL/Android.mk
LOCAL_PATH := $(LOCAL_PATH_BACKUP)
include $(LOCAL_PATH)/../../../../../../syncscribble/Makefile
