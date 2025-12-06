#include $(call all-subdir-makefiles)

# Note that symlinking source dirs is a terrible idea which can create a huge mess when trying to open files,
#  esp. when debugging
# Use relative paths instead of absolute paths for CI/CD compatibility
# From jni directory: jni -> main -> src -> app -> android -> syncscribble -> Write (root)
include $(LOCAL_PATH)/../../../../../../SDL/Android.mk
include $(LOCAL_PATH)/../../../../../../syncscribble/Makefile
